class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end
  
  def create
    @weapon = Weapon.create(weapon_params)
    redirect_to weapons_path
  end

  def destroy
    @weapon.destroy
  end

  def show
    @weapon
  end
  
  private
  
  def weapon_params
    params.require(:weapon).permit(:name, :description, :power_base, :level)
  end
end
