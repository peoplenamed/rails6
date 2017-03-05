class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.integer :user_id, :limit => 10

      t.timestamps
    end
  end
end
