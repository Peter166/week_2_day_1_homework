require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCodeClanStudents < MiniTest::Test


  def setup
    @codeclanstudents = CodeClanStudents.new('Tom', 'G1', 'Ruby')
    # @codeclanstudent = CodeClanStudents.new('Bob', 'G2')
  end


  def test_student_name

    assert_equal('Tom', @codeclanstudents.student_name)

  end

  def test_class_name
    assert_equal('G1', @codeclanstudents.class_number)

  end

  def test_change_name
    @codeclanstudents.student_name = 'Anna'
    assert_equal('Anna', @codeclanstudents.student_name)
  end

  def test_change_class
    @codeclanstudents.class_number = 'G2'
    assert_equal('G2', @codeclanstudents.class_number)
  end

  def test_say
    @codeclanstudents.student_name = 'Tom'
    @codeclanstudents.say('I can Talk!')

  end
  def test_lan_string
    assert_equal('I am learning Ruby.', @codeclanstudents.lan_string('Ruby'))
  end


end
