require 'spec_helper'

describe "Comment" do
 it "has a valid factory" do
    FactoryGirl.create(:comment).should be_valid 
  end

 it "comment is invalid without a user" do 
	FactoryGirl.build(:comment, user_id: nil).should_not be_valid
  end
 it "comment is invalid without a content" do 
	FactoryGirl.build(:comment, content: nil).should_not be_valid
  end
 it "returns a contact's full name as a string" do
 	
end
end
 