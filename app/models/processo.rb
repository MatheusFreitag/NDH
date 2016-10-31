class Processo < ApplicationRecord
  def self.search(search)
    where("numeroProcesso LIKE ? OR dataInicio LIKE ? OR tipoDeAcao LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
