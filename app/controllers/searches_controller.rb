class SearchesController < ApplicationController
    def new
        @search = Search.new
        @tipo_Acao = Processo.uniq.pluck(:tipoDeAcao)
        @tipo_Demandantes = Processo.uniq.pluck(:tipoDeDemandantes)
        @conclusao = Processo.uniq.pluck(:conclusao)
    end
    
    def create
        @search = Search.create(search_params)
        redirect_to @search
    end
    
    def show
       @search = Search.find(params[:id]) 
    end  
    
    private
    
    def search_params
       params.require(:search).permit!
    end    
end
