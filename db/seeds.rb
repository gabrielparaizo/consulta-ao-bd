require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath = 'db/transacoes.csv'

CSV.foreach(filepath, csv_options) do |row|
Transaction.create!(nome_do_lojista: row["Nome do Lojista"],
  cnpj: row["CNPJ"], 
  mcc: row["MCC"], 
  descricao: row["Descrição do tipo de negócio"],
  numero_cartao: row["Numero do cartão"], 
  nome_portador: row["Nome do portador"], 
  data_transacao: row["Data da transação"], 
  valor_transacao: row["Valor da transação"], 
  status_transacao: row["Status da Transação"], 
  data_cbk: row["Data do chargeback"], 
  motivo_cbk: row["Motivo do Chargeback"])
end