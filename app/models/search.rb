class Search < ApplicationRecord
    
    def busca_avancada_processo
        processos = Processo.all
        
        processos = processos.where(["numeroProcesso LIKE ?", "%#{numeroProcesso}%"]) if numeroProcesso.present?
        processos = processos.where(["dataInicio >= ?", dataInicio]) if dataInicio.present?
        processos = processos.where(["dataFim <= ?", dataFim]) if dataFim.present?
        processos = processos.where(["tipodeAcao LIKE ?", tipodeAcao]) if tipodeAcao.present?
        processos = processos.where("NOT juiz=''") if juiz == '1'
        processos = processos.where("juiz ='' ") if juiz == '0'
        processos = processos.where(["vara LIKE ?", vara]) if vara.present?
        processos = processos.where(["arquivado LIKE ?", arquivado])
        processos = processos.where(["tipoDeDemandantes LIKE ?", tipoDeDemandante]) if tipoDeDemandante.present?
        processos = processos.where(["conclusao LIKE ?", conclusao]) if conclusao.present?
         
        puts juiz
        return processos
    end     
    
end
