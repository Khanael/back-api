class ChatroomUsersController < ApplicationController
  def create
    @chatroom_user = ChatroomUser.new
    @chatroom_user.chatroom = Chatroom.find(params[:chatroom_id])
    @chatroom_user.user = User.find(chatroom_user_params)

    if @chatroom_user.save!
      render json: @chatroom_user, status: :created, location: @chatroom_user
    else
      render json: @chatroom_user.errors, status: :unprocessable_entity
    end
  end

  def delete
    @chatroom_user = ChatroomUser.find(params[:id])
    @chatroom_user.destroy
  end

  def update
    @chatroom_user = ChatroomUser.find(params[:id])
    @chatroom_user.update(chatroom_user_params)
    render json: @chatroom_user
  end

  private

  def chatroom_user_params
    params.require(:chatroom_user).permit(:user_id)
  end
end
