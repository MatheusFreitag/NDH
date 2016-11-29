class PessoasearchesController < ApplicationController
    def new
        @pessoasearch = Pessoasearch.new
        @genero = Pessoa.uniq.pluck(:genero)
        @estadoCivil = Pessoa.uniq.pluck(:estadoCivil)
        @profissao = Pessoa.uniq.pluck(:profissao)
        @nacionalidade = Pessoa.uniq.pluck(:nacionalidade)
    end
    
    def create
        @pessoasearch = Pessoasearch.create(pessoasearch_params)
        redirect_to @pessoasearch
    end
    
    def show
       @pessoasearch = Pessoasearch.find(params[:id]) 
    end  
    
    private
    
    def pessoasearch_params
       params.require(:pessoasearch).permit!
    end    

end
