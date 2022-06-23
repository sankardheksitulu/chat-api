class CreateApiV1Channels < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_channels do |t|
      t.string :name
      t.string :author_name

      t.timestamps
    end
    
  add_index :api_v1_channels, :name,                unique: true
  end
end
