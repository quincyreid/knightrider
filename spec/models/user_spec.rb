require 'spec_helper'

describe User do

  describe ".find_or_create_github_auth" do

    let(:auth_hash) { OmniAuth.config.mock_auth[:github] }

    it "creates a user with Github information" do
      user = User.find_or_create_github_auth(auth_hash)
      expect(user).to be_persisted
      expect(user.email).to eq(auth_hash[:info][:email])
      expect(user.name).to eq(auth_hash[:info][:name])
    end

    # it "finds a matching user" do
    #   user = User.create(email: "ella@lordemusic.com")
    #   expect(User.find_or_create_github_auth(auth_hash)).to eq(user)
    # end

    it "updates name with new info" do
      User.create(email: "ella@lordemusic.com", name:"Katy")
      expect(User.find_or_create_github_auth(auth_hash).name).to_not eq("Katy")
    end

    it "updates avatar with new info" do
      User.create(email: "ella@lordemusic.com", avatar:"http://placekitten.com/400")
      expect(User.find_or_create_github_auth(auth_hash).name).to_not eq("http://placekitten.com/400")
    end

  end

end
