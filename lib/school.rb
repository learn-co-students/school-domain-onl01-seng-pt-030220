# code here!
class School

attr_accessor :name , :roster

def initialize(name)
   @name=name
   @roster={}
end

def add_student(student_name, grade)
  roster[grade] ||= []                 # ||=    if the key in roster not already exist ,set it to empty array ,
                                       #if that key  already has key and value,you  will not loose that value because of this operator ||=
                                       #when we assign to empty array
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
