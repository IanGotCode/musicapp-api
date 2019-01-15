# frozen_string_literal: true

class AudiosController < OpenReadController
  before_action :set_audio, only: %i[show, update, destroy]

  # GET /audios
  def index
    @audios = Audio.all

    render json: @audios
  end

  # GET /audios/1
  def show
    render json: Audio.find(params[:id])
  end

  # POST /audios
  def create
    @audio = Audio.new(audio_params)

    if @audio.save
      render json: @audio, status: :created, location: @audio
    else
      render json: @audio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /audios/1
  def update
    @audio = Audio.find params[:id]
    if @audio.update(audio_params)
      render json: @audio
    else
      render json: @audio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /audios/1
  def destroy
    @audio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio
      @audio = Audio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def audio_params
      params.require(:audio).permit(:title, :artist)
    end
end
