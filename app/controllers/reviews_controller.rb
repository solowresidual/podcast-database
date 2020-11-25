class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(user: current_user)
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    @episode = Episode.find(params[:episode_id])
    @review.user = @user
    @review.episode = @episode

    if @review.save
      redirect_to episode_path(@episode)
    else
      render 'episodes/show'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review.episode = @episode
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render 'edit'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :tag)
  end
end
