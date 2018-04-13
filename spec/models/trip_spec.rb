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
  end
end
