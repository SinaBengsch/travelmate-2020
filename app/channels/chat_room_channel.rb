class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    chat_room = Chatroom.find(params[:id])
    stream_for chat_room
  end
end
