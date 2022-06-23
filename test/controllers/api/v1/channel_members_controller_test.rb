require "test_helper"

class Api::V1::ChannelMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_channel_member = api_v1_channel_members(:one)
  end

  test "should get index" do
    get api_v1_channel_members_url, as: :json
    assert_response :success
  end

  test "should create api_v1_channel_member" do
    assert_difference("Api::V1::ChannelMember.count") do
      post api_v1_channel_members_url, params: { api_v1_channel_member: { user_name: @api_v1_channel_member.user_name } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_channel_member" do
    get api_v1_channel_member_url(@api_v1_channel_member), as: :json
    assert_response :success
  end

  test "should update api_v1_channel_member" do
    patch api_v1_channel_member_url(@api_v1_channel_member), params: { api_v1_channel_member: { user_name: @api_v1_channel_member.user_name } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_channel_member" do
    assert_difference("Api::V1::ChannelMember.count", -1) do
      delete api_v1_channel_member_url(@api_v1_channel_member), as: :json
    end

    assert_response :no_content
  end
end
