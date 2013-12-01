require 'spec_helper'

describe RobotsController do

  describe "GET 'index'" do
    it "returns 200 success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET 'show'" do
    let(:user) { create(:user) }
    let(:robot) { create(:robot, user: user)}

    it "returns 200 success when a robot exists"  do
      get :show, id: robot.id
      expect(response).to be_success
    end
  end

  describe "GET 'new'" do
     before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
    end
    context "when a user is signed in" do
      let(:user) { create(:user) }
      let(:robot) { create(:robot, user: user)}

      before do
        sign_in user
      end

      it "allows them to access the new robot page" do
        get :new
        expect(response).to be_success
      end
    end
  end


  describe "POST 'create' " do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
    end

    context "when a user is signed in " do
      let(:user) { create(:user) }
      let(:robot) { attributes_for(:robot, user: user) }

      before do
        sign_in user
      end

      it "allows them to build a new robot" do
        expect { post :create, robot: robot }
        .to change { Robot.count}.by +1
      end
    end
  end

  describe "PUT 'update' " do
   before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:github]
    end

    context "when a user is signed in" do
      let(:user) { create(:user) }
      let(:robot) { create(:robot, user: user) }

      before do
        sign_in user
      end

      it "send the user back to show page" do
        put :update, id: robot.id, robot: { name: "Ryan Atwood" }
        expect(response).to redirect_to robot_path(robot)
      end

      it "changes the name of robot" do
        put :update, id: robot.id, robot: { name: "Ryan Atwood" }
        robot.reload
        expect(robot.name).to eq "Ryan Atwood"
      end

      it "sends the user back to the edit page" do
        put :update, id: robot.id, robot: { description: nil }
        expect(response).to redirect_to edit_robot_path(robot)
      end
    end
  end
end