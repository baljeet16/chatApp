class ChatRoomController < ApplicationController
  def new
    @room = ChatRoom.create(roomname: params[:roomname], password: params[:password])
  end

  def delete
  end

  def show
  end
end
