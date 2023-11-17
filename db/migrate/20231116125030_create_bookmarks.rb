class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.integer :movie_id
      t.string :list_id
      t.string :integer

      t.timestamps
    end
  end
end
