require 'pry'
class School

attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if self.roster.has_key?(grade)
       self.roster[grade] << name
    else
      self.roster[grade] = []
      self.roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.collect do |grade, name|
      grade.sort
  end
  end
end

end
