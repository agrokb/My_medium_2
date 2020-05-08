class PagesController < ApplicationController

  def index
   @stories = Story.publish_stories
  end
  def show
  end
  def user
  end
end
