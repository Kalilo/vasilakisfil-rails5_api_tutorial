class Api::V1::UsersController < Api::V1::BaseController
  def show
    user = User.find(params[:id])

    # render jsonapi: user, serializer: Api::V1::UserSerializer
    render json: user, serializer: Api::V1::UserSerializer
  end
end
