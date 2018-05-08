class StoresController < ApplicationController
  def index
    @stores = Store.all
  end
  def new
    @store = Store.new
  end

  def create
    @store = Store.new(params.require(:store).permit(:name, :slogan))
    if @store.save
      flash[:notice] = 'Loja criada com sucesso!'
      redirect_to @store
    else
      flash[:notice] = 'Não foi possível criar a loja.'
      render :new
    end
  end

  def show
    @store = Store.find(params[:id])
    @products = @store.products
  end
end
