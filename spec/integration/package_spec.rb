require 'swagger_helper'

describe 'Packages API' do
  path '/packages' do
    get 'Retrieves all packages' do
      tags 'Packages'
      produces 'application/json'
      response '200', 'packages found' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   user_id: { type: :integer },
                   title: { type: :string },
                   description: { type: :string },
                   destination: { type: :string },
                   photo: { type: :array, items: { type: :string } },
                   flight: { type: :boolean },
                   bus: { type: :boolean },
                   price: { type: :integer },
                   promotion: { type: :integer },
                   accomodation: { type: :string }
                 },
                 required: %w[id user_id title description destination photo flight bus accomodation
                              price promotion]
               }

        run_test!
      end
    end
  end
end

describe 'Packages API' do
  post 'Creates a package' do
    path '/packages' do
      tags 'Packages'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :package, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string }, description: { type: :string }, destination: { type: :string },
          photo: { type: :array, items: { type: :string } }, flight: { type: :boolean }, bus: { type: :boolean },
          price: { type: :integer }, promotion: { type: :integer }, accomodation: { type: :string },
          user_id: { type: :integer }
        },
        required: %w[title description destination photo flight bus price promotion accomodation user_id]
      }
      response '200', 'created' do
        schema type: :object,
               properties: { message: { type: :string, example: 'Package created successfully' } },
               required: ['message']

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: { error: { type: :string, example: 'Unable to create package' } },
               required: ['error']

        run_test!
      end
    end
  end
end
describe 'Packages API' do
  delete 'deletes a package' do
    path '/package' do
      tags 'Packages'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :package, in: :body, schema: {
        type: :object,
        properties: {
          id: { type: :integer }
        },
        required: ['id']
      }
      response '200', 'created' do
        schema type: :object,
               properties: {
                 message: { type: :string, example: 'Package removed successfully' }
               },
               required: ['message']

        run_test!
      end

      response '422', 'unprocessable entity' do
        schema type: :object,
               properties: {
                 error: { type: :string, example: "Sorry, coulnd't remove package" }
               },
               required: ['error']

        run_test!
      end
    end
  end
end
