# code here!

class School
  attr_accessor :roster
  attr_reader :name
  def initialize(name)
    @name = name
    @roster ={}
  end
  def add_student(name,grade)
    if(roster[grade] == nil)
      roster[grade] = []
    end
    roster[grade].push(name)
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each do |grade, arr|
      roster[grade] = arr.sort
    end
  end
end


test = {}
puts test["test"]
