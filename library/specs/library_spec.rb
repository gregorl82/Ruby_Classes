require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTests < MiniTest::Test

  def test_can_create_new_library
    library = Library.new()
  end

  def test_books
    library = Library.new()
    assert_equal([], library.books)
  end

  def test_add_book
    library = Library.new()
    library.add_book("the_great_gatsby")
    expected_output = [{title: "the_great_gatsby", rental_details: {student_name: "", date: ""}}]
    assert_equal(expected_output, library.books)
  end

#
end
