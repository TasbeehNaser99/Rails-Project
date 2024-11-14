class Category < ApplicationRecord
  has_many:weeks
 validates :name, presence: true, uniqueness: true
end
