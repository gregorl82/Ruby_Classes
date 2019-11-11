require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTests < MiniTest::Test

  def test_can_create_new_library
    library = Library.new()
  end

#
end
