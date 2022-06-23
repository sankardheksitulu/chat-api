require "test_helper"

class Api::V1::MessageRepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_message_reply = api_v1_message_replies(:one)
  end

  test "should get index" do
    get api_v1_message_replies_url, as: :json
    assert_response :success
  end

  test "should create api_v1_message_reply" do
    assert_difference("Api::V1::MessageReply.count") do
      post api_v1_message_replies_url, params: { api_v1_message_reply: { author_name: @api_v1_message_reply.author_name, message: @api_v1_message_reply.message, message_id: @api_v1_message_reply.message_id } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_message_reply" do
    get api_v1_message_reply_url(@api_v1_message_reply), as: :json
    assert_response :success
  end

  test "should update api_v1_message_reply" do
    patch api_v1_message_reply_url(@api_v1_message_reply), params: { api_v1_message_reply: { author_name: @api_v1_message_reply.author_name, message: @api_v1_message_reply.message, message_id: @api_v1_message_reply.message_id } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_message_reply" do
    assert_difference("Api::V1::MessageReply.count", -1) do
      delete api_v1_message_reply_url(@api_v1_message_reply), as: :json
    end

    assert_response :no_content
  end
end
