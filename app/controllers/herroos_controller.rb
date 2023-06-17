class HerroosController < ApplicationController
  before_action :set_herroo, only: %i[ show edit update destroy ]

  # GET /herroos or /herroos.json
  def index
    @herroos = Herroo.all
  end

  # GET /herroos/1 or /herroos/1.json
  def show
  end

  # GET /herroos/new
  def new
    @herroo = Herroo.new
  end

  # GET /herroos/1/edit
  def edit
  end

  # POST /herroos or /herroos.json
  def create
    @herroo = Herroo.new(herroo_params)

    respond_to do |format|
      if @herroo.save
        format.html { redirect_to herroo_url(@herroo), notice: "Herroo was successfully created." }
        format.json { render :show, status: :created, location: @herroo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @herroo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /herroos/1 or /herroos/1.json
  def update
    respond_to do |format|
      if @herroo.update(herroo_params)
        format.html { redirect_to herroo_url(@herroo), notice: "Herroo was successfully updated." }
        format.json { render :show, status: :ok, location: @herroo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @herroo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /herroos/1 or /herroos/1.json
  def destroy
    @herroo.destroy

    respond_to do |format|
      format.html { redirect_to herroos_url, notice: "Herroo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herroo
      @herroo = Herroo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herroo_params
      params.require(:herroo).permit(:nome, :apelido)
    end
end
