class Post < ApplicationRecord
    has_many :post_tag
    has_many :tags, through: :post_tag
    belongs_to :user
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"
  end