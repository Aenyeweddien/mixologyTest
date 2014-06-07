class DrinksController < ApplicationController
  def index
  	@drinks_notes={"Margarita"=>:not_bad, "Mohito"=>:medicore, "Cosmopolitan"=>:good}
  	@drinks=Drink.all
  end

  def show
  	@drink=Drink.find(params[:id])
  	@vote=Vote.new
  end

  def edit
  end

  def new
  	@drink= Drink.new
  end

  def create
  	permitted = params.require(:drink).permit(:name, :recipe)
	@drink=Drink.new(permitted)
	if @drink.valid?
		@drink.save!
		redirect_to drinks_path
	else
		render "new"
	end
  end

  def destroy
  	@drink = Drink.find(params[:id])
  	@drink.destroy
 
  	redirect_to drinks_path
	end
end
