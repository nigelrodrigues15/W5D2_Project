class Post < ApplicationRecord
  validates :title, :author_id, presence:true

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User

  has_many :post_subs, inverse_of: :post

  #each post can belong to multiple subs, so has many subs....
  has_many :subs,
  through: :post_subs,
  source: :sub

  has_many :comments

end
