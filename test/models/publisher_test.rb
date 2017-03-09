require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  def setup
    @the_publisher = publishers(:penguin)
    @jk = authors(:jk_rowling)
    @nobody = authors(:nobody)
    @tolkien = authors(:tolkien)
  end


  test "name of publisher is Penguin" do
    assert_equal 'Penguin', @the_publisher.name, 'Name not matched'
  end

  test "one of the authors is JK Rowling" do
    p @the_publisher.authors.include? @jk
    assert @the_publisher.authors.include?(@jk), 'JK Rowling not found'
  end

  test "assert fail for nobody" do
    p @the_publisher.authors.include? @nobody
    assert_not @the_publisher.authors.include?(@nobody), 'Nobody not found'
  end

  test "list all books by jk rowling" do
    p @the_publisher.books
    p @jk.books
    assert_equal @the_publisher.books, @jk.books.push(@tolkien.books), 'Relationship between publisher and books is  not establisedh'
  end
end
