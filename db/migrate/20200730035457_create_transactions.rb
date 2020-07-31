class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :nome_do_lojista
      t.string :cnpj
      t.integer :mcc
      t.string :descricao
      t.string :numero_cartao
      t.string :nome_portador
      t.string :data_transacao
      t.string :valor_transacao
      t.string :status_transacao
      t.string :data_cbk
      t.string :motivo_cbk

      t.timestamps
    end
  end
end
