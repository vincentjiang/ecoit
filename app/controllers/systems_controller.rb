class SystemsController < ApplicationController
  before_action :set_system, only: [:edit, :update, :destroy]
  before_action :set_resources, :controller_name

  # GET /systems
  # GET /systems.json
  def index
    @systems = System.all.order(:name)
  end

  # GET /systems/new
  def new
    @system = System.new
  end

  # GET /systems/1/edit
  def edit
  end

  # POST /systems
  # POST /systems.json
  def create
    @system = System.new(system_params)

    respond_to do |format|
      if @system.save
        format.html { redirect_to systems_url, notice: 'System was successfully created.' }
        format.json { render :show, status: :created, location: @system }
      else
        format.html { render :new }
        format.json { render json: @system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /systems/1
  # PATCH/PUT /systems/1.json
  def update
    respond_to do |format|
      if @system.update(system_params)
        format.html { redirect_to systems_url, notice: 'System was successfully updated.' }
        format.json { render :show, status: :ok, location: @system }
      else
        format.html { render :edit }
        format.json { render json: @system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /systems/1
  # DELETE /systems/1.json
  def destroy
    @system.destroy
    respond_to do |format|
      format.html { redirect_to systems_url, notice: 'System was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system
      @system = System.find(params[:id])
    end

    def set_resources
      @resources = System.all.order(:name)
    end

    def controller_name
      @controller_name = "应用系统"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_params
      params.require(:system).permit(:name, :link, :username, :password, :remark)
    end
end
