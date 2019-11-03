class School
  attr_accessor :name, :grade, :student
  
  ROSTER = {}
 
  def initialize(name)
    @name = name 
  end
  
  def roster 
    ROSTER 
  end
  
  def add_student(student, grade)
    #puts ROSTER.key?(grade)
    if ROSTER.key?(grade) 
      ROSTER[grade] << student
    else
      ROSTER[grade] = []
      ROSTER[grade] << student
    end
  end
  
  def grade(grade)
    ROSTER[grade]
  end
end

school = School.new("Bayside High School")
puts school.name
puts
school.add_student("apple", 9)
school.add_student("orange", 11)
school.add_student("wow", 11)
school.add_student("pear", 10)
puts school.roster
puts school.roster.sort
