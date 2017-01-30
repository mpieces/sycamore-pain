class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.date :req_date
      t.time :req_time
      t.text :comments
      t.timestamps
    end
  end
end
