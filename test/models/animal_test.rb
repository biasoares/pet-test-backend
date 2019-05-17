require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "animal tipo" do
    assert_equal "Andorinha", animals(:flora).tipo.tipo.capitalize
  end

  test "nome dono inicio letra A" do
    assert_equal true, (animals(:noel).pessoa.nome.split[0].capitalize.starts_with? 'A')
  end

  test "idade dono menor 18" do
    assert_equal true, animals(:flora).pessoa.data_nascimento.to_date + 18.years > Date.today
  end

  test "nome dono com A e tipo Gato" do
  	n = animals(:noel)
    assert_equal true, n.tipo.tipo.capitalize == "Gato" && (n.pessoa.nome.split[0].capitalize.starts_with? 'A')
  end

  test "idade dono menor 18 e tipo Andorinha" do
  	f = animals(:flora)
    assert_equal true, f.tipo.tipo.capitalize == "Andorinha" && f.pessoa.data_nascimento.to_date + 18.years > Date.today
  end
  
  test "custo dono maior 1000" do
  	b = Animal.new(pessoa_id: 3)
    assert_equal true, b.pessoa.animals.sum(&:custo_mensal) > 1000
  end

end
