class UserController < ApplicationController

def new 
    @user = User.new
end 
def create 
    @user =User.new user_params
    if @user.save
        sessison[:user_id] = @user.id 
        redirect_to root_path
    else 
        render :new 
    end 
end 



priavte 
def users_params 
    params.require(:user).permit(:first_name, :last_name, :email, :passowrd, :passowrd_confirmation)





end
