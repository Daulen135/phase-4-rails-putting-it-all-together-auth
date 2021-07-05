





class UsersController < ApplicationController

    def create
      user = User.create!
    end

private
def user_params
params.permit(:username, image_url, :bio, password, :password_confirmation)
render json:user, status: :created

end



end
