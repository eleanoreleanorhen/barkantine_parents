class BirthStoriesController < ApplicationController
  # GET /birth_stories
  # GET /birth_stories.json
  def index
    @birth_stories = BirthStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @birth_stories }
    end
  end

  # GET /birth_stories/1
  # GET /birth_stories/1.json
  def show
    @birth_story = BirthStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @birth_story }
    end
  end

  # GET /birth_stories/new
  # GET /birth_stories/new.json
  def new
    @birth_story = BirthStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @birth_story }
    end
  end

  # GET /birth_stories/1/edit
  def edit
    @birth_story = BirthStory.find(params[:id])
  end

  # POST /birth_stories
  # POST /birth_stories.json
  def create
    @birth_story = BirthStory.new(params[:birth_story])

    respond_to do |format|
      if @birth_story.save
        format.html { redirect_to @birth_story, notice: 'Birth story was successfully created.' }
        format.json { render json: @birth_story, status: :created, location: @birth_story }
      else
        format.html { render action: "new" }
        format.json { render json: @birth_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /birth_stories/1
  # PUT /birth_stories/1.json
  def update
    @birth_story = BirthStory.find(params[:id])

    respond_to do |format|
      if @birth_story.update_attributes(params[:birth_story])
        format.html { redirect_to @birth_story, notice: 'Birth story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @birth_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birth_stories/1
  # DELETE /birth_stories/1.json
  def destroy
    @birth_story = BirthStory.find(params[:id])
    @birth_story.destroy

    respond_to do |format|
      format.html { redirect_to birth_stories_url }
      format.json { head :no_content }
    end
  end
end
