class StoriesController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_story, only: [:show, :edit, :update, :destroy] # Must load before correct_author? is called.
  before_filter :correct_author?, only: [:edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.order(created_at: :desc)
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
    unless current_user == @story.user
      redirect_to root_url, :alert => "Access denied."
    end
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)
    @story.user = User.find(current_user)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:content)
    end

    def correct_author?
      unless current_user == @story.user
        redirect_to root_url, :error => "Access denied. You cannot alter someone else's story."
      end
    end

end
