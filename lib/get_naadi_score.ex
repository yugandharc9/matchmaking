defmodule Matchmaking.Naadi do

  def get_naadi_score(groom,bride) do
    #https://www.astroyogi.com/articles/nadi-koota-in-kundli-matching.aspx
          cond do
            groom == bride -> 0
            true -> 8
          end
  end
end

