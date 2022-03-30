class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def search
    response = HTTP.get("https://api.themoviedb.org/3/search/movie?api_key=#{Rails.application.credentials.movie_api_key}&language=en-US&page=1&include_adult=false&query=#{params[:title]}")
    data = JSON.parse(response.body)
    movies = data["movies"]
    render json: data
  end

  def create
    movie = Movie.new(
      title: params[:title],
      runtime: params[:runtime],
      summary: params[:summary],
      poster_url: params[:poster_url],
    )

    if movie.save
      render json: movie
    else
      render json: { errors: movie.errors.full_messages }
    end
  end
end
