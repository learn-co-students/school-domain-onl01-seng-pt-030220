require "pry"

class School
  attr_writer :add_student, :grade, :sort
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def name
    @name
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade

    if @roster.include? (@grade)
        @roster[@grade] << @student_name
    else
        @roster[@grade] = []  #{9 => []}
        @roster[@grade] << @student_name
    end
  end

  def roster
    @roster
  end
  
  def grade(grade)
    @grade = grade
    @roster[@grade]
  end
  
  def sort
    sorted = {}
    @roster.each do |grade, student_array|
      sorted_student = student_array.sort
      sorted[grade] = sorted_student
    end
     #what each returns? each returns initial hash(@roster), so need to define what we need to return
    sorted
  end
end
# school = School.new("Bayside High School")
