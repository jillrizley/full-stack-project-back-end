class UserShowsController < ProtectedController
  before_action :set_user_show, only: [:show, :update, :destroy]

  # GET /user_shows
  def index
    @user_shows = current_user.user_shows
    render json: @user_shows
  end

  # GET /user_shows/1
  def show
    render json: @user_show
  end

  # POST /user_shows
  def create
    @user_show = current_user.user.build(user_show_params)

    if @user_show.save
      render json: @user_show, status: :created, location: @user_show
    else
      render json: @user_show.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_shows/1
  def update
    @user_show = current_user.find(params[:id])

    if @user_show.update(user_show_params)
      head :no_content
    else
      render json: @user_show.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_shows/1
  def destroy
    @user_show.destroy

    head :no_content
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user_show
      @user_show = current_user.user_shows.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_show_params
      params.require(:user_show).permit(:user_id, :shows_id)
    end
end
