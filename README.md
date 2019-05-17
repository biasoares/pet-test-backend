# README

# Questões
 As questões devem ser respondidas com queries do ActiveRecord. Inclua os trechos de código que respondem as perguntas abaixo:

#Qual é o custo médio dos animais do tipo cachorro?
 Animal.joins(:tipo).where(tipos: {tipo: "Cachorro"}).average(:custo_mensal)


#Quantos cachorros existem no sistema?
 Animal.joins(:tipo).where(tipos: {tipo: "Cachorro"}).count


#Qual o nome dos donos dos cachorros (Array de nomes)
 Animal.joins(:tipo).where(tipos: {tipo: "Cachorro"}).map{|a| a.pessoa.nome}


#Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)
 Hash[Pessoa.all.map{ |p| [p.nome, (p.animals.sum(&:custo_mensal))]}.sort_by { |nome, custo| -custo }]


#Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?
 Hash[Pessoa.all.map{ |p| [p.nome, (p.animals.sum(&:custo_mensal) * 3).round(2)]}]