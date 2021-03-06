class TracksController < ApplicationController
  
  before_action :set_track, only: [:show, :edit, :update, :destroy]
  before_action :set_album

  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
  end

  # GET /tracks/new
  def new
    @track = current_user.tracks.build
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = current_user.tracks.build(track_params)
    respond_to do |format|
      if @track.save
        flash[:success] = 'Track was successfully created.'
        format.html { redirect_to @track}
        format.json { render :show, status: :created, location: @track }
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        flash[:success] = 'Track was successfully updated.'
        format.html { redirect_to @track }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end
    
    def set_album
      @albums = Album.all 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_params
      params.require(:track).permit(:title, :release, :description, :download, :embed, :album_id, :artist)
    end
end
