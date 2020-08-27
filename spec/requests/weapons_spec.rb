require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    it "returns success status" do
      get "/weapons"
      expect(response).to have_http_status(200)
    end
    it "returns weapons attributes correctly" do
      weapons = create_list(:weapon, 2) #Método disponível no FactoryBot para construção, nesse caso, de usuários
      get "/weapons"
      weapons.each do |weapon|
        expect(response.body).to include(weapon.weapon_title)
      end
    end
  end

  describe "POST /weapons" do
    it "With correct attributes an weapon is created" do
      weapon_attributes = FactoryBot.attributes_for(:weapon)
      post "/weapons", params: { weapon: weapon_attributes }
      expect(Weapon.last).to have_attributes(weapon_attributes)
    end
    it "With incorrect attributes an weapons isn't created" do
      expect{
        post "/weapons", params: { weapon: {name:'', description:'', power_base:'', power_step:'', level:''}}
      }.to_not change(Weapon, :count)
    end
  end

  describe "DELETE /weapons" do
    it "With correct id an weapon it's deleted successfully" do
      
    end
  end

  describe "SHOW /weapons" do
    it "returns weapons attributes correctly" do
      weapons = create_list(:weapon, 2) #Método disponível no FactoryBot para construção, nesse caso, de usuários
      get "/weapons/"
      weapons.each do |weapon|
        expect(response.body).to include(
          weapon.name, 
          weapon.description, 
          weapon.power_base.to_s, 
          weapon.power_step.to_s,
          weapon.level.to_s
        )
      end
    end
  end
end
