require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  def setup
    @the_author = authors(:jk_rowling)
    @new_author = authors(:new_author)
  end


  test "name must be present" do
    p @the_author
    assert_equal 'JK Rowling', @the_author.name, 'The expected author is not found'
  end

  test "author.book must be Harry Potter and the Chamber" do
    p @the_author.books.name
    # assert_equal 'Harry Potter and the Chamber', @the_author.book.name, 'The author has not book as per fixture'
  end

  test "name should be valid" do
    p 'new author validity' , @new_author.valid?
    assert_not @new_author.valid?,  'Author name must be validated'
  end

end
