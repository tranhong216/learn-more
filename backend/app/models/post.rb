class Post < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :category
  enum status: %i(rejected pending avaiable)

  scope :filter_by, -> (ids) do
    joins(:category).where(categories: {id: ids})
  end
end
