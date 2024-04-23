class User < ApplicationRecord
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: { message: "Enter a name (You do have a name, right?)" }

    validates :email, presence: { message: "Enter an email (I need more info to let you in :/)" },
                    uniqueness: { message: "This email already exists. (haven't we already met?)" },
                    format: { with: EMAIL_REGEX, message: "Enter a valid email (Please at least learn how to write an email first)" }
    validates :password, presence: true, length: { minimum: 6 , message:"Even I could guess a password that short"}
    before_validation :downcase_email
    has_many :posts

    private
  
    def downcase_email
        self.email = email.downcase if email.present?
      end
end