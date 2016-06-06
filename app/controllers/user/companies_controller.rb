class User::CompaniesController < User::ApplicationController

  before_action :find_item, only: [:edit, :update, :destroy, :show]

  def index
    @companies = Company.all #_owned_by_user(current_user)
  end

  def show
    respond_to do |format|
      if @company
        format.html { redirect_to user_companies_path @company }
        format.js
        format.json { render json: @company, status: :ok, location: @company }
      else
        format.html { redirect_to user_companies_path @company }
        format.json { render json: @company.errors, status: :not_found }
      end
    end
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(item_params)
    @company.user_id = current_user.id
    @company.save!
    respond_to do |format|
      if @company.errors.empty?
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.js {}
        format.json { render json: @company, status: :created, location: @company }
      else
        format.html { render action: 'new' }
        format.js { render json: @company.errors, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    respond_to do |format|
      if @company
        format.html { redirect_to @company, action: :show, notice: 'Company was updated' }
        format.js
        format.json { render json: @company, status: :ok, location: @company }
      else
        format.html { render action: :edit }
        format.js
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @company.update_attributes(item_params)
        format.html { redirect_to user_companies_path(@company), notice: 'Company was updated' }
        format.json { head :no_content }
      else
        format.html { render action: :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @company.destroy
    respond_to do |format|
      if @company.errors.empty?
        format.html { redirect_to @company, notice: 'Company was successfully deleted' }
        format.js
        format.json { render json: @company, status: :ok, location: @company }
      else
        format.html { render action: :index }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def item_params
    params.require(:company).
        permit(:id, :name, :image, :description_short, :description_long, :web_address, :user_id)
  end

  private
  def find_item
    @company = Company.where(id: params[:id]).first
  end

end
