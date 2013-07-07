class AdministratorsController < ApplicationController
  layout 'dashboard'
  # GET /administrators
  # GET /administrators.json
  before_filter :authenticate_administrator!
  before_filter :set_administrator, only: [:show, :edit, :update, :destroy]

  def index
    @administrators = Administrator.all
  end

  # GET /administrators/1
  # GET /administrators/1.json
  def show
  end

  # GET /administrators/new
  def new
    @administrator = Administrator.new
  end

  # GET /administrators/1/edit
  def edit
  end

  # POST /administrators
  # POST /administrators.json
  def create
    @administrator = Administrator.new(administrator_params)
    if @administrator.save
      redirect_to @administrator, notice: 'Administrator was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /administrators/1
  def update
    if @administrator.update(administrator_params)
      redirect_to @administrator, notice: 'Administrator was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /administrators/1
  def destroy
    @administrator.destroy
    redirect_to administrators_url, notice: 'Administrator was successfully deleted.'
  end

  private
    
    def set_administrator
      @administrator = Administrator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # these are the things we can set when saving
    def administrator_params
      params.require(:administrator).permit(:email, :password, :current_password)
    end
end
