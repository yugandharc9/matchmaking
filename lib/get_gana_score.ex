defmodule Matchmaking.Gana do

  def get_gana_score(groom,bride) do
    #https://www.astroyogi.com/articles/gana-koota-in-kundli-matching.aspx
    cond do
        groom==bride or (groom == "manushya" and bride=="deva")-> 6
        groom == "deva" and bride == "manushya" -> 5
        groom == "deva" and bride == "rakshas" -> 1
        true -> 0
    end
  end

end
