defmodule Matchmaking.TotalScore do


  def get_initials()do
    ["चु","चे","चो","ला","ली","लू","ले","लो","अ","ई","उ","ए","ओ","वा","वी","वु","वे","वो","का","की","कु","घ","ङ","छ","के","को","हा","ही","हु","हे","हो","डा","डी","डू","डे","डो","मा","मी","मू","मे","मो","टा","टी","टू","टे","टो","पा","पी","पू","ष","ण","ठ","पे","पो","रा","री","रू","रे","रो","ता","ती","तू","ते","तो","ना","नी","नू","ने","नो","या","यी","यू","ये","यो","भा","भी","भू","धा","फा","ढ","भे","भो","जा","जी","खी","खू","खे","खो","गा","गी","गु","गे","गो","सा","सी","सू","से","सो","दा","दी","दू","थ","झ","ञ","दे","दो","च","ची"]
  end

  def get_sorted_initials()do
    ["चु","चे","चो","ला","ली","लू","ले","लो","अ","ई","उ","ए","ओ","वा","वी","वु","वे","वो","का","की","कु","घ","ङ","छ","के","को","हा","ही","हु","हे","हो","डा","डी","डू","डे","डो","मा","मी","मू","मे","मो","टा","टी","टू","टे","टो","पा","पी","पू","ष","ण","ठ","पे","पो","रा","री","रू","रे","रो","ता","ती","तू","ते","तो","ना","नी","नू","ने","नो","या","यी","यू","ये","यो","भा","भी","भू","धा","फा","ढ","भे","भो","जा","जी","खी","खू","खे","खो","गा","गी","गु","गे","गो","सा","सी","सू","से","सो","दा","दी","दू","थ","झ","ञ","दे","दो","च","ची"] |> Enum.sort
  end


  def get_total_score(groom,bride) do
    { g_nakshtra, _g_pad , g_gana, g_naadi, g_rashi, g_vasya, g_yoni, g_varna} = Matchmaking.get_nakshtra(groom)
    { b_nakshtra, _b_pad , b_gana, b_naadi, b_rashi, b_vasya, b_yoni, b_varna} = Matchmaking.get_nakshtra(bride)
    mp = %{
    "tara" => Matchmaking.Tara.get_tara_score(g_nakshtra,b_nakshtra),
    "grahamaitri" => Matchmaking.Grahamaitri.get_grahamaitri_score(g_rashi,b_rashi),
    "yoni" => Matchmaking.Yoni.get_yoni_score(g_yoni,b_yoni),
    "gana" => Matchmaking.Gana.get_gana_score(g_gana,b_gana),
    "naadi" => Matchmaking.Naadi.get_naadi_score(g_naadi,b_naadi),
    "rashi" => Matchmaking.Rashi.get_rashi_score(g_rashi,b_rashi),
    "vasya" => Matchmaking.Vasya.get_vasya_score(g_vasya,b_vasya),
    "varna" => Matchmaking.Varna.get_varna_score(g_varna,b_varna)
    }
    %{info: mp, total: mp |> Enum.reduce(0,fn {_,v},acc -> v+acc end)}
  end

end
