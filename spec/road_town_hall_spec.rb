require_relative '../lib/road_town_hall.rb'

describe 'Get more than 50 city_hall' do
    it 'more than 50' do
      expect(get_mail).to have_at_least(50).items
    end
  end