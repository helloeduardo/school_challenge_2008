class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    start_hour = start_time.split(":")[0].to_i
    start_minutes = start_time.split(":")[1]
    end_hour = start_hour + hours_in_school_day

    ending_time = end_hour.to_s + ":" + start_minutes
  end

end
