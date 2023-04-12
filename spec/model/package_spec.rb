require 'rails_helper'

RSpec.describe Package, type: :model do
  let(:user) { User.create(username: 'ifeanyi', password: 'password') }
  let(:bookings) { Booking.create(user:, package:, start_time: '20-12-2023', end_time: '20-07-2024') }

  let(:package) do
    Package.new(
      title: 'Package title',
      description: 'Package description',
      destination: 'Package destination',
      price: 50,
      accomodation: 'Package accomodation',
      promotion: 0,
      user:
    )
  end

  describe 'associations' do
    it 'belongs to a user' do
      expect(Package.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
    it 'has many bookings' do
      expect(Package.reflect_on_association(:bookings).macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    it 'is not valid without a title' do
      package.title = nil
      expect(package).not_to be_valid
    end
    it 'is an integer' do
      package.promotion = 0
      expect(package.promotion).to be_an_instance_of(Integer)
    end
  end
end
