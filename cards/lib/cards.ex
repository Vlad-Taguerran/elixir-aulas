defmodule Cards do
@moduledoc """
   Teste de documentação
"""

@doc """
    retorna uma lista de strings
"""
 def create_deck do
  values = ["Ace","two","three","Four","Five"]
  suits = ["Spades","Clubs","Hearts","Diamonds"]

  for suit <- suits ,value <- values  do
              "#{suit} of #{value}"
  end
 end

 def shuffle(deck) do
  Enum.shuffle(deck)
 end

 def contains?(deck,card) do
    Enum.member?(deck,card)
 end

 def deal(deck,hand_size) do
  Enum.split(deck,hand_size)
 end

 def save(deck,filename) do
   binary = :erlang.term_to_binary(deck)
   File.write(filename,binary)
 end

 def load(filename) do

   case File.read(filename) do
      {:ok, binary }-> :erlang.binary_to_term(binary)
      {:error, _reason} -> "Arquivo não existente"

   end
 end

 def create_hand(size) do
   Cards.create_deck()
   |> Cards.shuffle()
   |> Cards.deal(size)
 end
end
