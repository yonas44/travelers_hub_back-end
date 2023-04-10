class Users::SessionsController < Devise::SessionsController
  respond_to :json

  protected

  def respond_with(_resource, _opts = {})
    log_in_success && return if current_user

    log_in_failure
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_in_success
    # set Access-Control-Expose-Headers to allow client to access the headers
    response.headers['Access-Control-Expose-Headers'] = '*'
    render json: { message: 'You are logged in successfully', resource: }, status: :ok
  end

  def log_in_failure
    render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
  end

  def log_out_success
    render json: { message: 'You are logged out.' }, status: :ok
  end

  def log_out_failure
    render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
  end
end
