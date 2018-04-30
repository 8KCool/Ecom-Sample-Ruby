class StoresController < ApplicationController
  def new
    @store = Store.new
  end
end
