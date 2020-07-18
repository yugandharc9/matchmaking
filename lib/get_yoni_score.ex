defmodule Matchmaking.Yoni do


  def get_index_of(element) do
    ["ashwa","gaja","mesha","sarpa","swan","marjar","mushak","gow","mahish","vyaghra","mriga","vanar","nakul","simha"] |> Enum.find_index(fn x -> x==element end)
  end

  def get_yoni_score(groom,bride) do
      {b,g} = {groom,bride}
      b_index = get_index_of(b)
      g_index = get_index_of(g)
      [ [4,2,3,2,2,3,3,3,1,1,3,2,2,1],
        [2,4,3,2,2,3,3,3,3,2,2,2,2,0],
        [3,3,4,3,2,3,1,3,3,1,3,0,3,1],
        [2,2,3,4,2,2,1,1,2,2,2,2,0,2],
        [2,2,2,2,4,1,1,2,2,1,0,2,2,1],
        [2,2,3,2,1,4,0,2,2,1,2,2,2,2],
        [2,2,2,1,1,0,4,2,2,2,2,2,2,1],
        [3,2,3,1,2,2,2,4,1,0,3,2,3,1],
        [3,3,2,2,2,2,3,4,4,2,2,2,3,2],
        [2,1,2,2,1,2,0,1,1,4,1,2,2,1],
        [3,2,3,2,0,2,2,3,2,1,4,2,2,2],
        [2,3,0,2,2,2,2,2,2,1,2,3,2,3],
        [2,2,3,0,2,2,2,3,2,2,2,2,4,2],
        [1,0,1,2,1,2,1,1,3,2,2,2,2,4]] |> Enum.at(b_index) |> Enum.at(g_index)
  end
end
