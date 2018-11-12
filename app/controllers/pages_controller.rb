class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user

    @pet = current_user.pets.new(pet_params)

  end
end
