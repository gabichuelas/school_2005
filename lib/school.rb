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
    "#{@start_time.to_i + @hours_in_school_day}:00"

    # I know this doesn't work if
    # classes DIDN'T start at the top
    # of the hour (00), but that's
    # for a later iteration :)
  end

  def convert_end_time_to_clock_time
    # simplified this method bc to_i
    # already removes the :00
    if end_time.to_i > 12
      "#{end_time.to_i - 12}:00"
    elsif end_time.to_i <= 12
      "#{@hours_in_school_day + @start_time.to_i}:00"
    end
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
