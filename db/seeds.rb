pessoas = [
  [ "Johnny Cash", "555555555", "26/02/1932"],
  [ "Sid Vicious", "555555555", "10/05/1957"],
  [ "Axl Rose", "555555555", "06/02/1962"],
  [ "Joey Ramone", "555555555", "19/05/1951"],
  [ "Bruce Dickinson", "555555555", "07/08/1958"],
  [ "Kurt Cobain", "555555555", "20/02/1967"],
  [ "Elvis Presley", "555555555", "17/08/2008"]
]

pessoas.each do |pessoa|
  Pessoa.create( nome: pessoa[0], documento: pessoa[1], data_nascimento: pessoa[2] )
end

tipos = [
  [ "Cavalo"],
  [ "Cachorro"],
  [ "Papagaio"],
  [ "Lhama"],
  [ "Iguana"],
  [ "Ornitorrinco"]
]

tipos.each do |tipo|
  Tipo.create( tipo: tipo[0] )
end

animais = [
  [ "Pé de Pano", 199.99, "Cavalo", "Johnny Cash"],
  [ "Rex", 99.99, "Cachorro", "Sid Vicious"],
  [ "Ajudante do Papai Noel", 99.99, "Cachorro", "Axl Rose"],
  [ "Rex", 103.99, "Papagaio", "Joey Ramone"],
  [ "Flora", 103.99, "Lhama", "Bruce Dickinson"],
  [ "Dino", 177.99, "Iguana", "Kurt Cobain"],
  [ "Lassie", 407.99, "Ornitorrinco", "Elvis Presley"]
]

animais.each do |animal|
  Animal.create( nome: animal[0], custo_mensal: animal[1], tipo_id: Tipo.find_by_tipo(animal[2]).id, pessoa_id: Pessoa.find_by_nome(animal[3]).id)
end
