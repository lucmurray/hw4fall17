class UsersController < ApplicationController
    
#   def user_params
#     params.require(:user).permit(:user_id, :email, :session_token)
#   end

#   def show
#     user_id = params[:user_id] # retrieve user ID from URI route
#     @user = User.find(user_id) # look up movie by unique ID
#     # will render app/views/users/show.<extension> by default
#   end

#   def index
#     @users = User.all
#   end

#   def new
#     redirect_to new_user_path
#   end

#   def create
#     @user = User.create!(user_params)
#     flash[:notice] = "#{@user.user_id} was successfully created."
#     redirect_to movies_path
#   end

#   def edit
#     @user = User.find params[:user_id]
#   end

#   def update
#     @user = User.find params[:user_id]
#     @user.update_attributes!(user_params)
#     flash[:notice] = "#{@user.user_id} was successfully updated."
#     redirect_to user_path(@user)
#   end

#   def destroy
#     @movie = User.find(params[:user_id])
#     @movie.destroy
#     flash[:notice] = "User '#{@user.user_id}' deleted."
#     redirect_to users_path
#   end
   
    
end