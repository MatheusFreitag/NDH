class AddReferenciaProcessoToPessoas < ActiveRecord::Migration[5.0]
  def change
    add_column :pessoas, :referenciaProcesso, :string
  end
end
