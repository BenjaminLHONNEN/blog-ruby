class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.timestamps
      t.string :name
    end
    create_table :posts_tags do |t|
      t.timestamps
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
