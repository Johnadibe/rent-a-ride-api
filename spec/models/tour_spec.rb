require 'rails_helper'

RSpec.describe Tour, type: :model do
  before(:each) do
    @user = User.create(name: 'Test user', email: 'rails@gmail.com',
                        password_digest: '123456')
    @tour = Tour.create(name: 'Obudu tour', city: 'Ibom', price: 245.00, video: 'Do it now or die regretting',
                        user_id: @user.id)
  end
  it 'is valid with valid attributes' do
    expect(@tour).to be_valid
  end
  it 'is not valid without a name' do
    @tour.name = nil
    expect(@tour).to_not be_valid
  end
  it 'is not valid without a city' do
    @tour.city = nil
    expect(@tour).to_not be_valid
  end
  it 'is not valid without a price' do
    @tour.price = nil
    expect(@tour).to_not be_valid
  end
  it 'is not valid without a video' do
    @tour.video = nil
    expect(@tour).to_not be_valid
  end
  it 'is not valid without an user_id' do
    @tour.user_id = nil
    expect(@tour).to_not be_valid
  end
end
