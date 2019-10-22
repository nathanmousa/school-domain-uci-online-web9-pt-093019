class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  attr_reader :name, :roster
  
  def add_student(student, grade)
    @roster[grade] = [] if roster[grade] == nil
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster.detect do |x, y| 
      if x == grade
        return y
      end 
    end
  end
  
  def sort 
    sorted = {}
  
    @roster.each do |x, y| 
      sorted[x] = y.sort 
    end 
    sorted
  end
end