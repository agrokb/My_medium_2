class StoriesController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
    @story = current_user.stories.new
  end
  def create
    @story = current_user.stories.new(story_params)
    if @story.save
      redirect_to stories_path,notice:'投稿成功'
    else
      render :new
    end  
  end
  private
  def story_params
    params.require(:story).permit(:title, :content)
  end
end
