class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true

  def total_likes
    likes - dislikes
  end


  attribute :title, :string
  attribute :content, :string
  attribute :user_id, :string
  attribute :likes, :string
  attribute :dislikes, :string





end
