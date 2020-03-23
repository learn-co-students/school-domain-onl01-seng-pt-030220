class School
  attr_accessor :name, :roster



  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end
  
  
  
  
  
  def add_student(student, grade_lvl)
    #if roster.include?(grade_lvl)
  #roster[grade_lvl] << student
    #else
  #roster[grade_lvl] = []
  #roster[grade_lvl] << student
  
  #realized this also works 
  roster[grade_lvl] ||= []
  roster[grade_lvl] << student
  
    #end
  end
   
   def grade(grade_lvl)
      roster[grade_lvl]
   end
   
   def sort
     sort_students = {}
     roster.each do |grade, students|
       sort_students[grade] = students.sort
     end
     sort_students
    end
  
 
  
  
  
  #def add_student(student, grade)
   # @roster << (#grade => #student)
  #end
    
  
  
end