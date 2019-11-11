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
    library.add_book("age_of_innocence")
    expected_output = [{title: "the_great_gatsby", rental_details: {student_name: "", date: ""}},
                      {title: "age_of_innocence", rental_details: {student_name: "", date: ""}}]
    assert_equal(expected_output, library.books)
  end

  def test_book_info__book_found
    library = Library.new()
    library.add_book("pride_and_prejudice")
    expected_output = {title: "pride_and_prejudice", rental_details: {student_name: "", date: ""}}
    assert_equal(expected_output, library.book_info("pride_and_prejudice"))
  end

  def test_book_info__book_not_found
    library = Library.new()
    library.add_book("pride_and_prejudice")
    assert_equal("Book not found", library.book_info("sense_and_sensibility"))
  end

  def test_rental_details
    library = Library.new()
    library.add_book("wuthering_heights")
    library.change_rental_details("wuthering_heights", "Jack", "06/12/2019")
    expected_output = {student_name: "Jack", date: "06/12/2019"}
    assert_equal(expected_output, library.rental_details("wuthering_heights"))
  end

  def test_change_rental_details
    library = Library.new()
    library.add_book("jane_eyre")
    library.change_rental_details("jane_eyre", "Jennifer", "12/01/2020")
    expected_output = {title: "jane_eyre", rental_details: {student_name: "Jennifer", date: "12/01/2020"}}
    assert_equal(expected_output, library.book_info("jane_eyre"))
  end

#
end
