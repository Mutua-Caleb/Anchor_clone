class PodcastsController < ApplicationController
  before_action :find_podcast, only: [:show, :edit, :update, :delete, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @podcasts = Podcast.newest_first
  end

  def show
  end

  def new
    @podcast = Podcast.new
  end

  def create 
    @podcast = Podcast.new(podcast_params)
    #save the object 
    if @podcast.save 
      # if save succeeds, redirect to the index action 
      flash[:notice] = 'Podcast created successfully'
      redirect_to(podcasts_path)
    else
      render('new')
    end
  end

  def edit
  end

  def update
   #update the object 
   if @podcast.update(podcast_params)
    #if save succeeds, redirect to the show action
    flash[:notice] = 'Podcast updated successfully'
    redirect_to(podcast_path(@podcast))
   else 
    #if save fails, redisplay the form so user can fix the problems
    render('edit')
  end

  def delete 
  end

  def destroy
    @podcast.destroy 
    flash[:notice] = "Podcast #{@podcast.title} destroyed successfully"
  end

  private 
  
  def podcast_params
    params.require(:podcast).permit(:title, :description, :itunes, :string, :stitcher)
  end

  def find_podcast
    @podcast = Podcast.find(params[:id])
  end
end
