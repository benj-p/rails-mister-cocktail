class CocktailsController < ApplicationController
  before_action :set_cocktail, only:[:show, :edit, :update]

  def index
    @query = params["query"]
    if @query
      @cocktails = Cocktail.where("name LIKE '%#{@query}%'")
      if @cocktails.size.zero?
        @no_cocktails_found = "We couldn't find any cocktails, check out all our cocktails below..."
        @cocktails = Cocktail.all
      end
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
