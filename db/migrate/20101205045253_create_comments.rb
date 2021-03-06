class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :video_id
      t.integer :user_id
      t.string :timestamp
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
