class Comment < ActiveRecord::Base
  belongs_to :post, touch: true
  has_many :replies, dependent: :destroy
end
