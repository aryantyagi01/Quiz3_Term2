class JoinsController < ApplicationController

    before_action :authenticate_user!
    before_action :find_idea, only: [ :create ]
    before_action :authorize_user!, only: [ :create ]


    def create
        join = Join.new(idea: @idea, user: current_user)
        if join.save
          flash[:success] = "Joined Idea"
        else
          flash[:danger] = join.errors.full_messages.join(", ")
        end
        redirect_to root_path
      end
      def destroy #delete
        join = current_user.joins.find params[:id]
        if can? :destroy, join
          join.destroy
          flash[:success] = "You Left the Idea "
        else
          flash[:alert] = "You are unable to remove join"
        end
        redirect_to root_path(join.idea)
      end
    
      private
      def find_idea
        @idea = Idea.find(params[:idea_id])
      end
    
      def authorize_user!
        unless can? :join, @idea
          flash[:danger] = ","
          redirect_to idea_path(@idea)
        end
   end

end
