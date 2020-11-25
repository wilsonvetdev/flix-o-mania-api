class Movie < ApplicationRecord

    after_create :make_like_dislike_zero
    
    private

    def make_like_dislike_zero
        self.like = 0
        self.dislike = 0
    end

end
