require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  feature 'Task ordered desc by create time' do
    let(:task_ordered) { Task.order(created_at: :desc).map {|x| x.title} }
    
    # 寫法一
    scenario 'Task should orderd desc' do
      3.times do |i|
        i += 1
        i = create(:task)
      end
      expect(task_ordered.count).to eq 3
      expect(task_ordered).to eq(["task3", "task2", "task1"])
    end

    # 寫法二
    scenario 'Task should orderd desc' do
      visit '/'
      3.times do |i|
        i += 1
        task = Task.new(title: "task#{i}", 
                        description: "descrition#{i}", 
                        start_time: "2019-11-11 16:30:08 +0800",
                        end_time: "2019-11-11 16:30:08 +0800")

        click_link "#{I18n.t('views.new_task')}"
        fill_in "#{I18n.t('views.tasks.title')}", with: task.title
        fill_in "#{I18n.t('views.tasks.description')}", with: task.description
        fill_in "#{I18n.t('views.tasks.start_time')}", with: task.start_time
        fill_in "#{I18n.t('views.tasks.end_time')}", with: task.end_time
        click_button "#{I18n.t('views.create_task')}"
      end

      expect(task_ordered).to eq(["task3", "task2", "task1"])
    end
  end
end

