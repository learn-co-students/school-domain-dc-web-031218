require 'pry'

# code here!
class School
	attr_accessor :roster
	attr_reader :name 

	#Constructor
	def initialize(name)
		@name = name
		@roster = {}
	end

	#Add student to roster
	def add_student(name, grade)
		if @roster.key?(grade)
			@roster[grade] << name
		else 
			@roster[grade]= []
			roster[grade] << name
		end
	end

	#Return array of students in a grade
	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |key, val|
			val.sort!
		end
	end

end


# puts "wha"

# le_school = School.new("Le School")

# le_school.add_student("D", 3)
# le_school.add_student("C", 3)
# le_school.add_student("B", 3)
# le_school.add_student("A", 3)

# le_school.add_student("D", 4)
# le_school.add_student("C", 4)
# le_school.add_student("B", 4)
# le_school.add_student("A", 4)


# pry.start
