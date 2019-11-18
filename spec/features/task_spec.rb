require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  feature 'Task ordered desc by create_at' do
    # '!' means still available even did't call in scenario block
    let!(:task1) { create(:task, title: 'task1', created_at: Time.zone.now) }
    let!(:task2) { create(:task, title: 'task2', created_at: Time.zone.now - 1.day) }
    let!(:task3) { create(:task, title: 'task3', created_at: Time.zone.now + 1.day) }
    let(:expect_order) { %w[task3 task1 task2] }

    before { visit root_path }

    scenario 'should order by created_at desc' do
      result = all('ul li .title').map(&:text)
      expect(result).to eq(expect_order)
    end
  end
end

