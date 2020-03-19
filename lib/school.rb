# code here!
class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
     @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    school_list = {}
    roster.each do |x, y|
      school_list[x] = y.sort
    end
    school_list
  end
  
end