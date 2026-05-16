defmodule Cards do

 def create_deck do
  values = ["Ace","two","three","Four","Five"]
  suits = ["Spades","Clubs","Hearts","Diamonds"]

  for suit <- suits ,value <- values  do
              "#{suit} of #{value}"

  end
 end

 def shuflle(deck) do
  Enum.shuffle(deck)
 end

 def contains?(deck,card) do
    Enum.member?(deck,card)
 end

 def deal(deck,hand_size) do
  Enum.split(deck,hand_size)
 end
end
