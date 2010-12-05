class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :yt_id
      t.string :user_mail
      t.string :name
      t.string :course
      t.string :professor
      t.string :semester

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
