class PagesController < ApplicationController
  before_action :find_story, only: [:show]
  def index
    @stories = Story.publish_stories
  end
  def show
    @story = Story.friendly.find(params[:story_id])
  end
  def user
  end

  private
  def find_story
  end
end
