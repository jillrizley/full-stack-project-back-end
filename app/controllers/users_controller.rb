# frozen_string_literal: true
class UsersController < ProtectedController
  skip_before_action :authenticate, only: [:signup, :signin]

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out/1'
  def signout
    if current_user == User.find(params[:id])
      current_user.logout
      head :no_content
    else
      head :unauthorized
    end
  end

  # PATCH '/change-password/:id'
  def changepw
    if !current_user.authenticate(pw_creds[:old]) ||
       (current_user.password = pw_creds[:new]).blank? ||
       !current_user.save
      head :bad_request
    else
      head :no_content
    end
  end

  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  # GET '/my-shows'
  def getshows
    if (current_user)
      render json: current_user.shows
    else
      head :unauthorized
    end
  end

  # POST '/add-show'
  # def addshow
  #   if (current_user)
  #     @event = Show.find(params[:show_id])
  #     @current_user.shows.create(@event)
  #   else
  #     head :unauthorized
  #   end
  # end
  #
  # def removeshow
  #   if (current_user)
  #     @event = Show.find(params[:show_id])
  #     @current_user.shows.delete(@event)
  #   else
  #     head :unauthorized
  #   end
  # end

  def markattended
    if (current_user)
      record = ShowsUser.where("user_id = ? and show_id = ?", current_user.id, params[:show_id])
      record.first.attended = true
      record.first.save
      render json: record
    else
      head :unauthorized
    end
  end

  def update
    head :bad_request
  end

  private

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  private :user_creds, :pw_creds
end
