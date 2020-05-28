class PagesController < ApplicationController
  before_action :find_story, only: [:show]
  def index
    @stories = Story.publish_stories
  end
  def show
    @comment = @story.comments.new
    @comments = @story.comments.order(id: :desc)
  end
  
  def user
    @users = User.where("username":params[:username]).includes(:stories)
  end

  private
  def find_story
    @story = Story.friendly.find(params[:story_id])
  end
end
