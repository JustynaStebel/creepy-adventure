class MoviesController < ApplicationController
  before_action :movie_find, only: [:show,:edit, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new(movie_params)
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def destroy
    @movie.destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :date, :cover, :description, :category_name, :category_id)
  end

  def movie_find
    @movie = Movie.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:error] = "Movie doesn't exist!"
    redirect_to movies_path
  end
end
