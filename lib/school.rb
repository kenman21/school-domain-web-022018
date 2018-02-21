# code here!

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    hash = {}
    @roster.each {|grade, names| hash[grade] = names.sort}
    hash
  end

end
