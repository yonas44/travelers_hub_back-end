class PackagesController < ApplicationController

   before_action :authenticate_user!

  respond_to :json
  
  def create
    package = Package.new(package_params)

    if package.save
      render json: { message: 'Package created successfully' }, status: :created
    else
      render json: { error: 'Unable to create package' }, status: :unprocessable_entity
    end
  end

    def destroy
      package = package.find(params[:id])
      if package.destroy
        render json: { message: 'Package removed sucessfully' }, status: :ok
      else
        render json: { message: "Sorry, coulnd't remove package" }, status: :unprocessable_entity
      end
    end
  
    def package_params
      params.require(:package)
        .permit(:title, :destination, :description, :flight, :price, :bus, :accomodation, :promotion, photo: [])
        .with_defaults(user_id: current_user.id)
    end
    
  def index
    @packages = Package.includes(:user)
    render json: @packages
  end

  def show
    @package = Package.includes(:user).find(params[:id])
    render json: @package
  end
end
