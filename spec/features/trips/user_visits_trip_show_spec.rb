require 'rails_helper'

describe 'Visits a trip show' do
  context 'as a visitor' do
    scenario 'they see that trip\'s information' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')

      visit trip_path(trip)

      expect(page).to have_content(trip.name)
      expect(page).to have_content(trip.start_date)
      expect(page).to have_content(trip.end_date)
    end
  end
end
