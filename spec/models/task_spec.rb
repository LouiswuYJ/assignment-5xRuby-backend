require 'rails_helper'

RSpec.describe Task, type: :model do
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
end
