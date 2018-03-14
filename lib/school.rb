require "pry"

class School

  attr_reader :roster, :title, :grade

  def initialize(title)
    @title = title
    @roster = {}
  end


  def add_student(student, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|key, value| @roster[key]=@roster[key].sort}

  end

end
