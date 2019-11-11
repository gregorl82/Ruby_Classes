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

#
end
