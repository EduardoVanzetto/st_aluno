class PaisController < ApplicationController
  before_action :set_pal, only: [:show, :edit, :update, :destroy]

  # GET /pais
  # GET /pais.json
  def index
    @pais = Pai.all
  end

  # GET /pais/1
  # GET /pais/1.json
  def show
  end

  # GET /pais/new
  def new
    @pal = Pai.new
  end

  # GET /pais/1/edit
  def edit
  end

  # POST /pais
  # POST /pais.json
  def create
    @pal = Pai.new(pal_params)

    respond_to do |format|
      if @pal.save
        format.html { redirect_to @pal, notice: 'Pai was successfully created.' }
        format.json { render :show, status: :created, location: @pal }
      else
        format.html { render :new }
        format.json { render json: @pal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pais/1
  # PATCH/PUT /pais/1.json
  def update
    respond_to do |format|
      if @pal.update(pal_params)
        format.html { redirect_to @pal, notice: 'Pai was successfully updated.' }
        format.json { render :show, status: :ok, location: @pal }
      else
        format.html { render :edit }
        format.json { render json: @pal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pais/1
  # DELETE /pais/1.json
  def destroy
    @pal.destroy
    respond_to do |format|
      format.html { redirect_to pais_url, notice: 'Pai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pal
      @pal = Pai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pal_params
      params.require(:pal).permit(:nome, :cpf, :rg)
    end
end
