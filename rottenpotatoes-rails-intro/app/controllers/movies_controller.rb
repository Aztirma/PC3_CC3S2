class MoviesController < ApplicationController

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end


  def index
    #toma valores unicos de rating
    @all_rating = Movie.distinct.pluck(:rating)
    #tendra los valores que seleccionemos en la pagina , y ya que podemos
    #desmarcar todos los valores , tambien puede ser vacio
    @ratings_to_show = params[:ratings]&.keys || []
    #si no hay valores seleccionados , entonces mostrara una tabla vacia
    if @ratings_to_show.empty?
      @movies = []
    #si hay valores seleccionados , entonces mostrara las peliculas
    #que tengan la calificaciones marcadas
    else
      @movies = Movie.where(rating: @ratings_to_show)
    end
  end





  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end
