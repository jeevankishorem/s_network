require 'spec_helper'

describe "Blog" do
 it "has a valid factory" do
    FactoryGirl.create(:blog).should be_valid 

  end


 it "is invalid without a user" do 
	FactoryGirl.build(:blog, user_id: nil).should_not be_valid
  end
 it "is invalid without a lastname" do 
	FactoryGirl.build(:blog, user_id: nil).should_not be_valid
  end
 it "returns a contact's full name as a string" 
end
 # - See more at: http://everydayrails.com/2012/03/19/testing-series-rspec-models-factory-girl.html#sthash.pJhuGReq.dpuf