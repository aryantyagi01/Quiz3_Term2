class ReviewsController < ApplicationController
beofre_action :authenticate_user!
def create 
    @idea = Idea.find(params[:idea_id])
    @review = Review.new review_user
    @review.user = current_user
    if @review.save 
        redirect_to idea_path(@idea)
    else
        @reviews = @idea.reviews.order(created_at: :desc)
        render 'ideas/show'
    end



def destroy #delete
    @review = Review.find params[:id]
    if can? :curd, @review
        @review.destroy
        redirect_to root_path, alret: "Your Request Has Been Rejected, That's Not Your Idea"
    end 
    private 
    def review_params
        params.requier(:review).permit(:body, :rating)
end
end 
