class Category < ActiveRecord::Base
  acts_as_paranoid
  has_many :posts, dependent: :destroy
  validates :name, presence: true
end
