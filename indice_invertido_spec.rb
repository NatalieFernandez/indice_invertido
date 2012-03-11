require './indice_invertido'

describe IndiceInvertido do 
  # it 'add termo, doc e count' do
  #   indices = IndiceInvertido.new
  #   indices.add_termo('natalie', 'doc_1')
  #   indices.add_termo('natalie', 'doc_1')
  #   indices.add_termo('natalie', 'doc_2')
  #   indices.tabela.should == [{:termo => 'natalie', 
  #                              :docs_count => {'doc_1' => 2, 
  #                                              'doc_2' => 1}}]
  #   indices.add_termo('pablo', 'doc_1')
  #   indices.add_termo('pablo', 'doc_3')
  #   indices.add_termo('pablo', 'doc_1')
  #   indices.tabela.should == [{:termo=>"natalie", 
  #                              :docs_count => {'doc_1' => 2, 'doc_2' => 1}},
  #                             {:termo=>"pablo", 
  #                              :docs_count=>{'doc_1' => 2, 'doc_3' => 1}}]

  # end
  # it 'add termos de arquivos' do
  #   termos_arq1 = File.new('arquivo1.txt', 'r').gets.split
  #   termos_arq1.should == ['Quem', 'casa','quer', 'casa']

  #   indices = IndiceInvertido.new
  #   termos_arq1.each do |termo|
  #     indices.add_termo(termo, 'arq1')
  #   end
  #   indices.tabela.should == [{:termo=>"Quem", :docs_count=>{'arq1' => 1}}, 
  #                             {:termo=>"casa", :docs_count=>{'arq1' => 2}}, 
  #                             {:termo=>"quer", :docs_count=>{'arq1' => 1}}]
  # end

  # it '' do
  #   indices = IndiceInvertido.new
  #   # indices.mostrar_indice_invertido.should == []
  #   arquivos = File.open('arquivos.txt', 'r').gets.split
  #   arquivos.should == ['arquivo1.txt', 'arquivo2.txt', 'arquivo3.txt']
  #   termos = File.open('arquivo1.txt', 'r').gets.split
  #   termos.should == ['Quem', 'casa','quer', 'casa']
  #   termos.each do |termo| 
  #     indices.add_termo(termo, 'arquivo1.txt')
  #   end
  #   indices.tabela.should == [{:termo=>"Quem", :docs_count=>{'arquivo1.txt' => 1}}, 
  #                             {:termo=>"casa", :docs_count=>{'arquivo1.txt' => 2}}, 
  #                             {:termo=>"quer", :docs_count=>{'arquivo1.txt' => 1}}]
  #   termos = File.open('arquivo2.txt', 'r').gets.split
  #   termos.should == ['Ninguem', 'em', 'casa', 'Todos', 'sairam', 'Todos', 'Quer', 'entrar', 'Quem', 'Quem']
  #   termos.each do |termo| 
  #     indices.add_termo(termo, 'arquivo2.txt')
  #   end
  #   indices.tabela.should == [{:termo=>"Quem", :docs_count=>{'arquivo1.txt' => 1, 'arquivo2.txt' => 2}},
  #                             {:termo=>"casa", :docs_count=>{'arquivo1.txt' => 2, 'arquivo2.txt' => 1}}, 
  #                             {:termo=>"quer", :docs_count=>{'arquivo1.txt' => 1}},
  #                             {:termo=>"Ninguem", :docs_count=>{'arquivo2.txt' => 1}}, 
  #                             {:termo=>"em", :docs_count=>{'arquivo2.txt' => 1}}, 
  #                             {:termo=>"Todos", :docs_count=>{'arquivo2.txt' => 2}},
  #                             {:termo=>"sairam", :docs_count=>{'arquivo2.txt' => 1}},
  #                             {:termo=>"Quer", :docs_count=>{'arquivo2.txt' => 1}},
  #                             {:termo=>"entrar", :docs_count=>{'arquivo2.txt' => 1}}]
  #   termos = File.open('arquivo3.txt', 'r').gets.split
  #   termos.should == ['Flavia', 'Natalie', 'Ohana', 'Pablo', 'Ricardo', 'Thiago']
  #   termos.each do |termo| 
  #     indices.add_termo(termo, 'arquivo3.txt')
  #   end
  #   indices.tabela.should == [{:termo=>"Quem", :docs_count=>{'arquivo1.txt' => 1, 'arquivo2.txt' => 2}},
  #                             {:termo=>"casa", :docs_count=>{'arquivo1.txt' => 2, 'arquivo2.txt' => 1}}, 
  #                             {:termo=>"quer", :docs_count=>{'arquivo1.txt' => 1}},
  #                             {:termo=>"Ninguem", :docs_count=>{'arquivo2.txt' => 1}}, 
  #                             {:termo=>"em", :docs_count=>{'arquivo2.txt' => 1}}, 
  #                             {:termo=>"Todos", :docs_count=>{'arquivo2.txt' => 2}},
  #                             {:termo=>"sairam", :docs_count=>{'arquivo2.txt' => 1}},
  #                             {:termo=>"Quer", :docs_count=>{'arquivo2.txt' => 1}},
  #                             {:termo=>"entrar", :docs_count=>{'arquivo2.txt' => 1}},
  #                             {:termo=>"Flavia", :docs_count=>{'arquivo3.txt' => 1}},
  #                             {:termo=>"Natalie", :docs_count=>{'arquivo3.txt' => 1}},
  #                             {:termo=>"Ohana", :docs_count=>{'arquivo3.txt' => 1}},
  #                             {:termo=>"Pablo", :docs_count=>{'arquivo3.txt' => 1}},
  #                             {:termo=>"Ricardo", :docs_count=>{'arquivo3.txt' => 1}},
  #                             {:termo=>"Thiago", :docs_count=>{'arquivo3.txt' => 1}}]
    # indices.mostrar_indice_invertido.should == 'Quem 1 arquivo1.txt 2 arquivo2.txt -- 
    #                                             casa 2 arquivo1.txt 1 arquivo2.txt -- 
    #                                             quer 1 arquivo1.txt --  
    #                                             Ninguem 1 arquivo2.txt -- 
    #                                             em 1 arquivo2.txt -- 
    #                                             Todos 2 arquivo2.txt -- 
    #                                             sairam 1 arquivo2.txt -- 
    #                                             Quer 1 arquivo2.txt -- 
    #                                             entrar 1 arquivo2.txt -- 
    #                                             Flavia 1 arquivo3.txt -- 
    #                                             Natalie 1 arquivo3.txt -- 
    #                                             Ohana 1 arquivo3.txt -- 
    #                                             Pablo 1 arquivo3.txt -- 
    #                                             Ricardo 1 arquivo3.txt -- 
    #                                             Thiago 1 arquivo3.txt -- '
  # end
  it '' do
    indices = IndiceInvertido.new('arquivos.txt')
    indices.mostrar_indice_invertido.should == 'Quem 1 arquivo1.txt 2 arquivo2.txt -- casa 2 arquivo1.txt 1 arquivo2.txt -- quer 1 arquivo1.txt -- Ninguem 1 arquivo2.txt -- em 1 arquivo2.txt -- Todos 2 arquivo2.txt -- sairam 1 arquivo2.txt -- Quer 1 arquivo2.txt -- entrar 1 arquivo2.txt -- Flavia 1 arquivo3.txt -- Natalie 1 arquivo3.txt -- Ohana 1 arquivo3.txt -- Pablo 1 arquivo3.txt -- Ricardo 1 arquivo3.txt -- Thiago 1 arquivo3.txt -- '
  end
end
