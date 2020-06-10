class AddActivityToChatRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chat_rooms, :activity, null: false, foreign_key: true
  end
end
