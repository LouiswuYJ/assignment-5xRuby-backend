class Task < ApplicationRecord
  has_many :task_tags
  has_many :tags, through: :task_tags

  enum priority: { low: 0, middle: 1, high: 2 }
  enum status: { pending: 0, processing: 1, done: 2 }
end
