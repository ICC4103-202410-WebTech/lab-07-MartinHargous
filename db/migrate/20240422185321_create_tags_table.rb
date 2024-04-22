class CreateTagsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :tags_tables do |t|
      t.belongs_to :tags_post
      t.string :name
      t.timestamps
    end
  end
end
