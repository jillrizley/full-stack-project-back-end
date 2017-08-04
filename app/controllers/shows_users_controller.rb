class ShowsUsersController < ProtectedController
  before_action :set_shows_user, only: [:show, :update, :destroy]
  # GET /shows_users
  def index
 @shows_users = current_user.shows


    # shows_users = current_user.shows_users
    # shows = current_user.shows
    # @shows_users = []
    # shows.each do |show|
    #   attended = shows_users.find_by(show_id: show.id).attended
    #   show = show.as_json(:root => true)
    #   show.merge!(attended: attended)
    #   @shows_users << show
    # end
    render json: @shows_users
  end

  # GET /shows_users/1
  def show
    render json: @shows_user
  end

  # POST /shows_users
  def create
    @shows_user = current_user.shows_users.build(shows_user_params)

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


# attended update
# update to true boolean statement
# remove remove show button
# change attended to color or Attended!
# not be able to click the button again

  # def markattended
  #   if (current_user)
  #     record = ShowsUser.where('user_id = ? and show_id = ?', current_user.id, params[:show_id])
  #     record.first.attended = true


  # DELETE /shows_users/1
  def destroy
    @shows_user.destroy
    # if @shows_user.destroy

      # head :no_content
    # else
    #   render json: @shows_user.errors, status: :unprocessable_entity
    # end
  end

  #delete show from shows_user upon click


  private

  def set_shows_user
    @shows_user = current_user.shows_users.find(params[:id])
  end

  def shows_user_params
    params.require(:shows_user).permit(:text, :show_id, :user_id)
  end

  private :set_shows_user, :shows_user_params
end
