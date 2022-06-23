class CreateApiV1ChannelMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_channel_members do |t|
      t.string :user_name
      t.integer :channel_id

      t.timestamps
    end
  end
end
