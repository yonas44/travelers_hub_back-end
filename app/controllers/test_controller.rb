class TestController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { message: 'You are logged in.' }, status: :ok
  end
end
