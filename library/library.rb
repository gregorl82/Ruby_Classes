class Library

  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book_title)
    @books.push(  {
    title: book_title,
    rental_details: {
     student_name: "",
     date: ""}})
  end

#
end
