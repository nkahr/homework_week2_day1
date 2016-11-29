require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class StudentSpec < MiniTest::Test

  def test_can_create_new_student
    nina = Student.new("Nina", 9, "Ruby")
    assert_equal(Student, nina.class)
  end

  def test_get_name
    ellie = Student.new("Ellie", 5, "Java")
    assert_equal("Ellie", ellie.name)
  end

  def test_get_cohort
    james = Student.new("James", 9, "Ruby")
    assert_equal(9, james.cohort)
  end

  def test_can_talk
    dave = Student.new("Dave", 9, "Ruby")
    assert_equal("I can talk.", dave.talk)
  end

  def test_say_favourite_language
    beth = Student.new("Beth", 2, "JavaScript")
    assert_equal("I love JavaScript!", beth.say_favourite_language)
  end

end