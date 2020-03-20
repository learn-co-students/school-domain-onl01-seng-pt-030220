class School
 attr_accessor :name, :roster
  
   def initialize(name)
    @name = name
     @roster = {}
   end 
  
   def add_student(student, level)
    roster[level] ||= []
   roster[level] << student
  end 
  
   def grade(level)
     roster.detect do |x, y| 
    if x == level
        return y 
      end 
    end 
   end
   def sort 
     sort ={}
   roster.each do |x, y|
     sort[x]=y.sort
   end
   sort
end
end
