require 'swagger_helper'

describe 'Users API' do
  path '/users' do
    post 'registers a new user' do
      tags 'Users'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          password: { type: :string }
        },
        required: %w[name password]
      }
      response '200', 'created a user' do
        schema type: :object,
               properties: {
                 message: { type: :string, example: 'Signed up sucessfully.' }
               },
               required: ['message']

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: {
                 error: { type: :string, example: 'Register failed!' }
               },
               required: ['error']

        run_test!
      end
    end
  end
end

describe 'Users API' do
  path '/users/sign_in' do
    post 'creates a new user session' do
      tags 'Users'
      consumes 'application/json'
      produces 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          password: { type: :string }
        },
        required: %w[name password]
      }
      response '200', 'session created' do
        schema type: :object,
               properties: {
                 message: { type: :string, example: 'You are logged in successfully' }
               },
               required: ['message']

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: {
                 error: { type: :string, example: 'Log in failed' }
               },
               required: ['error']

        run_test!
      end
    end
  end
end

describe 'Users API' do
  path '/users/sign_out' do
    delete 'destroys a user session' do
      tags 'Users'
      produces 'application/json'
      response '200', 'session destroyed' do
        schema type: :object,
               properties: {
                 message: { type: :string, example: 'You are logged out successfully' }
               },
               required: ['message']

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: {
                 error: { type: :string, example: 'Logout failed' }
               },
               required: ['error']

        run_test!
      end
    end
  end
end
