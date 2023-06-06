class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  # Validaciones
  validates :title, presence: true
  validates :content, presence: true
end
