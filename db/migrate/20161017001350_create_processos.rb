class CreateProcessos < ActiveRecord::Migration[5.0]
  def change
    create_table :processos do |t|
      t.integer :numeroProcesso
      t.integer :numeroCaixa
      t.date :dataInicio
      t.date :dataFim
      t.text :demanda
      t.string :tipoDeAcao
      t.string :juiz
      t.integer :vara
      t.boolean :arquivado
      t.string :tipoDeDemandantes
      t.string :conclusao

      t.timestamps
    end
  end
end
