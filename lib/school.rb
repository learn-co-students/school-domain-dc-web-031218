require "pry"

class School
  attr_accessor :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end
end
