# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130516001443) do

  create_table "caronas", :force => true do |t|
    t.time     "hora_ida"
    t.time     "hora_volta"
    t.integer  "limite_pessoas"
    t.float    "valor_por_pessoa"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "owner"
  end

  create_table "caronas_users", :id => false, :force => true do |t|
    t.integer "carona_id"
    t.integer "user_id"
  end

  create_table "itinerarios", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.float    "ponto_inicial"
    t.float    "ponto_final"
    t.text     "observacao"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "carona_id"
  end

  create_table "perfis", :force => true do |t|
    t.string   "nome_exibicao"
    t.integer  "idade"
    t.string   "cidade"
    t.string   "bairro"
    t.boolean  "trabalha"
    t.string   "perfil_facebook"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
