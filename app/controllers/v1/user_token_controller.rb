class V1::UserTokenController < Knock::AuthTokenController
  
  def create
    render json: {message: "hi"}
  end
end
