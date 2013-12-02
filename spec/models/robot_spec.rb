require 'spec_helper'

describe Robot do
  context "when validating" do
    it "should create a new instance" do
      robot = build(:robot)
      expect(robot).to be_valid
    end

    it "requires a robot a have a name" do
      robot = build(:robot, name: nil)
      expect(robot).to_not be_valid
    end

    it "requires a robot have a description" do
      robot = build(:robot, description: nil)
      expect(robot).to_not be_valid
    end

    it "does not require a robot have an avatar" do
      robot = build(:robot, avatar: nil)
      expect(robot).to be_valid
    end

    it "does not require a robot have an link to the code" do
      robot = build(:robot, code_url: nil)
      expect(robot).to be_valid
    end
  end
  describe "#creator_name" do
    it "returns the name of the user who created the Robot" do
      user = create(:user, name: "Lady Zahra")
      robot = build(:robot, user: user)
      expect(robot.creator_name).to eq "Lady Zahra"
    end
  end
end