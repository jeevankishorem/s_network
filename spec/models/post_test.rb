require 'spec_helper'

describe "post" do
 it "has a valid factory" do
    FactoryGirl.create(:post).should be_valid
  end
 it "Post is invalid without a user" do 
	FactoryGirl.build(:post, user_id: nil).should_not be_valid
  end
   it "Post is invalid without a discussion" do 
	FactoryGirl.build(:post, discussion_id: nil).should_not be_valid
  end
 it "post is invalid without a content" do 
	FactoryGirl.build(:post, user_id: nil).should_not be_valid
  end
 it "returns a contact's full name as a string" do
 	
  end
end