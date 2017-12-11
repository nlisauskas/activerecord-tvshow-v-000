class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    rating = self.highest_rating
    self.find_by(rating: rating)
  end

  def self.lowest_rating
    self.minimum("rating")
  end

  def self.least_popular_show
    rating = self.lowest_rating
    self.find_by(rating: rating)
  end

  def ratings_sum
    self.sum("rating")
  end

  def popular_shows
    self.where("rating > 5")
  end

  def shows_by_alphabetical_order
    self.order("name desc")
  end

end
