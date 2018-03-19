class School

attr_accessor :name, :roster

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

def grade(grade_to_retrieve)
  @roster[grade_to_retrieve]
end

def sort
@roster.collect {|grade, students|
    [grade, students.sort]}.to_h
  end


end
