class ProfileController < ApplicationController
  def index
  end

  def new
    @profile = Profile.new
  end

  def create 
    @profile = Profile.new(profile_params)
  end

  def update
     @profile = Profile.find(params[:id])
       if @profile.update_attributes(profile_params)
        flash[:success] = "changes have been made"
        redirect_to chef_path(@profile.id)
       else
        flash[:error] = "you are a failure and no one loves you"
        render :edit
       end
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  private

  def profile_params
      params.require(:profile).permit(:name, :avatar, :tagline, :website1, :website2, :website3, :facebook, :twitter, :bio, :pic1, :pic2, :pic3, :pic4, :pic5, :pic6)
  end
end
