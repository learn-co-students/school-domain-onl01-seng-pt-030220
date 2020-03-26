class School
  
  def initialize(school_name)
    @school_name = school_name 
    @roster = { }
  end 
 
  def add_student(name,grade)
    if @roster[grade]
      @roster[grade] << [name]
    else
      @roster[grade] = [name]
    end 
  end 
  
    
    def sort(grade,name)
      @roster.each do |grade,name|
        @roster[grade] = name.sort
      end 
    end   
  end 
