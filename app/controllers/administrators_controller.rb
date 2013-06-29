class AdministratorsController < ApplicationController

  load_and_authorize_resource params: :administrator_params

  # GET /administrators
  # GET /administrators.json
  def index
  end

  # GET /administrators/1
  # GET /administrators/1.json
  def show
  end

  # GET /administrators/new
  def new
  end

  # GET /administrators/1/edit
  def edit
  end

  # POST /administrators
  # POST /administrators.json
  def create
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
    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_params
      params.require(:administrator).permit(:email, :password, :password_confirmation)
    end
end
