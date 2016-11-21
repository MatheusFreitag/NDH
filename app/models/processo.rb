class Processo < ApplicationRecord
  
  def self.search(search)
    where("numeroProcesso LIKE ? OR arquivado LIKE ? OR dataInicio LIKE ? OR tipoDeAcao LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
  
end
