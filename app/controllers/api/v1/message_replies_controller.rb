class Api::V1::MessageRepliesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_api_v1_message_reply, only: %i[ show update destroy ]

  # GET /api/v1/message_replies
  def index
    @api_v1_message_replies = Api::V1::MessageReply.where(:message_id => params[:message_id]).all

    render json: @api_v1_message_replies
  end

  # GET /api/v1/message_replies/1
  def show
    render json: @api_v1_message_reply
  end

  # POST /api/v1/message_replies
  def create
    @api_v1_message_reply = Api::V1::MessageReply.new(api_v1_message_reply_params)
    @api_v1_message_reply.author_name = current_user.name
    if @api_v1_message_reply.save
      render json: @api_v1_message_reply, status: :created, location: @api_v1_message_reply
    else
      render json: @api_v1_message_reply.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/message_replies/1
  def update
    if @api_v1_message_reply.update(api_v1_message_reply_params)
      render json: @api_v1_message_reply
    else
      render json: @api_v1_message_reply.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/message_replies/1
  def destroy
    @api_v1_message_reply.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_message_reply
      @api_v1_message_reply = Api::V1::MessageReply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_message_reply_params
      params.require(:api_v1_message_reply).permit(:message, :message_id, :author_name)
    end
end
