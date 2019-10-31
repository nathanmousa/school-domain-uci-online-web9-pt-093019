require 'pry'
class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)

    self.roster[grade]
  end
  
  def sort 
    @roster.map do |x, y| 
      sorted[x] = y.sort 
    end 
  end
end