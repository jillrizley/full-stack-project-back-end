class ShowsUsersController < ApplicationController
  before_action :set_shows_user, only: [:show, :update, :destroy]

  # GET /shows_users
  def index
    @shows_users = ShowsUsers.all

    render json: @shows_users
  end

  # GET /shows_users/1
  def show
    render json: @shows_user
  end

  # POST /shows_users
  def create
    @shows_user = ShowsUsers.new(shows_user_params)

    if @shows_user.save
      render json: @shows_user, status: :created, location: @shows_user
    else
      render json: @shows_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shows_users/1
  def update
    if @shows_user.update(shows_user_params)
      render json: @shows_user
    else
      render json: @shows_user.errors, status: :unprocessable_entity
    end
  end

  def markattended
    if (current_user)
      record = ShowsUser.where('user_id = ? and show_id = ?', current_user.id, params[:show_id])
      record.first.attended = true
      record.first.save
      render json: record
    else
      head :unauthorized
      end
    end

  # DELETE /shows_users/1
  def destroy
    @shows_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shows_user
      @shows_user = ShowsUsers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shows_user_params
      params.require(:shows_user).permit(:user_id, :show_id)
    end
end
