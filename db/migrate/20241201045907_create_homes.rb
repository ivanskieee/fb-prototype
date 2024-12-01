class CreateHomes < ActiveRecord::Migration[7.2]
  def change
    create_table :homes do |t|
      t.string :email
      t.text :password

      t.timestamps
    end
  end
end
