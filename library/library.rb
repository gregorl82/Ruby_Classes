class Library

  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book_title)
    @books.push({
    title: book_title,
    rental_details: {
     student_name: "",
     date: ""}})
  end

  def book_info(book_title)
    for book in @books
      if (book[:title] == book_title)
        return book
      end
    end
    return "Book not found"
  end

  def rental_details(book_title)
    book = book_info(book_title)
    if book != "Book not found"
      return book[:rental_details]
    end
  end

  def change_rental_details(book_title, name, due_date)
    for book in @books
      if (book[:title] == book_title)
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = due_date
      end
    end
  end

#
end
