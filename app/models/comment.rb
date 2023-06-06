class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :content, presence: true

  attribute :content, :string
  attribute :post_id, :string
  attribute :user_id, :string
end
