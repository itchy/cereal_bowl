class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :blog_id
      t.string :body
      t.string :author
      t.string :tags

      t.timestamps
    end
  end
end
