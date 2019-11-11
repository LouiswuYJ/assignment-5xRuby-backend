require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "CRUD" do
    describe "#new" do
      let(:task) { Task.new } 

      it "Default of status and priority must be 'pending' and 'low' when New a Task" do
        expect(task.status).to eq "pending"
        expect(task.priority).to eq "low"
      end
    end  

    describe "#create" do
      it "Create a Task with title, description, start_time, tag_list" do
        task = create(:task)

        expect(task.title).to eq "sport"
        expect(task.description).to eq "badminton"
        expect(task.start_time).to eq "2019-11-11 16:30:08 +0800"
        expect(task.end_time).to eq "2019-11-12 16:30:08 +0800"
        expect(task.tag_list).to eq "aaa, bbb, ccc"
      end
    end

    describe "#update" do
      it "Upadate Task" do
        task = create(:task)
        task.update(title: "read")

        expect(task.title).to eq "read"
      end
    end
  end

  describe "Task validation: must have title, description, " do
    it "is invalid without Task title" do
      task = Task.new(title: nil)
      task.valid?

      expect(task).to_not be_valid
      expect(task.errors[:title]).to include("can't be blank") 
    end

    it "is invalid without Task description" do
      task = Task.new(description: nil)
      task.valid?

      expect(task).to_not be_valid
      expect(task.errors[:description]).to include("can't be blank") 
    end

    it "is invalid without Task start_time" do
      task = Task.new(start_time: nil)
      task.valid?

      expect(task).to_not be_valid
      expect(task.errors[:start_time]).to include("can't be blank") 
    end

    it "is invalid without Task end_time" do
      task = Task.new(end_time: nil)
      task.valid?

      expect(task).to_not be_valid
      expect(task.errors[:end_time]).to include("can't be blank") 
    end
  end
end
