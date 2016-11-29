class CreatePessoasearches < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoasearches do |t|
      t.string :nome
      t.string :sobrenome
      t.string :estadoCivil
      t.string :nacionalidade
      t.string :genero
      t.integer :idade
      t.string :profissao
      t.boolean :beneficio
      t.boolean :alfabetizado
      t.string :referenciaProcesso

      t.timestamps
    end
  end
end
