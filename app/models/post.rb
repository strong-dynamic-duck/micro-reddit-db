class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 4 }, uniqueness: true
  validates :text, presence: true, length: { minimum: 8 }
end
