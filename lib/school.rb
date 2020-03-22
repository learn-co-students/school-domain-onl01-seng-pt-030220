# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @grade = grade
    if @roster[grade]
        @roster[grade].push(student)
    else
        @roster[grade] = [student]
    end
  end

  def grade(num)
    return @roster[num]
  end

  def sort()
    @roster.each do |k, v|
      v.sort!
    end
  end
end