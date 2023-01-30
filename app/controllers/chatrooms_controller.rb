class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    render json: @chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages

    render json: @messages
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.save!
    render json: @chatroom, status: :created, location: @chatroom
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
  end

  def update
    @chatroom = Chatroom.find(params[:id])
    @chatroom.update(chatroom_params)
    render json: @chatroom
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
