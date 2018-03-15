require 'pry'
class School
  attr_accessor :roster
  attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
    # @roster << @name
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
  end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
  end
end
