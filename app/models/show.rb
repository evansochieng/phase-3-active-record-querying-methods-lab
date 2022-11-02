class Show < ActiveRecord::Base
    #return highest rating
    def self.highest_rating
        self.maximum(:rating)
    end

    #return the show with the highest rating
    def self.most_popular_show
        self.order(rating: :desc).limit(1).first
    end

    #return lowest rating
    def self.lowest_rating
        self.minimum(:rating)
    end

    #return least popular show
    def self.least_popular_show
        self.where('rating = ?', self.lowest_rating).first
    end

    #return ratings sum
    def self.ratings_sum
        self.sum(:rating)
    end

    #return popular shows
    def self.popular_shows
        self.where('rating > ?', 5)
    end

    #return shows by alphabetical order (sort)
    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end