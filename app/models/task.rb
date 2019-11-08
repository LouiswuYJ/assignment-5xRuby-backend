class Task < ApplicationRecord
  has_many :task_tags
  has_many :tags, through: :task_tags

  enum priority: { low: 0, middle: 1, high: 2 }
  enum status: { pending: 0, processing: 1, done: 2 }

  # tag_list 的 getter
  # .map(&:name) 等於 .map{|x| x.name } 
  def tag_list
    tags.map(&:name).join(', ')
  end

  # tag_list 的 setter 
  # 找到該Task下所有的tags後用split分開成陣列，再針對每個element去做first_or_create (Find the First Instance in the Table. If None Exists, Create One.)
  def tag_list=(names)
    self.tags = names.split(',').map do |item|
      Tag.where(name: item.strip).first_or_create!
    end
  end
end
