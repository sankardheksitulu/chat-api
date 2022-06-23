class CreateApiV1MessageReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_message_replies do |t|
      t.text :message
      t.integer :message_id
      t.string :author_name

      t.timestamps
    end
  end
end
