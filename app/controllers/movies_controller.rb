class MoviesController < ApplicationController

    def index
        render json: Movie.all
    end

    def show
        movie = Movie.find_or_create_by(movie_id: params[:id])
        movie.update(movie_params)
        render json: movie
    end

    def create
        movie = Movie.find_or_create_by(movie_id: params['movie_id'])
        if movie.like != 0
            newLike = params['like'] + movie.like
            movie.update(name: params['name'], like: newLike)
        else
            movie.update(name: params['name'], like: 1)
        end
        render json: movie
    end

    def dislike
        movie = Movie.find_or_create_by(movie_id: params['movie_id'])
        if movie.dislike != 0
            newDislike = params['dislike'] + movie.dislike
            movie.update(name: params['name'], dislike: newDislike)
        else
            movie.update(name: params['name'], dislike: 1)
        end
        render json: movie
    end

    private
    
    def movie_params
        params.permit(:movie_id, :name, :like, :dislike)
    end

    

end
