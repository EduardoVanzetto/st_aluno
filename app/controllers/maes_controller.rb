class MaesController < ApplicationController
  before_action :set_mao, only: [:show, :edit, :update, :destroy]

  # GET /maes
  # GET /maes.json
  def index
    @maes = Mae.all
  end

  # GET /maes/1
  # GET /maes/1.json
  def show
  end

  # GET /maes/new
  def new
    @mao = Mae.new
  end

  # GET /maes/1/edit
  def edit
  end

  # POST /maes
  # POST /maes.json
  def create
    @mao = Mae.new(mao_params)

    respond_to do |format|
      if @mao.save
        format.html { redirect_to @mao, notice: 'Mae was successfully created.' }
        format.json { render :show, status: :created, location: @mao }
      else
        format.html { render :new }
        format.json { render json: @mao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maes/1
  # PATCH/PUT /maes/1.json
  def update
    respond_to do |format|
      if @mao.update(mao_params)
        format.html { redirect_to @mao, notice: 'Mae was successfully updated.' }
        format.json { render :show, status: :ok, location: @mao }
      else
        format.html { render :edit }
        format.json { render json: @mao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maes/1
  # DELETE /maes/1.json
  def destroy
    @mao.destroy
    respond_to do |format|
      format.html { redirect_to maes_url, notice: 'Mae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mao
      @mao = Mae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mao_params
      params.require(:mao).permit(:nome, :cpf, :rg)
    end
end
