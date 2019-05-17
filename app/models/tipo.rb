class Tipo < ApplicationRecord
	has_one :animal
	validates :tipo, presence: true
end
