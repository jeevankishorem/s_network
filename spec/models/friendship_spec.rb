require 'spec_helper'

describe Friendship do

  let(:sender) { FactoryGirl.create(:user) }
  let(:friend) { FactoryGirl.create(:user) }
  let(:friendships) { sender.frienships.build(followed_id: friend.id) }

  subject { friendship }

  it { should be_valid }
end
describe "sender methods" do
    it { should respond_to(:sender) }
    it { should respond_to(:friend) }
    its(:sender) { should eq sender }
    its(:friend) { should eq friend }
end
describe "when friend id is not present" do
    before { friendship.friend_id = nil }
    it { should_not be_valid }
end

describe "when follower id is not present" do
    before { friendship.sender_id = nil }
    it { should_not be_valid }
end