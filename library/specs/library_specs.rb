require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibrarySpecs < MiniTest::Test
  def setup 
    @books_hash = {
      lord_of_the_rings: {
        student_name: "Jeff", 
        date: "01/12/16"
      },
        catcher_in_the_rye: {
          student_name: "Alex", 
          date: "23/11/16"
        }
    }
  end

  def test_can_create_library
    lib = Library.new(@books_hash)
    assert_equal(@books_hash, lib.list_all_books)
  end

  def test_find_student_and_date_by_book_name
    lib = Library.new(@books_hash)
    student_date_hash = lib.find_student_and_date_by_book_name(:lord_of_the_rings)
    assert_equal({:student_name=>"Jeff", :date=>"01/12/16"}, student_date_hash)
  end

  def test_add_book
    lib = Library.new(@books_hash)
    lib.add_book(:lolita)
    expected_hash = {:student_name=>"", :date=>""}
    actual_hash = lib.find_student_and_date_by_book_name(:lolita)
    assert_equal(expected_hash, actual_hash)
  end

  def test_rent_out_book
    lib = Library.new(@books_hash)
    lib.add_book(:lolita)
    lib.rent_out_book(:lolita, "Thomas", "28/11/16")
    expected_hash = {:student_name=>"Thomas", :date=>"28/11/16"}
    actual_hash = lib.find_student_and_date_by_book_name(:lolita)
    assert_equal(expected_hash, actual_hash)
  end
end
