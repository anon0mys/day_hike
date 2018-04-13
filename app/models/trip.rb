class Trip < ApplicationRecord
  has_many :trails

  def planned_distance
    trails.sum(:length)
  end

  def average_distance
    trails.average(:length)
  end

  def longest_distance
    trails.maximum(:length)
  end

  def shortest_distance
    trails.minimum(:length)
  end
end
