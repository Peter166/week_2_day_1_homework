class CodeClanStudents

  attr_accessor :student_name, :class_number, :language

  def initialize(input_student_name, input_class_number, input_language)
    @student_name = input_student_name
    @class_number = input_class_number
    @language = input_language
  end


  def say(value)
    return value
  end

  def lan_string(language)

    return "I am learning #{language}."
  end






end
