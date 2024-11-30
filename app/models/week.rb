class Week < ApplicationRecord
  has_many:tasks
  has_many:note
  has_one:goal
  belongs_to:category
  validates :category_id, presence: true
end
