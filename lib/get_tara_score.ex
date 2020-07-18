defmodule Matchmaking.Tara do


def nakshtras do
    ["ashwini","bharani","krittika","rohini","mrigashirsha","ardra","punarvasu","pushya","ashlesha","magha","purvaphalguni","uttaraphalguni","hasta","chitra","swati","vishakha","anuradha","jyeshtha","mula","purvaashadha","uttaraashadha","shravana","dhanishtha","shatabhisha","purvabhadrapada","uttarabhadrapada","revati"]
end

@spec reorder(<<_::32, _::_*8>>) :: [[{<<_::32, _::_*8>>}]]
def reorder(nakshtra) do
  index = Enum.find_index(nakshtras(), &(&1 == nakshtra))
  Enum.slice(nakshtras(), index+1..27)
  |> Enum.concat(Enum.slice(nakshtras(), 0..index))
  #|> Enum.chunk_every(9)
  #|> Enum.map(&(Enum.zip(&1,1..27)))
end

def get_reltive_order_num(x) do
  cond do
    rem(x,9)==0 -> 9
    true -> rem(x,9)
  end
end

def get_tara_score(groom,bride) do
  #https://www.astroyogi.com/articles/the-tara-koota-in-kundli-matching.aspx
  #1..9
  bride_nakshtra = reorder(bride)
  groom_nakshtra = reorder(groom)
  [head_b| _] = bride_nakshtra
  [head_g |_] = groom_nakshtra
  {g_idx,b_idx} =  {Enum.find_index(groom_nakshtra,&(&1 == head_b)) + 1 ,Enum.find_index(bride_nakshtra,&(&1 == head_g)) + 1 }
  {g_num,b_num} = {get_reltive_order_num(g_idx),get_reltive_order_num(b_idx)}
  [
    [3,3,1.5,3,1.5,3,1.5,3,3],
    [3,3,1.5,3,1.5,3,1.5,3,3],
    [1.5,1.5,0,1.5,0,1.5,0,1.5,1.5],
    [3,3,1.5,3,1.5,3,1.5,3,3],
    [1.5,1.5,0,1.5,0,1.5,0,1.5,1.5],
    [3,3,1.5,3,1.5,3,1.5,3,3],
    [1.5,1.5,0,1.5,0,1.5,0,1.5,1.5],
    [3,3,1.5,3,1.5,3,1.5,3,3],
    [3,3,1.5,3,1.5,3,1.5,3,3],
  ]  |> Enum.at(b_num-1) |> Enum.at(g_num-1)


end



end
