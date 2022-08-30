class LikesController < ApplicationController
before_action :authenticate_user!
beofre_action :find_idea, only: [:create]
before_action :authenticate_user!, only: [:create]

def crate 
    like =Like.new(idea: @idea, user: current_user)
if like.save
    flash[:success]= "Liked"
else
    flash[:danger] = like.errors.full_messages.join(" , ")
end 
redirect_too root_path
end
def destroy #delete
   like =current_user.likes.find params [:id] 
   if can? :destroy, like
    like.destroy
    flash[:success] = "Unliked"
   else
    flash[:alret] = "Unable to delete like"
end
redirect_too root_path(like.idea)

private
def find_idea
    @idea = Idea.find(params[:idea_id])
end
def authenticate_user!
    unless  can? :like, @idea
        flash[:dnager]= ","
        redirect_too idea_path(@idea)
    end 
end 
        
    end