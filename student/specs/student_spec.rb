require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class StudentTests < MiniTest::Test

  def test_can_make_new_student
    student = Student.new("Gregor", "G16")
  end

  def test_name
    student = Student.new("Stephen", "G16")
    assert_equal("Stephen", student.name)
  end

  def test_cohort
    student = Student.new("Alison", "E25")
    assert_equal("E25", student.cohort)
  end

  def test_set_name
    student = Student.new("Jennifer", "G8")
    student.set_name("Jonathan")
    assert_equal("Jonathan", student.name)
  end

  def test_set_cohort
    student = Student.new("William", "E31")
    student.set_cohort("G7")
    assert_equal("G7", student.cohort)
  end

#
end
