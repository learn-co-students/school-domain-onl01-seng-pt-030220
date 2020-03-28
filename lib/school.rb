# code here!
class School

attr_accessor :name , :roster

def initialize(name)
   @name=name
   @roster={}
end

def add_student(student_name, grade)
  roster[grade] ||= []   # ||= if  roster[grade] not exist nil or false(first grade ),then create empty array to to put key and value ,if key alreay exist then push it to array
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
