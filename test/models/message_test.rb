require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "should not save message without content" do
    message = Message.new
    assert_not message.save
  end

  test "should save message with content" do
    message = Message.new text: 'Something'
    assert message.save
  end
end
