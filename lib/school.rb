# code here!
class School

attr_accessor :name , :roster

def initialize(name)
   @name=name
   @roster={}
end

def add_student(student_name, grade)
  roster[grade] ||= []   # ||= if  roster[grade] not exist nil or false(it means it's first item ),then we equal it to array .when we add second items ,array
                         #already exist ,so not do anything 
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
