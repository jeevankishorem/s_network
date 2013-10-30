require 'spec_helper'

describe "Blog" do
 it "has a valid factory" do
    FactoryGirl.create(:discussion).should be_valid 
  end
 it "is invalid without a user" do 
	FactoryGirl.build(:discussion, user_id: nil).should_not be_valid
  end
 it "is invalid without a topic" do 
	FactoryGirl.build(:discussion, topic: nil).should_not be_valid
  end
 it "returns a contact's full name as a string" do
 	
end
end