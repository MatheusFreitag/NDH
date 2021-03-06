class ProcessosController < ApplicationController
  before_action :set_processo, only: [:show, :edit, :update, :destroy]

  # GET /processos
  # GET /processos.json
  def index
    @processos = Processo.all
      @processos = @processos.paginate(page: params[:page], per_page: 20)
     if params[:search]
       @processos = @processos.search(params[:search]).order("created_at DESC")
     else
       @processos = @processos.all.order("created_at DESC")
     end
  end

  # GET /processos/1
  # GET /processos/1.json
  def show
  end

  # GET /processos/new
  def new
    @processo = Processo.new
  end

  # GET /processos/1/edit
  def edit
  end

  # POST /processos
  # POST /processos.json
  def create
    @processo = Processo.new(processo_params)

    respond_to do |format|
      if @processo.save
        format.html { redirect_to @processo, notice: 'Processo foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @processo }
      else
        format.html { render :new }
        format.json { render json: @processo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processos/1
  # PATCH/PUT /processos/1.json
  def update
    respond_to do |format|
      if @processo.update(processo_params)
        format.html { redirect_to @processo, notice: 'Processo foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @processo }
      else
        format.html { render :edit }
        format.json { render json: @processo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processos/1
  # DELETE /processos/1.json
  def destroy
    @processo.destroy
    respond_to do |format|
      format.html { redirect_to processos_url, notice: 'Processo foi deletado com sucesso.' }
      format.json { head :no_content }
    end
  end
  
  #def search
  #  @processo = Processo.joins(:pessoa).select("processos.*,pessoas.*").find params[:id]
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processo
      @processo = Processo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processo_params
      params.require(:processo).permit(:id, :numeroProcesso, :numeroCaixa, :dataInicio, :dataFim, :demanda, :tipoDeAcao, :juiz, :vara, :arquivado, :tipoDeDemandantes, :conclusao)
    end
end
