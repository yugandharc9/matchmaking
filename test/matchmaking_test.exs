defmodule MatchmakingTest do
  use ExUnit.Case
  doctest Matchmaking
  alias Matchmaking.Rashi
  alias Matchmaking.Varna
  alias Matchmaking.Naadi
  alias Matchmaking.Vasya
  alias Matchmaking.Gana

  test "naadi test" do
    assert Enum.map(["aadi","madhya","antya"], fn x ->Naadi.get_naadi_score(x,"aadi") end) == [0,8,8]
    assert Enum.map(["aadi","madhya","antya"], fn x ->Naadi.get_naadi_score(x,"madhya") end) == [8,0,8]
    assert Enum.map(["aadi","madhya","antya"], fn x ->Naadi.get_naadi_score(x,"antya") end) == [8,8,0]

  end

  test "bhakoot_score" do
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"mesh") end) == [7,0,7,7,0,0,7,0,0,7,7,0]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"vrishabh") end) == [0,7,0,7,7,0,0,7,0,0,7,7]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"mithun") end) == [7,0,7,0,7,7,0,0,7,0,0,7]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"karka") end) == [7,7,0,7,0,7,7,0,0,7,0,0]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"simha") end) == [0,7,7,0,7,0,7,7,0,0,7,0]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"kanya") end) == [0,0,7,7,0,7,0,7,7,0,0,7]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"tula") end) == [7,0,0,7,7,0,7,0,7,7,0,0]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"vrischik") end) == [0,7,0,0,7,7,0,7,0,7,7,0]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"dhanu") end) == [0,0,7,0,0,7,7,0,7,0,7,7]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"makar") end) == [7,0,0,7,0,0,7,7,0,7,0,7]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"kumbha") end) == [7,7,0,0,7,0,0,7,7,0,7,0]
    assert Enum.map(["mesh","vrishabh","mithun","karka","simha","kanya","tula","vrischik","dhanu","makar","kumbha","meen"],fn x -> Rashi.get_rashi_score(x,"meen") end) == [0,7,7,0,0,7,0,0,7,7,0,7]
  end


  test "gana test" do
    assert Enum.map(["deva","manushya","rakshas"],&(Gana.get_gana_score(&1,"deva"))) == [6,6,0]
    assert Enum.map(["deva","manushya","rakshas"],&(Gana.get_gana_score(&1,"manushya"))) == [5,6,0]
    assert Enum.map(["deva","manushya","rakshas"],&(Gana.get_gana_score(&1,"rakshas"))) == [1,0,6]

  end

  test "vasya test" do
     assert Enum.map(["chatushpada","human","jalchar","vanacara","keet"],&(Vasya.get_vasya_score(&1,"chatushpada"))) == [2,1,1,1.5,1]
     assert Enum.map(["chatushpada","human","jalchar","vanacara","keet"],&(Vasya.get_vasya_score(&1,"human"))) == [1,2,1.5,0,1]
     assert Enum.map(["chatushpada","human","jalchar","vanacara","keet"],&(Vasya.get_vasya_score(&1,"jalchar"))) == [1,1.5,2,1,1]
     assert Enum.map(["chatushpada","human","jalchar","vanacara","keet"],&(Vasya.get_vasya_score(&1,"vanacara"))) == [0,0,0,2,0]
     assert Enum.map(["chatushpada","human","jalchar","vanacara","keet"],&(Vasya.get_vasya_score(&1,"keet"))) == [1,1,1,0,2]
  end

  test "varna test" do
     assert Enum.map(["brahmin","kshattriya","vaishya","shudra"], fn x ->Varna.get_varna_score(x,"brahmin") end) == [1,0,0,0]
     assert Enum.map(["brahmin","kshattriya","vaishya","shudra"], fn x ->Varna.get_varna_score(x,"kshattriya") end) == [1,1,0,0]
     assert Enum.map(["brahmin","kshattriya","vaishya","shudra"], fn x ->Varna.get_varna_score(x,"vaishya") end) == [1,1,1,0]
     assert Enum.map(["brahmin","kshattriya","vaishya","shudra"], fn x ->Varna.get_varna_score(x,"shudra") end) == [1,1,1,1]
  end
end
