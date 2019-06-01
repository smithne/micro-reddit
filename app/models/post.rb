class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 255 }
  validates :user_id, presence: true
end
