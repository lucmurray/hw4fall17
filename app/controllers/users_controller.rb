class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email)
  end

#   def show
#     id = params[:id] # retrieve movie ID from URI route
#     @movie = Movie.find(id) # look up movie by unique ID
#     # will render app/views/movies/show.<extension> by default
#   end

#   def index
#     @movies = Movie.all
#   end

  def new
    # default: render 'new' template
  end

  def create
    # dummyUser = User.create!(user_params)
    # userNames = Array.new
    # User.all.each do |user|
    #   userNames.push(user[:user_id])
    # end
    # puts(userNames)
    # if (userNames.include?(dummyUser.user_id)) 
    #   flash[:notice] = "Sorry, this user-id is taken. Try again."
    # else
    #   @user = User.create!(user_params)
    #   flash[:notice] = "#{@user.user_id} was successfully created."
    # end
    @user = User.new(user_params)
    if (User.exists?(@user.user_id))
      flash[:notice] = "Sorry, this user-id is taken. Try again."
    else
      @user = User.create!(user_params)
      flash[:notice] = "#{@user.user_id} was successfully created."
    end
    
    redirect_to movies_path
  end

#   def edit
#     @movie = Movie.find params[:id]
#   end

#   def update
#     @movie = Movie.find params[:id]
#     @movie.update_attributes!(movie_params)
#     flash[:notice] = "#{@movie.title} was successfully updated."
#     redirect_to movie_path(@movie)
#   end

#   def destroy
#     @movie = Movie.find(params[:id])
#     @movie.destroy
#     flash[:notice] = "Movie '#{@movie.title}' deleted."
#     redirect_to movies_path
#   end

end
