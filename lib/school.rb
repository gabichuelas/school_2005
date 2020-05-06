class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start, hours)
    @start_time = start
    @hours_in_school_day = hours
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    finish = @start_time.delete(":00").to_i + @hours_in_school_day

    finish.to_s + ":00"
    # I know this doesn't work if
    # classes DIDN'T start at the top
    # of the hour (00), but that's
    # for a later iteration :)
  end

  def is_full_time?
    @hours_in_school_day > 4
    # could write this as an if/else,
    # but doesn't seem necessary
  end

  def standard_student_names
    @student_names.map { |name|
      name.capitalize
    }
  end

end
