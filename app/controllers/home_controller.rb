class HomeController < ApplicationController
    def show
        # debugger
        
        if params[:commit] == "Search"
            @search = Movie.ransack(params[:q])
            return @movies = @search.result

        elsif params[:commit] == "Sort by reviews"
            @search = Movie.ransack(params[:commit])
            @movies = @search.result.left_joins(:reviews).group('movies.id').order("COUNT(reviews.id) #{params["q"]["created_at"]}, AVG(reviews.stars) #{params["q"]["created_at"]}")
            return @movies
        else
            @search = Movie.ransack(params[:q])
            return @movies = @search.result
        end
    end
end