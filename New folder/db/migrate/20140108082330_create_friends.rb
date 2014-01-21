class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.string  :sex
      t.string  :photo
      t.timestamps
    end
  end
end
