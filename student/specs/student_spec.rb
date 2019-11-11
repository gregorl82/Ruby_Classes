require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class StudentTests < MiniTest::Test

  def test_can_make_new_student
    student = Student.new("Gregor", "G16")
  end

#
end
