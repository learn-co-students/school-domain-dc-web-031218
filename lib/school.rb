class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)

    if @roster == {}
      @roster[grade] = [name]
    else
      if @roster[grade] == nil
        @roster[grade] = [name]
      else
        @roster[grade] << name
      end
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    key = self.roster
    order = key.keys.sort
    ret = {}
    order.each {|i| ret[i] = self.grade(i).sort}
    ret
  end

end
