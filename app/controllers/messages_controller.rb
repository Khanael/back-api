class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    ## @message.chatroom = Chatroom.find(params[:chatroom_id])
    ## @message.user =  # I don't know how to get the current user from vuejs

    if @message.save!
      render json: @message, status: :created
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chatroom_id, :user_id)
  end
end
