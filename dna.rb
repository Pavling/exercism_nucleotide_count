class DNA

  NUCLEOTIDES = %w(A T C G)

  def initialize(dna)
    @dna = dna
  end

  def count(nucleotide)
    nucleotide_counts[nucleotide].to_i
  end

  def nucleotide_counts
    Hash[*array_of_nucleotides_and_counts]
  end

  private
  def array_of_nucleotides_and_counts
    NUCLEOTIDES.map do |nucleotide|
      [nucleotide, @dna.chars.count(nucleotide)]
    end.flatten
  end

end