class VegatablesController < ApplicationController

  def index
    @vegatables = Vegatable.all.limit(5)
  end

  def show
    @vegatable = Vegatable.find(params[:id])
  end

  def new
    @vegatable = Vegatable.new
  end

  def create
    @vegatable = Vegatable.new(params[:vegatable])
    @vegatable.save
  end


end
