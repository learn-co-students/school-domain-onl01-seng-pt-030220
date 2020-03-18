# code here!

class School 
  
  #creates reader methods for name and roster
  attr_reader :school_name, :roster
  
  def initialize(school_name)
    #initializes @school_name holding the value of 'school_name' argument
    @school_name = school_name 
    #initializes @roster golding an empty hash
    @roster = {}
  end
  
  def add_student(name, grade)
    #creates an instance variable that holds the value of argument 'name'
    @student_name = name 
    #creates an instance variable that holds the value of argument 'grade'
    @grade = grade
    #executes if hash does not include a key of the current grade
    if @roster.include?(grade) == false
    #creates a new key with a name of current grade a value of an empty array
      @roster[grade] = []
    end
    #adds current student to respective grade
    @roster[grade] << name
  end 
  
  def grade(grade)
    #displays all students in current grade
    @roster[grade]
  end 
  
  def sort 
    #checks each array value of roster hash and sorts alphabetically 
    student_list = @roster.each_value {|value| value.sort!}
    student_list
  end
end 