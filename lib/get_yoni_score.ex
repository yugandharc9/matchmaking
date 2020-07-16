defmodule Matchmaking.Yoni do

  defp pair(list) do
    Enum.sort(list)
  end

  def get_yoni_score(groom,bride) do
    cond  do
      groom == bride -> 4
      pair([groom,bride]) in [pair(["ashwa", "sarpa"]),pair(["ashwa", "vanar"]),pair(["gaja", "mahish"]),pair(["gaja", "mesha"]),pair(["gaja", "sarpa"]),pair(["gaja", "vanar"]),pair(["gow", "mahish"]),pair(["gow", "mesha"]),pair(["gow", "mriga"]),pair(["mahish", "mesha"]),pair(["marjar", "mriga"]),pair(["marjar", "vanar"]),pair(["mesha", "nakul"]),pair(["mesha", "sarpa"]),pair(["mesha", "vanar"]),pair(["nakul", "vanar"])] -> 3
      pair([groom,bride]) in [pair(["ashwa", "gow"]),pair(["ashwa", "vyaghra"]),pair(["ashwa", "mriga"]),pair(["ashwa", "simha"]),pair(["gaja", "vyaghra"]),pair(["mesha", "vyaghra"]),pair(["marjar", "sarpa"]),pair(["mushak", "sarpa"]),pair(["gow", "sarpa"]),pair(["mahish", "sarpa"]),pair(["mesha", "swan"]),pair(["mushak", "swan"]),pair(["swan", "vyaghra"]),pair(["nakul", "swan"]),pair(["simha", "swan"]),pair(["marjar", "vyaghra"]),pair(["marjar", "simha"]),pair(["mesha", "mushak"]),pair(["mushak", "nakul"]),pair(["gow", "simha"]),pair(["mahish", "vyaghra"]),pair(["mriga", "vyaghra"]),pair(["vanar", "vyaghra"]),pair(["simha", "vyaghra"]),pair(["mriga", "simha"]),pair(["mesha", "simha"])]-> 1
      pair([groom,bride]) in [pair(["ashwa","mahish"]),pair(["gaja","simha"]),pair(["mesha","simha"]),pair(["sarpa","nakul"]),pair(["swan","mriga"]),pair(["marjar","mushak"]),pair(["mushak","marjar"]),pair(["gow","vyaghra"]),pair(["mahish","ashwa"]),pair(["vyaghra","gow"]),pair(["mriga","swan"]),pair(["nakul","sarpa"]),pair(["simha","gaja"])] -> 0
      true-> 2
    end
  end
end
