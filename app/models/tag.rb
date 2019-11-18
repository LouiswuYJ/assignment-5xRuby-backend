class Tag < ApplicationRecord
  has_many :task_tags
  has_many :tasks, through: :task_tags

  # validates :name, length: { maximum: 10, too_long: "#{I18n.t('model.too_long')}" }
end
