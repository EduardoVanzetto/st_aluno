class AlunoosController < ApplicationController
  before_action :set_alunoo, only: [:show, :edit, :update, :destroy]

  # GET /alunoos
  # GET /alunoos.json
  def index
    @alunoos = Alunoo.all
  end

  # GET /alunoos/1
  # GET /alunoos/1.json
  def show
  end

  # GET /alunoos/new
  def new
    @alunoo = Alunoo.new
  end

  # GET /alunoos/1/edit
  def edit
  end

  # POST /alunoos
  # POST /alunoos.json
  def create
    @alunoo = Alunoo.new(alunoo_params)

    respond_to do |format|
      if @alunoo.save
        format.html { redirect_to @alunoo, notice: 'Alunoo was successfully created.' }
        format.json { render :show, status: :created, location: @alunoo }
      else
        format.html { render :new }
        format.json { render json: @alunoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunoos/1
  # PATCH/PUT /alunoos/1.json
  def update
    respond_to do |format|
      if @alunoo.update(alunoo_params)
        format.html { redirect_to @alunoo, notice: 'Alunoo was successfully updated.' }
        format.json { render :show, status: :ok, location: @alunoo }
      else
        format.html { render :edit }
        format.json { render json: @alunoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunoos/1
  # DELETE /alunoos/1.json
  def destroy
    @alunoo.destroy
    respond_to do |format|
      format.html { redirect_to alunoos_url, notice: 'Alunoo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alunoo
      @alunoo = Alunoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alunoo_params
      params.require(:alunoo).permit(:usuario_id, :mae_id, :pai_id, :endereco_id, :nascimento)
    end
end
