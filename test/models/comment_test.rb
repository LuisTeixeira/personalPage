require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "This is a title", content: "Here we have content")
    @comment = Comment.new(post: @post, content: "This is a comment")
  end
  
  test "should be valid" do
    assert @comment.valid?    
  end
  
  test "content must be present" do
    @comment.content = "     "
    assert_not @comment.valid?
  end
  
  test "comment must belong to a post" do
    new_comment = Comment.new(content: "This is a comment")
    assert_not new_comment.valid?
  end
  
  test "post must not be nil" do
    @comment.post = nil
    assert_not @comment.valid?
  end
end
