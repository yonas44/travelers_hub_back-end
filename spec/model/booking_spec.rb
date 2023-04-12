require 'rails_helper'

RSpec.describe Booking, type: :model do
  before(:each) do
    @user = User.create!(username: 'selma', password: 'password')
    @package = Package.create(
      title: 'Package title',
      description: 'Package description',
      destination: 'Package destination',
      price: 50,
      accomodation: 'Package accomodation',
      promotion: 0,
      user: @user
    )
  end

  let(:booking) do
    Booking.new(
      start_time: '10/04/2023',
      end_time: '16/04/2023',
      user: @user,
      package: @package
    )
  end

  describe 'associations' do
    it 'belongs to a user' do
      expect(Booking.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
    it 'belongs to package' do
      expect(Booking.reflect_on_association(:package).macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do

    it 'is not valid without an end date less than start_time' do
      subject.end_time = '09/04/2023'
      expect(subject).to_not be_valid
    end
  
    it 'is not valid with a start date less than present day' do
      subject.start_time = '08/04/2023'
      expect(subject).to_not be_valid
    end
  
    it 'is not valid with a end date  less than present day' do
      subject.end_time = '10/04/2023'
      expect(subject).to_not be_valid
    end
    it 'is not valid without an user' do
      subject.user = nil
      expect(subject).to_not be_valid
    end
  
    it 'is not valid without a package' do
      subject.package = nil
      expect(subject).to_not be_valid
    end
  end

end
