require 'rails_helper'

RSpec.describe Task, type: :model do

  describe "新增Task" do
    it "新增Task" do
      task = Task.new
      expect(task).to be_a Task
    end

    it "建立含資料的Task" do
      task = Task.create(title: "title", description: "description", start_time: "2019-11-10", tag_list: "aaa,bbb,ccc")
      expect(task.title).to eq "title"
      expect(task.start_time).to eq "2019-11-10"
      expect(task.end_time).to be nil
      expect(task.tag_list).to eq "aaa, bbb, ccc"
    end

    it "新增Task時的預設值:狀態為pending;優先順序為low" do
      task = Task.new
      expect(task.status).to eq "pending"
      expect(task.priority).to eq "low"
    end
  end  
end
