class Animal < ApplicationRecord
 	belongs_to :pessoa
	belongs_to :tipo

	validates :nome, :custo_mensal, presence: true
	validate :andorinha_18
	validate :gato_letraA
	validate :dono_custo_maior_1000, on: :create

	private

	def andorinha_18
		if self.tipo.tipo.capitalize == "Andorinha" && self.pessoa.data_nascimento.to_date + 18.years > Date.today
    		errors[:base] << "Pessoas devem ter mais de 18 anos para ter andorinhas."
    	end
	end
	def gato_letraA
    	if self.tipo.tipo.capitalize == "Gato" && (self.pessoa.nome.split[0].capitalize.starts_with? 'A')
    		errors[:base] << "Pessoas que tenham nome começando com a letra 'A' não podem ter animais do tipo Gato."
    	end
	end
	def dono_custo_maior_1000
    	if self.pessoa.animals.sum(&:custo_mensal) > 1000
    		errors[:base] << "Pessoas que já tiverem custos com animais acima de 1000 não podem ter mais animais."
    	end
	end

end