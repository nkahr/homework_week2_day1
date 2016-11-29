class Library 
  attr_accessor :books

  def initialize(books_hash)
    @books = books_hash
  end

  def list_all_books
    return @books
  end

  def find_student_and_date_by_book_name(name_sym)
    return @books[name_sym]
  end

  def add_book(book_name_sym)
    @books[book_name_sym] = {:student_name=>"", :date=>""}
    return @books
  end

  def rent_out_book(book_name_sym, name_str, date_str)
    @books[book_name_sym][:student_name] = name_str
    @books[book_name_sym][:date] = date_str
  end
end