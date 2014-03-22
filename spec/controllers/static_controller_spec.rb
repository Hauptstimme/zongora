require "spec_helper"

describe StaticController do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in user
  end

  describe "GET index" do
    subject { get :index }

    it { should be_successful }
  end
end
