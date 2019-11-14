require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#title' do
    # Through FactoryBot create data / subject set up with task
    subject(:task) { create(:task) }  
    
    context "when title given" do
      it { is_expected.to be_valid }
    end

    context "when title is nil" do
      # recover origin task
      subject(:task) { Task.new }
      it { is_expected.to_not be_valid }
    end
  end
end
