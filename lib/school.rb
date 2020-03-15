require 'pry'
class School 
  
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def roster
    @roster
  end 
  
  def add_student(student, grade)
    #binding.pry 
    self.roster[grade] ||= []
    #if self.roster[grade] already exists, leave it alone!!
    #else set self.roster[grade] = [] =>this gets ride of the need for the if statemetn
    self.roster[grade] << student 
    # if roster[grade]
    #   roster[grade] << student 
    # else
    #   roster[grade] = [student]
    # end
  end 
  
  def grade(grade)
    self.roster[grade]
  end 
  
  def sort 
    self.roster.each do |grade, students|
      students.sort!
    end
  end
  
end 