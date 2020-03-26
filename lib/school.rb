class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student 
    else 
      @roster[grade] = [student]
  end
end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    sorted_hash = {}
    @roster.sort.each do |grade, student|
      sorted_hash[grade] = (student.sort)
    end 
    sorted_hash
  end
end