class School 
  attr_accessor :name, :roster
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name 
  end 
  def grade(grade) 
    roster.detect do |level, name| 
      if level == grade 
        return name 
      end
    end 
  end 
  def sort 
    new_hash = {}
    roster.each do |grade, name|
      new_hash[grade] = name.sort 
    end 
    new_hash
  end 
end 