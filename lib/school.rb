# code here!
require 'pry'
class School

    attr_accessor :name
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end

    end

    def grade(grade_key)
        @roster[grade_key]
    end

    def sort
        @roster.each do |grade, name_array|
            @roster[grade] = name_array.sort
            # binding.pry
        end
        @roster
    end

end