class PackagesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  load_and_authorize_resource except: %i[index show]

  respond_to :json

  def index
    packages = Package.includes(:user)
    render json: packages
  end

  def show
    package = Package.includes(:user).find(params[:id])
    render json: package
  end

  def create
    package = Package.new(package_params)

    if package.save
      render json: { message: 'Package created successfully' }, status: :created
    else
      render json: { error: 'Unable to create package' }, status: :unprocessable_entity
    end
  end

  def destroy
    package = Package.find(params[:id])
    if package.destroy
      render json: { message: 'Package removed sucessfully' }, status: :ok
    else
      render json: { message: "Sorry, couldn't remove package" }, status: :unprocessable_entity
    end
  end

  private

  def package_params
    params.require(:package)
      .permit(:title, :destination, :description, :flight, :price, :bus, :accomodation, :promotion, photo: [])
      .with_defaults(user_id: current_user.id)
  end
end
