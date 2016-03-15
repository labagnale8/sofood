class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update]

  def show
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def update
    authorize @profile
    if @profile.update(profile_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def profile_params
   params.require(:profile).permit(:first_name, :last_name, :phone_number, :gendre, :photo, :photo_cache)
  end

  def find_profile
    @profile = current_user.profile
  end
end

