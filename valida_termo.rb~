class String
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
