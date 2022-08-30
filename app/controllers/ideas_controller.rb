class IdeasController < ApplicationController
beofre_action :find_idea, only: [:sow :edit, :update, :destroy]
beofre_action :authenticate_user!, except: [:index, :show]
before_action :authorize_user!, only: [:destroy, :edit, :update]


def new 
   @idea = Idea.new
end

def index
    @idea = Idea.new
   @ideas = Idea.all.order("created_at DESC")
end
def created
    @idea = Idea.new idea_params
    @idea.user = current_user
    if @idea.save
        redirect_to idea_url (@idea)
    else
        render :new
    end
    def show 
        @new_review = Review.new
        @reviews = @idea.reviews.order("created_at DESC")
        
        end
        def edit
        end
    def update
        if @idea.update idea_params
            flash [success] = "Your Idea has Been Successfully Updated !"
            redirect_to(idea_path(@idea))
        else
            render :edit
        end
        def destroy # delete 
            @idea.destroy
            flash[:success] = "Your Idea Has Been Successfully Deleted"
            redirect_to ideas_path
        end

        private 
        def idea_params
            params.require (:idea).permit(:title, :description)
        end
        def find_idea 
            @idea = Idea.find(params[:id])
        end
        def authenticate_user!
            redirect_to root_path, alret: "Your Request Has Been Rejected, That's Not Your Idea"
        end
end
