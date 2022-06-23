class Api::V1::ChannelMembersController < ApplicationController
  before_action :set_api_v1_channel_member, only: %i[ show update destroy ]

  # GET /api/v1/channel_members
  def index
    @api_v1_channel_members = Api::V1::ChannelMember.all

    render json: @api_v1_channel_members
  end

  # GET /api/v1/channel_members/1
  def show
    render json: @api_v1_channel_member
  end

  # POST /api/v1/channel_members
  def create
    @api_v1_channel_member = Api::V1::ChannelMember.new(api_v1_channel_member_params)

    if @api_v1_channel_member.save
      render json: @api_v1_channel_member, status: :created, location: @api_v1_channel_member
    else
      render json: @api_v1_channel_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/channel_members/1
  def update
    if @api_v1_channel_member.update(api_v1_channel_member_params)
      render json: @api_v1_channel_member
    else
      render json: @api_v1_channel_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/channel_members/1
  def destroy
    @api_v1_channel_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_channel_member
      @api_v1_channel_member = Api::V1::ChannelMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_channel_member_params
      params.require(:api_v1_channel_member).permit(:user_name)
    end
end
