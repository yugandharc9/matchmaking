defmodule Matchmaking.Grahamaitri do

  def get_grahamaitri_score(groom,bride) do
    #https://www.astroyogi.com/articles/graha-maitri-koota-in-kundli-matching.aspx
      {groom_rashi_lord,_} = groom |> get_rashi_lord
      {bride_rashi_lord,_} = bride |> get_rashi_lord
      [r1,r2] = [
                relative_relationship(groom_rashi_lord,bride_rashi_lord),
                relative_relationship(bride_rashi_lord,groom_rashi_lord)
                ]

      cond do
          r1 in [:friend] and r2 in [:friend] -> 5
            r1 in [:friend,:neutral] and r2 in [:neutral,:friend] -> 4
              r1 in [:neutral] and r2 in [:neutral] -> 3
                r1 in [:friend,:enemy] and r2 in [:enemy,:friend] -> 1
                  r1 in [:neutral,:enemy] and r2 in [:enemy,:neutral] -> 0.5
                    r1 in [:enemy] and r2 in [:enemy] -> 0
      end
  end


def relative_relationship(lord1,lord2) do

  {friend,neutral,enemy} = relationships(lord1)
  cond do
    lord2 in friend or lord1==lord2 -> :friend
    lord2 in neutral -> :neutral
    lord2 in enemy -> :enemy
  end
end


  def relationships(lord) do
        case lord do
            # planet -> { [friend,neutral,enemy] }
            "sun" -> {["moon","jupiter","mars"],["mercury"],["venus","saturn"]}
            "moon" -> {["sun", "mercury"],["jupiter", "venus", "saturn","mars"],[]}
            "mars" -> {["sun", "moon", "jupiter"],["saturn","venus"],["mercury"]}
            "mercury"-> {["venus","sun"],["mars", "saturn","jupiter"],["moon"]}
            "jupiter" -> {["sun", "moon","mars"],["saturn"],["venus","mercury"]}
            "venus" -> {["mercury","saturn"] ,["mars","jupiter"], ["sun","moon"]}
            "saturn" -> {["mercury","venus"],["jupiter"],["sun", "moon","mars"]}
        end
  end

def get_rashi_lord(rashi) do
   #Aries and Scorpio are ruled by Mars,
   #Taurus and Libra are ruled by Venus,
   #Gemini and Virgo are ruled by Mercury,
   #Cancer is ruled by Moon,
   #Leo is ruled by the Sun,
   #Sagittarius and Pisces are ruled by Jupiter,
   #and Capricorn and Aquarius are ruled by Saturn.
  cond do
    rashi in ["mesh","vrischik"] -> {"mars","mangal"}
    rashi in ["vrishabh","tula"] -> {"venus","shukra"}
    rashi in ["mithun","kanya"] -> {"mercury","budha"}
    rashi == "karka" -> {"moon","chandra"}
    rashi == "simha" -> {"sun","surya"}
    rashi in ["dhanu","meen"] -> {"jupiter","guru"}
    rashi in ["makar","kumbha"] -> {"saturn","shani"}
  end

end


end
