require 'rails_helper'

RSpec.describe Booking, type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:package) do
    Package.create(user:, title: 'Wanka Resort', destination: 'Madagascar',
                   description: 'Random place with nice views', photo: ['photo_here'],
                   flight: true, price: 3400, bus: false, accomodation: 'Hotel', promotion: 0)
  end
  let(:valid_attributes) do
    { 'user' => user, 'package' => package, 'start_time' => '05/05/2023', end_time: '06/06/2023' }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      get bookings_path
      expect(response).to be_successful
    end

    it 'returns a record' do
      expect do
        Booking.create! valid_attributes
      end.to change(Booking, :count).by(1)
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested booking' do
      booking = Booking.create! valid_attributes
      expect do
        delete booking_url(id: booking.id)
      end.to change(Booking, :count).by(-1)
    end
  end
end
