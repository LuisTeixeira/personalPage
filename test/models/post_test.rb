require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "This is a title", content: "Here we have content")
  end
  
  test "should be valid" do
    assert @post.valid?
  end
  
  test "title must be present" do
    @post.title = "   "
    assert_not @post.valid?
  end
  
  test "content must be present" do
    @post.content = "   "
    assert_not @post.valid?
  end
end
