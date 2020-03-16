class School
  attr_reader :name, :roster 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student (new_student, grade_level)
    @roster[grade_level] ||= []
    roster[grade_level] << new_student
  end 
  
  def grade(grade)
    @roster[grade] 
  end 
 
 def sort 
   roster.each do |grade, student|
     student.sort!
   end 
 end 
end 