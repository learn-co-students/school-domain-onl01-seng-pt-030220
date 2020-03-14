# code here!
class School

attr_accessor :name , :roster

def initialize(name)
   @name=name
   @roster={}
end

def add_student(student_name, grade)
  roster[grade] ||= []   # ||= if roster[grade] already  has  a value leave it not change ,if not equal it to empty array =[]
  roster[grade] << student_name
end

def grade(grade)
   roster[grade]
end


def sort
   roster.each do |grade, student_name|
      roster[grade] = student_name.sort
   end
end

end
