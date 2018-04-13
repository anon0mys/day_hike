require 'rails_helper'

describe Trail do
  describe 'instance methods' do
    it 'should calculate #planned_distance' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      expect(trip.planned_distance).to eq(21)
    end

    it 'should calculate #average_distance' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      expect(trip.average_distance).to eq(7)
    end

    it 'should calculate #longest_distance' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      expect(trip.longest_distance).to eq(8)
    end

    it 'should calculate #shortest_distance' do
      trip = Trip.create(name: 'Trip 1', start_date: '04/11/2018', end_date: '04/11/2018')
      trail_one = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Nowhere Road')
      trail_two = trip.trails.create(name: 'Trail 2', length: 7, address: '1234 Nowhere Road')
      trail_three = trip.trails.create(name: 'Trail 3', length: 8, address: '12345 Nowhere Road')

      expect(trip.shortest_distance).to eq(6)
    end
  end
end
