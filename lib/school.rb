
class School 
  
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade]==nil
    @roster[grade] = []
    end
    if  name.instance_of? Array
      
    @roster[grade] += name
    end
    @roster[grade]<< name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    new_roster = {}
    @roster.each do |key, element| 
      new_roster[key] = element.sort!
      
    end
    @roster = new_roster
    
end
end

  
  