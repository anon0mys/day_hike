class AddTripIdToTrails < ActiveRecord::Migration[5.1]
  def change
    add_reference :trails, :trip, index: true
  end
end
