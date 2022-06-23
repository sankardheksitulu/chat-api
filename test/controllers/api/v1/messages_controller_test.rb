require "test_helper"

class Api::V1::MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_message = api_v1_messages(:one)
  end

  test "should get index" do
    get api_v1_messages_url, as: :json
    assert_response :success
  end

  test "should create api_v1_message" do
    assert_difference("Api::V1::Message.count") do
      post api_v1_messages_url, params: { api_v1_message: { author_name: @api_v1_message.author_name, channel_id: @api_v1_message.channel_id, message: @api_v1_message.message, receiver_name: @api_v1_message.receiver_name } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_message" do
    get api_v1_message_url(@api_v1_message), as: :json
    assert_response :success
  end

  test "should update api_v1_message" do
    patch api_v1_message_url(@api_v1_message), params: { api_v1_message: { author_name: @api_v1_message.author_name, channel_id: @api_v1_message.channel_id, message: @api_v1_message.message, receiver_name: @api_v1_message.receiver_name } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_message" do
    assert_difference("Api::V1::Message.count", -1) do
      delete api_v1_message_url(@api_v1_message), as: :json
    end

    assert_response :no_content
  end
end
