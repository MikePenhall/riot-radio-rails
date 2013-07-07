class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :excerpt
      t.string :tags
      t.string :categories
      t.string :slug
      t.belongs_to :administrator

      t.timestamps
    end
  end
end
