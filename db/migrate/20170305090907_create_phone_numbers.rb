class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.integer :person_id
      t.integer :user_id, :limit => 10
      t.integer :phone_number, :limit => 10
      t.string :carrier
      t.timestamps
    end
  end
end
