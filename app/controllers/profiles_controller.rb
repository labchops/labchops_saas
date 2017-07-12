class ProfilesController < ApplicationController

    def new
       # Form for each user to fill out their own profile.
       @user = User.find( params[:user_id] )
       #@profile = @user.build_profile  Causes the user to have to create a new Profile everytime...
       @profile = Profile.new
    end
    
    def create
       @user = User.find( params[:user_id] )
       @profile = @user.build_profile(profile_params)
        if @profile.save
            flash[:success] = "Profile Updated!"
           redirect_to user_path( params[:user_id] )
        else
            render action: :new
        end
    end

    def edit
        @user = User.find( params[:user_id] )
        @profile = @user.profile
    end

    private
        def profile_params
        params.require(:profile).permit(:first_name, :last_name, :subject_area, :phone_number, :contact_email, :description)
        end
end