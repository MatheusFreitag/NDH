# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161121021601) do

  create_table "pessoas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "estadoCivil"
    t.string   "nacionalidade"
    t.string   "endereco"
    t.string   "genero"
    t.integer  "idade"
    t.string   "profissao"
    t.boolean  "beneficio"
    t.boolean  "alfabetizado"
    t.string   "numeroCarteiraDeTrabalho"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "referenciaProcesso"
  end

  create_table "processos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "numeroProcesso"
    t.integer  "numeroCaixa"
    t.date     "dataInicio"
    t.date     "dataFim"
    t.text     "demanda",           limit: 65535
    t.string   "tipoDeAcao"
    t.string   "juiz"
    t.integer  "vara"
    t.boolean  "arquivado"
    t.string   "tipoDeDemandantes"
    t.string   "conclusao"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "searches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "numeroProcesso"
    t.integer  "numeroCaixa"
    t.date     "dataInicio"
    t.date     "dataFim"
    t.string   "tipodeAcao"
    t.string   "juiz"
    t.integer  "vara"
    t.boolean  "arquivado"
    t.string   "tipoDeDemandante"
    t.string   "conclusao"
    t.string   "nome"
    t.string   "sobrenone"
    t.string   "estadoCivil"
    t.string   "nacionalidade"
    t.string   "genero"
    t.string   "profissao"
    t.string   "alfabetizado"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
