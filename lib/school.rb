# code here!
require 'pry'

class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student (student_name, grade)
    
        self.roster[grade] ||= []
        self.roster[grade] << student_name
        #if @roster.has_key?(grade)
        #    @roster[grade] << student_name
        #else
         #   @roster[grade] = [student_name]
        #end 
    end

    def grade(grade)
        self.roster[grade]
        #@roster[grade]
    end

    def sort
        self.roster.each do |grade, student_name|
            student_name.sort!
        end  
    end

end 


=begin
class School
    attr_accessor :roster, :student_name, :grade
    attr_reader :school
    def initialize(school)
        @school = school
    end
    def roster
        roster = {}
    end 
    def add_student(student_name, grade) 
        roster[grade] = []
        roster[grade] << student_name
    end  
    def grade(grade)
             roster.detect do |x, y| 
               if x == grade
                 return y 
           end 
         end 
    end 
end 

##First try only first test passing...

=end
