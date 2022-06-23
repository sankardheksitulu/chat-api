class CreateApiV1Messages < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_messages do |t|
      t.text :message
      t.string :author_name
      t.string :receiver_name
      t.integer :channel_id

      t.timestamps
    end
  end
end
