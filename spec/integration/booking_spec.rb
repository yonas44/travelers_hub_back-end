require 'swagger_helper'

describe 'Bookings API' do
  path '/bookings' do
    get 'Retrieves all bookings' do
      tags 'Bookings'
      produces 'application/json'
      response '200', 'bookings found' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   user_id: { type: :integer },
                   package: { type: :object, items: { type: :string } },
                   start_time: { type: :string, format: :datetime },
                   end_time: { type: :string, format: :datetime }
                 },
                 required: %w[id user_id start_time end_time]
               }

        run_test!
      end
    end
  end
end

describe 'Bookings API' do
  post 'Creates a booking' do
    path '/bookings' do
      tags 'Bookings'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :booking, in: :body, schema: {
        type: :object,
        properties: {
          package_id: { type: :integer },
          start_time: { type: :date },
          end_time: { type: :date }
        },
        required: %w[package_id start_time end_time]
      }
      response '200', 'created' do
        schema type: :object,
               properties: {
                 message: { type: :string }
               },
               required: ['message']

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               },
               required: ['error']

        run_test!
      end
    end
  end
end

describe 'Bookings API' do
  delete 'deletes a booking' do
    path '/booking' do
      tags 'Bookings'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :booking, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer }
        },
        required: ['id']
      }
      response '200', 'created' do
        schema type: :object,
               properties: {
                 message: { type: :string }
               },
               required: ['message']

        let(:expected_response) { { message: 'booking removed successfully' } }

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               },
               required: ['error']

        let(:expected_response) { { message: "Sorry, coulnd't remove booking" } }

        run_test!
      end
    end
  end
end
