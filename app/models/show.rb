class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", Show.highest_rating)
  end

  def lowest_rating
    Show.where("rating = ?", Show.minimum(:rating))
  end

  def least_popular_show
  end

  def ratings_sum
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end

end
