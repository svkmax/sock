class CreateChats < ActiveRecord::Migration
  def change
    create_table  :chats do |t|
      t.integer   :user_id
      t.integer   :participants, array: true, default: []

      t.timestamps null: false
    end
  end
end
