# code here!

class School
  # initialized with name

  # The roster should be an empty hash upon initialization but will
  # be built out to contain keys of grade levels. The value of each
  # key will be an array of student names.

  # You should be able to add a student to the school by calling the
  # add_student method and giving it an argument of the student's name
  # and their grade.

  # You should be able to get a sorted list of all the students where the
  # strings in the student arrays are sorted alphabetically.

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade].push(student_name)
    else
      @roster[grade] = []
      @roster[grade].push(student_name)
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    output = {}

    @roster.each_key do |k_grade|
      @roster[k_grade].sort!
    end

    @roster
  end
end
