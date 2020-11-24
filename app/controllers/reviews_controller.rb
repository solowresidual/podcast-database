class ReviewsController < ApplicationController
  def create
    @user = current_user
    @review = Review.new(review_params)
    @episode = Episode.find(params([:episode_id]))

    @review.user = @user
    @review.episode = @episode

    if @review.save
      redirect_to episode_path(@episode)
    else
      render 'episodes/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :tag)
  end
end
