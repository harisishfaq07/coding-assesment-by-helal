class ReviewsController < ApplicationController
    before_action :set_movie
    
    def show
        @movie_name = params[:movie_name]
        @reviews = @movie.reviews
    end

    private
    def set_movie
        @movie = Movie.find(params[:id])
    end
end