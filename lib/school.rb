require 'pry'

class School
  
  attr_accessor  :name, :roster


  def initialize(name)
    @name = name
    @roster= {}
  end
  
  def add_student(name, grade)
    
    self.roster[grade] ||= []
    self.roster[grade] << name 
  end
 
 def grade(grade)
   self.roster[grade]
 end

def sort
  sort = {}
  self.roster.each do |grade, student_array|
    sort[grade] = student_array.sort
  end
  sort
end

end