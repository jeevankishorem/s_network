require 'spec_helper'

describe "Blog" do
 it "Blog has a valid factory" do
    FactoryGirl.create(:blog).should be_valid
  end
 it "Blog is invalid without a user" do 
	FactoryGirl.build(:blog, user_id: nil).should_not be_valid
  end
end