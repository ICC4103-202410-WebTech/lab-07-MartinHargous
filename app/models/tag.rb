class Tag < ApplicationRecord
    validates :name, presence:  { message: "So now we are using blank tags? I don't have high steaks on you and you still  manage to let me down" }, 
      uniqueness: { message: "This tag already exists. You are late to this train!" }
    has_many :post_tag
    has_many :posts, through: :post_tag
  end
  