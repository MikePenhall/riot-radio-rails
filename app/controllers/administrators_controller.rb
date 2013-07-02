class AdministratorsController < ApplicationController
  layout 'dashboard'
  # GET /administrators
  # GET /administrators.json
  def index
    @administrators = Administrator.all
  end

  # GET /administrators/1
  # GET /administrators/1.json
  def show
    @administrator = Administrator.find(params[:id])
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
      params.require(:administrator).permit(:email, :password)
    end
end
