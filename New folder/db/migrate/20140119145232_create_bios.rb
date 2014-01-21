class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :date_of_birth
      t.string :place_of_birth
      t.string :favorite
      t.sting :skills
      t.string :dream
      t.timestamps
    end
  end
end
