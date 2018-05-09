class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product= Product.new
    @id = params[:id]
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :value,:description ,:store_id, :quantity))
    if @product.save
      flash[:notice] = 'Produto adicionado com sucesso!'
      redirect_to @product
    else
      flash[:notice] = 'Não foi possível adicionar o produto'
      render :new
    end
  end
  def show
    @product = Product.find(params[:id])
  end
end
