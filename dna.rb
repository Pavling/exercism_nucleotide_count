class DNA

  def initialize(dna)
    @dna = dna
  end

  def count(nucleotide)
    @dna.chars.select{|char|char==nucleotide}.count
  end

end