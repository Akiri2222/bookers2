class Book < ApplicationRecord
  has_one_attached :profile_image
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 0, maximum: 200 }
end
