class Movie < ActiveRecord::Base
    # def self.all_ratings
    #     self.pluck(:rating).uniq
    # end
    def self.all_ratings
        a = Array.new
        self.select("rating").uniq.each {|el| a.push(el.rating)}
        a.sort.uniq
    end
end
