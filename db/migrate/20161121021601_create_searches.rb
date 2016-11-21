class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.integer :numeroProcesso
      t.integer :numeroCaixa
      t.date :dataInicio
      t.date :dataFim
      t.string :tipodeAcao
      t.string :juiz
      t.integer :vara
      t.boolean :arquivado
      t.string :tipoDeDemandante
      t.string :conclusao
      t.string :nome
      t.string :sobrenone
      t.string :estadoCivil
      t.string :nacionalidade
      t.string :genero
      t.string :profissao
      t.string :alfabetizado

      t.timestamps
    end
  end
end
