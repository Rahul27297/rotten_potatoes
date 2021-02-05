class Movie < ActiveRecord::Base
  @@all_ratings = ['G','PG','PG-13','R']
  @ratings_to_show = []
  
  def self.all_ratings
    return @@all_ratings
  end
  
  def self.ratings_to_show
    return @ratings_to_show
  end

  def self.ratings_to_show=(ratings_to_show)
    @ratings_to_show = ratings_to_show
  end
  
  def self.with_ratings(ratings)
    @ratings_to_show = ratings
    Movie.where({rating: ratings})
  end
end
