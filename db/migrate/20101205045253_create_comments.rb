class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :id
      t.string :video_id
      t.string :user_mail
      t.string :timestamp
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
