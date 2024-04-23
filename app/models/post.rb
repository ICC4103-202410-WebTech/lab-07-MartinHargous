class Post < ApplicationRecord
  validates :title, presence: { message: "Seriously, you can't leave this blank!" }
  validates :content, presence: { message: "Seriously, you want to post a blank space?" }
  validates :user_id, presence: { message: "I need to know who posted this, duh..." }
  validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "You can't have negative likes, this isn't reddit (thankfully!)" } 
  validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "You can't have negative comments, that would be strange" }
  before_validation :set_published_at_default

  has_many :post_tag
  has_many :tags, through: :post_tag
  belongs_to :user
  belongs_to :parent_post, class_name: "Post", optional: true
  has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id"

  private

  
  def set_published_at_default
    self.published_at ||= Time.current
  end
  end