class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render json: @birds
    # another way to selectively choose data
    render json: birds, only: [:id, :name, :species]
  end
  
  def show
    bird = Bird.find_by(id: params[:id])
    
    # render json: {id: bird.id, name: bird.name, species: bird.species}
    # render json can also be done like this
    # render json: bird.slice(:id, :name, :species)
    # render json can also be done using only: [:whatever]
  end
end