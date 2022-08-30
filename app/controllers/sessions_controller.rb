class SessionsController < ApplicationController

    def new 
end 


    def  create 
        user = User.find_by_email params [:email]
        if users&.authenticate(params[:password])
sessions[:users_id] = user.users_id
redirect_to root_path, notice: "Logged In"
        
        else 
            flash[:alert ] = "You Have Entered Wrong Email or Password"
            
        render :new 
        end 
    end 

    def destroy #delete 
        sessions[:user_id] = nil
        redirect_to root_path, notice : "Logged Out!"
            
        end   
        
            
        
end
