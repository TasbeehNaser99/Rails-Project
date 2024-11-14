class Task < ApplicationRecord
  belongs_to :week
  has_many:sub_tasks
end
