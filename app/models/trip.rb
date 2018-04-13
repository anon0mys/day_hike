class Trip < ApplicationRecord
  has_many :trails

  def planned_distance
    trails.sum(:length)
  end
end
