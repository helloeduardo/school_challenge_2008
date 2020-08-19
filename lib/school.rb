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

  def is_full_time?
    hours_in_school_day > 4
  end

  def standard_student_names
    student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
   end_hour = end_time.split(":")[0].to_i
   end_minutes = end_time.split(":")[1]
   converted_end_hour = end_hour % 12

   clock_time = converted_end_hour.to_s + ":" + end_minutes
  end

end
