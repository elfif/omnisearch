class SearchEnginesController < ApplicationController
  # GET /search_engines
  # GET /search_engines.json
  def index
    @search_engines = SearchEngine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_engines }
    end
  end

  # GET /search_engines/1
  # GET /search_engines/1.json
  def show
    @search_engine = SearchEngine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_engine }
    end
  end

  # GET /search_engines/new
  # GET /search_engines/new.json
  def new
    @revision = Revision.find(params[:revision_id])
    @search_engine = @revision.search_engines.new

    respond_to do |format|
      format.html
    end
  end

  # GET /search_engines/1/edit
  def edit
    @search_engine = SearchEngine.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  # POST /search_engines
  # POST /search_engines.json
  def create
    @revision = Revision.find(params[:revision_id])
    @search_engine = @revision.search_engines.new(params[:search_engine])
    #@search_engine.icon = params[:search_engine][:icon]

    respond_to do |format|
      if @search_engine.save
        format.html { render 'revisions/show' , notice: 'Search engine was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @search_engine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_engines/1
  # PUT /search_engines/1.json
  def update
    @search_engine = SearchEngine.find(params[:id])

    respond_to do |format|
      if @search_engine.update_attributes(params[:search_engine])
        format.html { redirect_to @search_engine, notice: 'Search engine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_engine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_engines/1
  # DELETE /search_engines/1.json
  def destroy
    @revision = Revision.find(params[:revision_id])
    @search_engine = SearchEngine.find(params[:id])
    @search_engine.destroy

    respond_to do |format|
      format.js { render action: "index" , notice: 'Search engine was successfully created.' }
    end
  end
end
