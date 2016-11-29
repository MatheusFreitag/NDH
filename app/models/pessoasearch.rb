class Pessoasearch < ApplicationRecord
    
    def busca_avancada_pessoa
        pessoas = Pessoa.all
        
        pessoas = pessoas.where(["genero LIKE ?", genero]) if genero.present?
        pessoas = pessoas.where("NOT referenciaProcesso=''") if referenciaProcesso == '1'
        pessoas = pessoas.where("referenciaProcesso ='' OR referenciaProcesso IS NULL") if referenciaProcesso == '0'
        pessoas = pessoas.where(["profissao LIKE ?", profissao]) if profissao.present?
        pessoas = pessoas.where(["estadoCivil LIKE ?", estadoCivil]) if estadoCivil.present?
        pessoas = pessoas.where(["alfabetizado LIKE ?", alfabetizado])
        pessoas = pessoas.where(["nacionalidade LIKE ?", nacionalidade]) if nacionalidade.present?
        pessoas = pessoas.where(["beneficio LIKE ?", beneficio])
        pessoas = pessoas.where(["nome LIKE ?", nome]) if nome.present?
        pessoas = pessoas.where(["sobrenome LIKE ?", sobrenome]) if sobrenome.present?
        
        
        return pessoas
    end 
    
end
