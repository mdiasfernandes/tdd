require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /Users" do
    it "returns success status" do
      get "/users"
      expect(response).to have_http_status(200)
    end
    it "the user's tittle will be present" do
      users = create_list(:user, 2) #Método disponível no FactoryBot para construção, nesse caso, de usuários
      get "/users"
      users.each do |user|
        expect(response.body).to include(user.title)
      end
    end
  end

  describe "POST /Users" do
    context "When it has valid parameters" do
      it "creates a user with the correct attributes" do
        user_attributes = FactoryBot.attributes_for(:user)
        post "/users", params: { user: user_attributes }
        expect(User.last).to have_attributes(user_attributes)
      end
    end

    context "When it has no valid parameters" do
      it "does not create user" do
        expect{
          post "/users", params: { user: {kind:'', name:'', level:''}}
        }.to_not change(User, :count)
      end
    end
  end
end