class CompaniesController < ApplicationController

  before_filter :find_item, only: [:show]
  before_filter :user_signed, only: [:index, :show]

  def index
    @companies = Company.all
  end

  def show
    @user = User.new
  end

  def search
    @companies = Company.where("name = ?", params[:name])
  end


  private

  def find_item
    @company = Company.where(id: params[:id]).first
  end

  def user_signed
    unless user_signed_in?
      @user = User.new
    else
      @user = current_user
    end
  end

end
