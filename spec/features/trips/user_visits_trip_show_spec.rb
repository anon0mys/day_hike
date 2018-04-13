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

    scenario 'they see all the trails associated with that trip' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      visit trip_path(trip)

      expect(page).to have_content(trail_one.name)
      expect(page).to have_content(trail_one.address)
      expect(page).to have_content(trail_one.length)
      expect(page).to have_content(trail_two.name)
      expect(page).to have_content(trail_three.name)
    end

    scenario 'they see planned hiking distance for that trip' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      visit trip_path(trip)

      expect(page).to have_content('Planned Distance: 21')
    end

    scenario 'they see average hiking distance for that trip' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      visit trip_path(trip)

      expect(page).to have_content('Average Distance: 7')
    end

    scenario 'they see longest hiking distance for that trip' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      visit trip_path(trip)

      expect(page).to have_content('Longest Distance: 8')
    end

    scenario 'they see shortest hiking distance for that trip' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      visit trip_path(trip)

      expect(page).to have_content('Shortest Distance: 6')
    end
  end
end
