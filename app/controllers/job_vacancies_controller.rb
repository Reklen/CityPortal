class JobVacanciesController < ApplicationController

  before_filter :find_item, only: [:show]
  before_filter :user_signed, only: [:index, :show]

  def index
    @offers = Offer.all
  end

  def show

  end

  private

  def user_signed
    unless user_signed_in?
      @user = User.new
    else
      @user = current_user
    end
  end

  def find_item
    @offer = Offer.where(id: params[:id]).first
  end

end
