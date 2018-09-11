class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end
  
  def show
    @cat = Cat.find(params[:id])
    render :show
  end
  
  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end
  
  def update
    @cat = Cat.find_by(id: params[:id])
    if @cat.update_attributes(cat_params)
      render :show
    else
      render :edit
    end
  end
  
  def new
    render :new
  end
  
  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      render :show
    else
      render :new
    end
  end
  
  private
  def cat_params
    params.require(:cat).permit(:birth_date,:color,:name,:sex,:description)
  end
end