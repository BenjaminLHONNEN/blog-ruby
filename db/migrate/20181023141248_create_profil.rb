class CreateProfil < ActiveRecord::Migration[5.2]
  def change
    create_table :profils do |t|
      t.timestamps
      t.string :description
    end
  end
end
