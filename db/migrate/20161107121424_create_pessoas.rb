class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :sobrenome
      t.string :estadoCivil
      t.string :nacionalidade
      t.string :endereco
      t.string :genero
      t.integer :idade
      t.string :profissao
      t.boolean :beneficio
      t.boolean :alfabetizado
      t.string :numeroCarteiraDeTrabalho
      t.string :referenciaProcesso
      t.timestamps
    end
  end
end
