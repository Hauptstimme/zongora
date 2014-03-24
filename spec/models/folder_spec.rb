require 'spec_helper'

describe Folder do
  subject { folder }

  let(:folder) { FactoryGirl.build(:folder) }

  it { should be_valid }

  describe "validations" do
    describe "without name" do
      let(:folder) { FactoryGirl.build(:folder, name: "") }

      it { should_not be_valid }
    end
  end

  describe "scopes" do
    describe ".root" do
      subject { Folder.root }

      let!(:orphan_folders) { FactoryGirl.create_list(:folder, 2) }
      let!(:folders) { FactoryGirl.create_list(:folder, 2, parent_folder: orphan_folders.first) }

      it { should eq(orphan_folders) }
    end
  end
end
