class MongodbappsController < ApplicationController
  layout false
  before_action :set_mongodbapp, only: [:show, :edit, :update, :destroy]

  # GET /mongodbapps
  # GET /mongodbapps.json
  def index
    @mongodbapps = Mongodbapp.all
  end

  # GET /mongodbapps/1
  # GET /mongodbapps/1.json
  def show
  end

  # GET /mongodbapps/new
  def new
    @mongodbapp = Mongodbapp.new
  end

  # GET /mongodbapps/1/edit
  def edit
  end

  # POST /mongodbapps
  # POST /mongodbapps.json
  def create
    @mongodbapp = Mongodbapp.new(mongodbapp_params)

    respond_to do |format|
      if @mongodbapp.save
        format.html { redirect_to @mongodbapp, notice: 'Mongodbapp was successfully created.' }
        format.json { render :show, status: :created, location: @mongodbapp }
      else
        format.html { render :new }
        format.json { render json: @mongodbapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mongodbapps/1
  # PATCH/PUT /mongodbapps/1.json
  def update
    respond_to do |format|
      if @mongodbapp.update(mongodbapp_params)
        format.html { redirect_to @mongodbapp, notice: 'Mongodbapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @mongodbapp }
      else
        format.html { render :edit }
        format.json { render json: @mongodbapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mongodbapps/1
  # DELETE /mongodbapps/1.json
  def destroy
    @mongodbapp.destroy
    respond_to do |format|
      format.html { redirect_to mongodbapps_url, notice: 'Mongodbapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mongodbapp
      @mongodbapp = Mongodbapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mongodbapp_params
      params.require(:mongodbapp).permit(:people, :keyw)
    end
end
