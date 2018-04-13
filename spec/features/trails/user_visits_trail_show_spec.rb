require 'rails_helper'

describe 'Visits a trail show' do
  context 'as a visitor' do
    scenario 'they see that trail\'s information' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail = Trail.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road', trip: trip)

      visit trail_path(trail)

      expect(page).to have_content(trail.name)
      expect(page).to have_content(trail.length)
      expect(page).to have_content(trail.address)
    end
  end
end
