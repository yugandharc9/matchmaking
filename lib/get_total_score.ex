defmodule Matchmaking.TotalScore do

  def get_total_score(groom,bride) do
    { g_nakshtra, g_pad , g_gana, g_naadi, g_rashi, g_vasya, g_yoni, g_varna} = Matchmaking.get_nakshtra(groom)
    { b_nakshtra, b_pad , b_gana, b_naadi, b_rashi, b_vasya, b_yoni, b_varna} = Matchmaking.get_nakshtra(bride)

    # nakshatra func +
    # nakshatra_pad func +
    mp = %{
    "tara" => Matchmaking.Tara.get_tara_score(g_nakshtra,b_nakshtra),
    "grahamaitri" => Matchmaking.Grahamaitri.get_grahamaitri_score(g_rashi,b_rashi),
    "yoni" => Matchmaking.Yoni.get_yoni_score(g_yoni,b_yoni),
    "gana" => Matchmaking.Gana.get_gana_score(g_gana,b_gana),
    "naadi" => Matchmaking.Naadi.get_naadi_score(g_naadi,b_naadi),
    "rashi" => Matchmaking.Rashi.get_rashi_score(g_rashi,g_rashi),
    "vasya" => Matchmaking.Vasya.get_vasya_score(g_vasya,b_vasya),
    "varna" => Matchmaking.Varna.get_varna_score(g_varna,g_varna)
    }
    IO.inspect(mp)
    mp |> Enum.reduce(0,fn {_,v},acc -> v+acc end)

  end

end
