defmodule Matchmaking.Vasya do

  def get_vasya_score(groom,bride) do
    #chatushpada
    #human
    #jalchar
    #vanacara
    #keet
    #https://chanderprabha.com/2016/02/08/table-for-nakshatrarashivarnayoni-etc/
    #https://www.astroyogi.com/articles/vasya-koota-in-kundli-matching.aspx
    cond  do
      groom == bride -> 2
      {groom,bride} in [{"human","chatushpada"},{"jalchar","chatushpada"},{"keet","chatushpada"},{"keet","human"},{"chatushpada","human"},{"keet","jalchar"},{"vanacara","jalchar"},{"chatushpada","jalchar"},{"chatushpada","keet"},{"jalchar","keet"},{"human","keet"}] -> 1
    {groom,bride} in [{"vanacara","chatushpada"},{"jalchar","human"},{"human","jalchar"}] -> 1.5
      true -> 0
  end
  end

end
