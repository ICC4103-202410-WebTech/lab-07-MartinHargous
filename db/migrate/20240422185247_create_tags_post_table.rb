class CreateTagsPostTable < ActiveRecord::Migration[7.1]
  def change
    create_table :tags_post_tables do |t|
      t.belongs_to :tag
      t.belongs_to :post
      t.timestamps
    end
  end
end
