class CreateChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.string :roomname
      t.string :password

      t.timestamps
    end
  end
end
