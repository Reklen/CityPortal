class Admin::CompaniesController < Admin::ApplicationController

  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    @company = Company.all
  end

  def show

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def find_item

  end

end
