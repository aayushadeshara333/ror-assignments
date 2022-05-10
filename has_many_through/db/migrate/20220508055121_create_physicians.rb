class CreatePhysicians < ActiveRecord::Migration[7.0]
  def change
    create_table :physicians do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :uniq_id, null: false, unique: true

      t.timestamps
    end
  end
end
