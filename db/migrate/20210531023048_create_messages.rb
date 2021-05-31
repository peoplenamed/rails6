class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :text
      t.string :subject
      t.integer :from_user_id
      t.integer :to_user_id
      t.integer :parent_message_id

      t.timestamps
    end
  end
end
