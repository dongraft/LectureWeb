class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :last_name
      
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
    drop_table :users
  end
end
