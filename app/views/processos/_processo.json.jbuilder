json.extract! processo, :id, :numeroProcesso, :numeroCaixa, :dataInicio, :dataFim, :demanda, :tipoDeAcao, :juiz, :vara, :arquivado, :tipoDeDemandantes, :conclusao, :created_at, :updated_at
json.url processo_url(processo, format: :json)
