defmodule Matchmaking.Varna do

  def get_varna_score(groom,bride) do
    #brahmin
    #kshattriya
    #vaishya
    #shudra
    #http://www.saravali.de/articles/koota_varna.html
    #https://hinduism.stackexchange.com/questions/18941/do-any-scriptures-say-that-varna-is-determined-by-rashi

      case {groom,bride} do
          {"brahmin",_} -> 1
          {"kshattriya","kshattriya"} -> 1
          {"kshattriya","vaishya"} -> 1
          {"kshattriya","shudra"} -> 1
          {"vaishya","vaishya"} -> 1
          {"vaishya","shudra"} -> 1
          {"shudra","shudra"} -> 1
          {_,_} -> 0
      end


  end

end
