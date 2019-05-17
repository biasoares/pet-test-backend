class Pessoa < ApplicationRecord
	has_many :animals
	validates :nome, :documento, :data_nascimento, presence: true
end
