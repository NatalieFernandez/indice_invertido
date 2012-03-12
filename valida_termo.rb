class String
  def validar_termo limite_termo
    self.minusculo.ignorar_pontuacao.delimitar_termo limite_termo
  end

  def delimitar_termo limite_termo
    return (self.length < limite_termo) ?
      (self + (" " * (limite_termo - self.length))) : (self[0..limite_termo])
  end

  def ignorar_pontuacao
    self.gsub(/[^a-z 0-9]/, '')
  end

  def minusculo
    return false if (self.class != String)
    self.downcase
  end

  def comeca_por_numero?
    return true if (self.is_a? Numeric) || (self[0] =~ /[0-9]/)
    false
  end
end
