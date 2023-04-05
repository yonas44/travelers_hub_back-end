class PackagesController < ApplicationController
  def index
    @packages = Package.includes(:user)
    render json: @packages
  end

  def show
    @package = Package.includes(:user).find(params[:id])
    render json: @package
  end
end
