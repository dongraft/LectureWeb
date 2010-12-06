class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :yt_id
      t.string :user_id
      t.string :name
      t.string :course
      t.string :professor
      t.string :semester
      
      #Campos de Authlogic
      t.string    :crypted_password,    :null => false                
      t.string    :password_salt,       :null => false               
      t.string    :persistence_token,   :null => false              
      t.string    :single_access_token, :null => false    
      t.string    :last_login_ip            

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
