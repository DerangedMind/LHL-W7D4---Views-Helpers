class Admin::SalesController < ApplicationController

  # layout 'application'

  def index
    # render :index
  end

  def new
  end

  def create
  end

  def destroy
    @sale = Sale.find params[:id]
    @sale.destroy
    redirect_to admin_sales_path
  end

end
