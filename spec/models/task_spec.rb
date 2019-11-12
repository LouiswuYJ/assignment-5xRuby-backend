require 'rails_helper'

RSpec.describe Task, type: :model do
  #寫法一 subject(:task)
  describe '#title' do
    #要測的主體(subject)為task，用FactoryBot產出假資料
    subject(:task) { create(:task) }  
    
    context "when title given" do
      it { is_expected.to be_valid }
    end

    context "when title is nil" do
      #覆寫原來的task
      subject(:task) { Task.new }
      it { is_expected.to_not be_valid }
    end
  end

  #寫法二 subject{ task.title }
  describe '#title' do
    let(:task) { create(:task) }
    subject { task.title }
    it { is_expected.to eq 'sport' }

    it 'is valid' do
      expect(task).to be_valid
    end

    context "when title is nil" do
      let(:task) { Task.new }
      it "is invalid" do
        expect(task).to_not be_valid
      end
    end
  end
end
