class Show < ActiveRecord::Base
   
    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
     Show.order(rating: :desc).first
    end 
      # this method should return the show with the highest rating.
       #hint: use the highest_rating method as a helper method.

    def self.lowest_rating
        Show.minimum("rating")
    end 
      #returns the lowest value in the ratings column.
      
    def self.least_popular_show
      Show.order(rating: :asc).first  
    end 
      # returns the show with the lowest rating.
      
    def self.ratings_sum
      Show.sum("rating")
    end 
      # returns the sum of all of the ratings.
      
    def self.popular_shows
      Show.where("rating > 5")
    end 
#       # returns an array of all of the shows that have a rating 
#       #greater than 5. hint: use the where Active Record method.
      
    def self.shows_by_alphabetical_order
      Show.order(name: :asc)
    end 
#     #    returns an array of all of the shows sorted 
#     #   by alphabetical order according to their names. hint: use the order Active Record method.

end