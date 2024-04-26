class User < ApplicationRecord
    has_many :posts

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }

    before_save :normalize_email

    private

    def normalize_email
        self.email = email.downcase
    end
  end