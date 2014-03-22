require "spec_helper"

describe User do
  subject { user }

  let(:user) { FactoryGirl.build(:user) }

  it { should be_valid }

  describe "#has_lastfm?" do
    subject { user.has_lastfm? }

    context "when user has lastfm" do
      let(:user) { FactoryGirl.build(:user_with_lastfm) }
      it { should be_true }
    end

    context "when user doesn't have lastfm" do
      it { should be_false }
    end
  end

  describe "#lastfm" do
    subject { user.lastfm }

    context "when user has lastfm" do
      let(:user) { FactoryGirl.build(:user_with_lastfm) }

      it { should be_kind_of(Lastfm) }
    end

    context "when user doesn't have lastfm" do
      it { should be_nil }
    end
  end
end
