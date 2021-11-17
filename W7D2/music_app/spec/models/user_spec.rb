require 'rails_helper'
require 'shoulda/matchers'

# RSpec.describe User, type: :model do
#   it { should validate_presence_of(:email) }

describe User do
  describe "validation" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6)}
  end

  describe "class methods" do 

    describe "::find_by_credentials" do
      it "should return user by crendentials" do
        user = User.create(email: "hunter14@gmail.com", password: "password")
        expect(User.find_by_credentials("hunter14@gmail.com", "password")).to eq(user)
      end
    end

  end

  describe "instance methods" do 

    describe "#is_password?" do
      user = User.create(email: "hunter16@gmail.com", password: "password")
      it "should return true if password is correct" do 
        expect(user.is_password?("password")).to be (true)
      end
      it "should return false if password is incorrect" do 
        expect(user.is_password?("pass")).to be (false)
      end
    end

    describe "#reset_session_token" do
      
    end


  end


end
