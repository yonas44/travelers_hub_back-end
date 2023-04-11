require 'rails_helper'

RSpec.describe 'User Authentication', type: :request do
  describe 'POST /login' do
    before :each do
      User.destroy_all
    end

    context 'when user is not registered' do
      it 'returns a 401 status code' do
        post '/users/sign_in', params: { user: { username: 'johndoe', password: 'password' } }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns a failure message' do
        post '/users/sign_in', params: { user: { username: 'johndoe', password: 'password' } }
        expect(response.body).to match(/errors/)
      end
    end

    context 'when user is registered' do
      it 'returns a 200 status code' do
        User.find_or_create_by(username: 'johndoe') do |u|
          u.password = 'password'
        end

        post '/users/sign_in', params: { user: { username: 'johndoe', password: 'password' } }, as: :json
        expect(response).to have_http_status(:ok)
      end

      it 'returns a success message' do
        User.find_or_create_by(username: 'johndoe') do |u|
          u.password = 'password'
        end

        post '/users/sign_in', params: { user: { username: 'johndoe', password: 'password' } }, as: :json
        expect(response.body).to match(/message/)
      end
    end
  end

  describe 'POST /signup' do
    before :each do
      User.destroy_all
    end

    context 'when user is not registered' do
      it 'returns a 200 status code' do
        post '/users', params: { user: { username: 'johndoe', password: 'password' } }, as: :json
        expect(response).to have_http_status(:ok)
      end

      it 'returns a success message' do
        post '/users', params: { user: { username: 'johndoe', password: 'password' } }, as: :json
        expect(response.body).to match(/message/)
      end
    end

    context 'when user is registered' do
      it 'returns a 422 status code' do
        User.find_or_create_by(username: 'johndoe') do |u|
          u.password = 'password'
        end

        post '/users', params: { user: { username: 'johndoe', password: 'password' } }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns a failure message' do
        User.find_or_create_by(username: 'johndoe') do |u|
          u.password = 'password'
        end

        post '/users', params: { user: { username: 'johndoe', password: 'password' } }
        expect(response.body).to match(/errors/)
      end
    end
  end
end
