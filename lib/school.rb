class School
  attr_accessor :roster, :student, :school
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(student)
    @roster[student]
  end

  def sort
  sorted_order  = @roster.each_value { |value| value.sort! }
  sorted_order
  end
end

# code here!
