class TwitterDbsController < ApplicationController
  before_action :set_twitter, only: [:show, :edit, :update, :destroy]

  def index
    @twitters = TwitterDb.all
  end
  
  def new
    @twitter = TwitterDb.new
  end

  def edit
  end

  def show
  end

  def create
    @twitter =  TwitterDb.new(twitter_params)
    if @twitter.save
      redirect_to twitter_dbs_path
    else
      render 'new'
    end
  end

  def update
    if @twitter.update(twitter_params)
      redirect_to twitter_dbs_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @twitter.destroy
    redirect_to twitter_dbs_path
  end
  

  private
  def twitter_params
    params.require(:twitter_db).permit(:content)
  end
  
  def set_twitter
    @twitter = TwitterDb.find(params[:id])
  end
end
