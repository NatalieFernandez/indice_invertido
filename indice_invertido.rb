require './valida_termo'

class IndiceInvertido
  attr_reader :tabela

  def initialize(arquivos)
    @tabela = []
    extrair_arquivos(arquivos)
  end

  def mostrar_indice_invertido
    conteudo = ''
    @tabela.each do |linha|
      conteudo += linha[:termo]
      linha[:docs_count].each do |doc, count|
        conteudo += ' ' + count.to_s + ' ' + doc
      end 
      conteudo += ' -- '
    end
    conteudo
  end

  private 

  def extrair_arquivos(arquivo)
    arquivos = File.open(arquivo, 'r').gets.split
    arquivos.each { |arquivo| extrair_termos(arquivo) }
  end

  def extrair_termos(arquivo)
    termos = File.open(arquivo, 'r').gets.split
    termos.each { |termo|
      add_termo(termo.minusculo, arquivo) if !termo.comeca_por_numero? }
  end

  def add_termo(termo, doc)
    @tabela.each do |linha|
      if linha[:termo] == termo
        add_count(termo, doc)
        return
      end
    end
    @tabela << {:termo => termo, :docs_count => {doc => 1}}
  end
  
  def add_count(termo, doc)
    @tabela.each do |linha|
      if linha[:termo] == termo 
        if linha[:docs_count].has_key?(doc)
          count = linha[:docs_count][doc]
          linha[:docs_count][doc] = count + 1
        else
          linha[:docs_count][doc] = 1
        end
        return
      end
    end
  end
end
