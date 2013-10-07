class ResourcesAndLinksController < ApplicationController
  # GET /resources_and_links
  # GET /resources_and_links.json
  def index
    @resources_and_links = ResourcesAndLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resources_and_links }
    end
  end

  # GET /resources_and_links/1
  # GET /resources_and_links/1.json
  def show
    @resources_and_link = ResourcesAndLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resources_and_link }
    end
  end

  # GET /resources_and_links/new
  # GET /resources_and_links/new.json
  def new
    @resources_and_link = ResourcesAndLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resources_and_link }
    end
  end

  # GET /resources_and_links/1/edit
  def edit
    @resources_and_link = ResourcesAndLink.find(params[:id])
  end

  # POST /resources_and_links
  # POST /resources_and_links.json
  def create
    @resources_and_link = ResourcesAndLink.new(params[:resources_and_link])

    respond_to do |format|
      if @resources_and_link.save
        format.html { redirect_to @resources_and_link, notice: 'Resources and link was successfully created.' }
        format.json { render json: @resources_and_link, status: :created, location: @resources_and_link }
      else
        format.html { render action: "new" }
        format.json { render json: @resources_and_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resources_and_links/1
  # PUT /resources_and_links/1.json
  def update
    @resources_and_link = ResourcesAndLink.find(params[:id])

    respond_to do |format|
      if @resources_and_link.update_attributes(params[:resources_and_link])
        format.html { redirect_to @resources_and_link, notice: 'Resources and link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resources_and_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources_and_links/1
  # DELETE /resources_and_links/1.json
  def destroy
    @resources_and_link = ResourcesAndLink.find(params[:id])
    @resources_and_link.destroy

    respond_to do |format|
      format.html { redirect_to resources_and_links_url }
      format.json { head :no_content }
    end
  end
end
