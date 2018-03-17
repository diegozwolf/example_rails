class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  
  def create
    dog = Dog.create!(dog_params)
    redirect_to dog
  end
  
  def new
    @dog = Dog.new
  end
  
  def edit
    @dog = Dog.find(params[:id])
  end
  
  def update
    dog = Dog.find(params[:id])
    dog.update!(dog_params)
    redirect_to dog
  end
  
  def show
    @dog = Dog.find(params[:id])
  end
  
  def destroy
    dog = Dog.find(params[:id])
    dog.destroy!
    redirect_to '/dogs'
  end
  
  private
  def dog_params
    params.require(:dog).permit(:name)
  end
end