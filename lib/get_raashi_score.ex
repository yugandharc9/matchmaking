defmodule Matchmaking.Rashi do

    defp pair(list) do
      Enum.sort(list)
    end

    @spec get_rashi_score(any, any) :: 0 | 7
    def get_rashi_score(groom,bride) do
      #https://www.astroyogi.com/articles/bhakoot-koota-in-kundli-matching.aspx
      sorted=pair([groom,bride])
      cond do
          groom == bride -> 7
          sorted == pair(["mithun","mesh"]) -> 7
          sorted == pair(["karka","mesh"]) -> 7
          sorted == pair(["tula","mesh"]) -> 7
          sorted == pair(["mesh","makar"]) -> 7
          sorted == pair(["mesh","kumbha"]) -> 7
          sorted == pair(["vrishabh","karka"]) -> 7
          sorted == pair(["vrishabh","simha"]) -> 7
          sorted == pair(["vrishabh","vrischik"]) -> 7
          sorted == pair(["vrishabh","kumbha"]) -> 7
          sorted == pair(["vrishabh","meen"]) -> 7
          sorted == pair(["mithun","simha"]) -> 7
          sorted == pair(["mithun","kanya"]) -> 7
          sorted == pair(["mithun","dhanu"]) -> 7
          sorted == pair(["mithun","meen"]) -> 7
          sorted == pair(["karka","kanya"]) -> 7
          sorted == pair(["karka","tula"]) -> 7
          sorted == pair(["karka","makar"]) -> 7
          sorted == pair(["simha","tula"]) -> 7
          sorted == pair(["simha","vrischik"]) -> 7
          sorted == pair(["simha","kumbha"]) -> 7
          sorted == pair(["kanya","vrischik"]) -> 7
          sorted == pair(["kanya","dhanu"]) -> 7
          sorted == pair(["kanya","meen"]) -> 7
          sorted == pair(["tula","dhanu"]) -> 7
          sorted == pair(["tula","makar"]) -> 7
          sorted == pair(["vrischik","makar"]) -> 7
          sorted == pair(["vrischik","kumbha"]) -> 7
          sorted == pair(["dhanu","kumbha"]) -> 7
          sorted == pair(["dhanu","meen"]) -> 7
          sorted == pair(["makar","meen"]) -> 7
          true -> 0
      end
    end



end
