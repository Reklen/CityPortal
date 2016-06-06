class ResultsController < ApplicationController
  before_filter :user_signed, only: [:index, :show]

  def index
    @search_results = Company.search_by_name(params[:query])
  end

  private

  def user_signed
    unless user_signed_in?
      @user = User.new
    else
      @user = current_user
    end
  end
end
