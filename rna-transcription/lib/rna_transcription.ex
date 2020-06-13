defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    rna = %{
      ?A => ?U,
      ?T => ?A,
      ?C => ?G,
      ?G => ?C
    }
    dna
    |> Enum.map(fn (item) -> rna[item] end)
  end
end
