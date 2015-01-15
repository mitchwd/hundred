class PagesController < ApplicationController
  def index
    @latest_stories = Story.order(created_at: :desc).limit(5)
  end
end
