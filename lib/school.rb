require 'pry'
class School 
  attr_reader :grade, :name, :roster, :sort
  attr_accessor :school_name
  
  def initialize(school_name)
    @school_name = school_name 
    @roster = {} 

    end
    
    def add_student(name, grade)
      if @roster.include?(grade)
        @roster[grade] << name 
      else
      @roster[grade] = [] 
      @roster[grade] << name 
    end
    end
    
    def grade(grade)
      roster[grade]
    end
    
    def sort
   new_hash = {} 
   roster.each do |key, value| 
     new_hash[key]= value.sort
    end
    new_hash
    end
      
  
  
end
