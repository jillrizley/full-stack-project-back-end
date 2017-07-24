class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :update, :destroy]

  # GET /shows
  def index
    @shows = Show.all

    render json: @shows
  end

  # GET /shows/1
  def show
    render json: @show
  end

  # POST /shows
  def create
    @show = Show.new(show_params)

    if @show.save
      render json: @show, status: :created, location: @show
    else
      render json: @show.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shows/1
  def update
   @show = Show.find(params[:id])

     if @show.update(show_params)
       head :no_content
     else
       render json: @show.errors, status: :unprocessable_entity
     end
  end

  # DELETE /shows/1
  def destroy
    @show.destroy

    head :no_content
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_show
      @show = Show.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def show_params
      params.require(:show).permit(:artist, :date, :start_time, :end_time)
    end
end
