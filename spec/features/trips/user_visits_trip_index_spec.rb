require 'rails_helper'

describe 'Visits the trips index' do
  context 'as a visitor' do
    scenario 'they see a list of all trips' do
      trip_one = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trip_two = Trip.create(name: 'Trip 2', start_date: '04/12/2018', end_date: '04/12/2018')
      trip_three = Trip.create(name: 'Trip 3', start_date: '04/13/2018', end_date: '04/13/2018')

      visit trips_path

      expect(page).to have_content(trip_one.name)
      expect(page).to have_content(trip_one.start_date)
      expect(page).to have_content(trip_one.end_date)
      expect(page).to have_content(trip_two.name)
      expect(page).to have_content(trip_three.name)
    end

    scenario 'they can click a trip name to navigate to show page' do
      trip_one = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trip_two = Trip.create(name: 'Trip 2', start_date: '04/12/2018', end_date: '04/12/2018')
      trip_three = Trip.create(name: 'Trip 3', start_date: '04/13/2018', end_date: '04/13/2018')

      visit trips_path

      click_on trip_one.name

      expect(current_path).to eq(trip_path(trip_one))

      visit trips_path

      click_on trip_three.name

      expect(current_path).to eq(trip_path(trip_three))
    end
  end
end
