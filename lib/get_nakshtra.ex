defmodule Matchmaking do

  #Formulae

  #https://akashvaaniteam.blogspot.com/2018/06/8-things-ashtakoot-guna-milan-can-suggest-you-according-to-janam-kundali.html

  #https://www.drikpanchang.com/swar-siddhanta/nakshatra/nakshatra-pada-swar-siddhanta.html
  #http://www.astrojyoti.com/kootamatchingchart.htm

  #{ nakshtra, pad , gana, naadi, rashi, vasya, yoni, varna}

  # Ashta Koota -Varna Vashaya Tara Yoni Grahamaitri                Gana  Bhakoot                Naadi
  #               1     1       0     1   0(n.a done on rashi)       1    0(n.a done on rashi)     1



  def get_yoni_score(_groom,_bride) do


    #https://imarriages.com/advice/how-kundali-matching-works

    #ashwa (Horse)
    #gaja (Elephant)
    #mesha (Goat)
    #sarpa (Snake)
    #swan (Dog)
    #marjar (Cat)
    #mushak (Rat)
    #gow (cow)
    #mahish (Buffalow)
    #vyaghra (Tiger)
    #mriga (Deer)
    #vanar (Monkey)
    #nakul (Mangoose)
    #simha (Lion)
    #https://chanderprabha.com/2016/02/08/table-for-nakshatrarashivarnayoni-etc/
    #https://www.astroyogi.com/articles/yoni-koota-in-kundli-matching.aspx
    1
  end


@spec get_nakshtra(binary) ::
        {nil, 0, nil, nil}
        | {<<_::32, _::_*8>>, 1 | 2 | 3 | 4, <<_::32, _::_*8>>, <<_::32, _::_*8>>,
           <<_::32, _::_*8>>, <<_::32, _::_*8>>, <<_::24, _::_*8>>, <<_::48, _::_*8>>}
def get_nakshtra(name) do
  cond do
    #champa ? dhiraj ? dheeraj
    # da dee du repeated
    # https://astrobix.com/astrosight/192-varnadi-ashtakoot-milan-ashtakoot-milan-ashtakoot-guna-milan.html
    String.match?(name,~r/^chu/) -> {"ashwini",1,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^che/) -> {"ashwini",2,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^cho/) -> {"ashwini",3,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^la/) -> {"ashwini",4,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^lee|^li/) -> {"bharani",1,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^lu|^loo/) -> {"bharani",2,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^le/) -> {"bharani",3,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^lo/) -> {"bharani",4,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^a/) -> {"krittika",1,"rakshas","antya","mesh","chatushpada","mesha","kshattriya"}
    String.match?(name,~r/^ee/) -> {"krittika",2,"rakshas","antya","vrishabh","chatushpada","mesha","vaishya"}
    String.match?(name,~r/^u/) -> {"krittika",3,"rakshas","antya","vrishabh","chatushpada","mesha","vaishya"}
    String.match?(name,~r/^e/) -> {"krittika",4,"rakshas","antya","vrishabh","chatushpada","mesha","vaishya"}
    String.match?(name,~r/^o/) -> {"rohini",1,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^vaa|^va/) -> {"rohini",2,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^vee|^vi/) -> {"rohini",3,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^vu|^voo/) -> {"rohini",4,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^ve/) -> {"mrigashirsha",1,"deva","madhya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^vo/) -> {"mrigashirsha",2,"deva","madhya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^kaa|^ka/) -> {"mrigashirsha",3,"deva","madhya","mithun","human","sarpa","shudra"}
    String.match?(name,~r/^kee|^ki/) -> {"mrigashirsha",4,"deva","madhya","mithun","human","sarpa","shudra"}
    String.match?(name,~r/^ku|^koo/) -> {"ardra",1,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^gha/) -> {"ardra",2,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^ing/) -> {"ardra",3,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^chha/) -> {"ardra",4,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^ke/) -> {"punarvasu",1,"deva","aadi","mithun","human","marjar","shudra"}
    String.match?(name,~r/^ko/) -> {"punarvasu",2,"deva","aadi","mithun","human","marjar","shudra"}
    String.match?(name,~r/^haa|^ha/) -> {"punarvasu",3,"deva","aadi","mithun","human","marjar","shudra"}
    String.match?(name,~r/^hee|^hi/) -> {"punarvasu",4,"deva","aadi","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^hu/) -> {"pushya",1,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^he/) -> {"pushya",2,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^ho/) -> {"pushya",3,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^daa|^da/) -> {"pushya",4,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^dee|^di/) -> {"ashlesha",1,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^doo|^du/) -> {"ashlesha",2,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^de/) -> {"ashlesha",3,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^do/) -> {"ashlesha",4,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^maa|^ma/) -> {"magha",1,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^mee/) -> {"magha",2,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^moo|^mu/) -> {"magha",3,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^me/) -> {"magha",4,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^mo/) -> {"purvaphalguni",1,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^taa/) -> {"purvaphalguni",2,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^tee|^ti/) -> {"purvaphalguni",3,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^too|^tu/) -> {"purvaphalguni",4,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^te/) -> {"uttaraphalguni",1,"manushya","aadi","simha","vanacara","gow","kshattriya"}
    String.match?(name,~r/^to/) -> {"uttaraphalguni",2,"manushya","aadi","kanya","human","gow","vaishya"}
    String.match?(name,~r/^paa|^pa/) -> {"uttaraphalguni",3,"manushya","aadi","kanya","human","gow","vaishya"}
    String.match?(name,~r/^pee|^pi/) -> {"uttaraphalguni",4,"manushya","aadi","kanya","human","gow","vaishya"}
    String.match?(name,~r/^poo|^pu/) -> {"hasta",1,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^sha/) -> {"hasta",2,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^na/) -> {"hasta",3,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^tha/) -> {"hasta",4,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^pe/) -> {"chitra",1,"rakshas","madhya","kanya","human","vyaghra","vaishya"}
    String.match?(name,~r/^po/) -> {"chitra",2,"rakshas","madhya","kanya","human","vyaghra","vaishya"}
    String.match?(name,~r/^raa|^ra/) -> {"chitra",3,"rakshas","madhya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^ree|^ri/) -> {"chitra",4,"rakshas","madhya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^roo|^ru/) -> {"swati",1,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^re/) -> {"swati",2,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^ro/) -> {"swati",3,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^taa|^ta/) -> {"swati",4,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^tee|^ti/) -> {"vishakha",1,"rakshas","antya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^too|^tu/) -> {"vishakha",2,"rakshas","antya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^te/) -> {"vishakha",3,"rakshas","antya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^to/) -> {"vishakha",4,"rakshas","antya","vrischik","keet","vyaghra","brahmin"}
    String.match?(name,~r/^naa|^na/) -> {"anuradha",1,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^nee|^ni/) -> {"anuradha",2,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^noo|^nu/) -> {"anuradha",3,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^ne/) -> {"anuradha",4,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^no/) -> {"jyeshtha",1,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^yaa|^ya/) -> {"jyeshtha",2,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^yee|^yi/) -> {"jyeshtha",3,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^yoo|^yu/) -> {"jyeshtha",4,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^ye/) -> {"mula",1,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^yo/) -> {"mula",2,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^bhaa|^bha/) -> {"mula",3,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^bhee|^bhi/) -> {"mula",4,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^bhoo|^bhu/) -> {"purvaashadha",1,"manushya","madhya","dhanu","human","vanar","kshattriya"}
    String.match?(name,~r/^dhaa/) -> {"purvaashadha",2,"manushya","madhya","dhanu","human","vanar","kshattriya"}
    String.match?(name,~r/^Phaa|^pha|^faa|^fa/) -> {"purvaashadha",3,"manushya","madhya","dhanu","chatushpada","vanar","kshattriya"}
    String.match?(name,~r/^dha/) -> {"purvaashadha",4,"manushya","madhya","dhanu","chatushpada","vanar","kshattriya"}
    String.match?(name,~r/^bhe/) -> {"uttaraashadha",1,"manushya","antya","dhanu","chatushpada","nakul","kshattriya"}
    String.match?(name,~r/^bho/) -> {"uttaraashadha",2,"manushya","antya","makar","chatushpada","nakul","vaishya"}
    String.match?(name,~r/^jaa|^ja/) -> {"uttaraashadha",3,"manushya","antya","makar","chatushpada","nakul","vaishya"}
    String.match?(name,~r/^jee|^ji/) -> {"uttaraashadha",4,"manushya","antya","makar","chatushpada","nakul","vaishya"}
    String.match?(name,~r/^khee|^khi/) -> {"shravana",1,"deva","antya","makar","chatushpada","vanar","vaishya"}
    String.match?(name,~r/^khoo|^khu/) -> {"shravana",2,"deva","antya","makar","chatushpada","vanar","vaishya"}
    String.match?(name,~r/^khe/) -> {"shravana",3,"deva","antya","makar","jalchar","vanar","vaishya"}
    String.match?(name,~r/^kho/) -> {"shravana",4,"deva","antya","makar","jalchar","vanar","vaishya"}
    String.match?(name,~r/^gaa|^ga/) -> {"dhanishtha",1,"rakshas","madhya","makar","jalchar","simha","vaishya"}
    String.match?(name,~r/^gee|^gi/) -> {"dhanishtha",2,"rakshas","madhya","makar","jalchar","simha","vaishya"}
    String.match?(name,~r/^gu/) -> {"dhanishtha",3,"rakshas","madhya","kumbha","human","simha","shudra"}
    String.match?(name,~r/^ge/) -> {"dhanishtha",4,"rakshas","madhya","kumbha","human","simha","shudra"}
    String.match?(name,~r/^go/) -> {"shatabhisha",1,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^saa|^sa/) -> {"shatabhisha",2,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^see|^si/) -> {"shatabhisha",3,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^soo|su/) -> {"shatabhisha",4,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^se/) -> {"purvabhadrapada",1,"manushya","aadi","kumbha","human","simha","shudra"}
    String.match?(name,~r/^so/) -> {"purvabhadrapada",2,"manushya","aadi","kumbha","human","simha","shudra"}
    String.match?(name,~r/^daa|^da/) -> {"purvabhadrapada",3,"manushya","aadi","kumbha","human","simha","shudra"}
    String.match?(name,~r/^dee|^di/) -> {"purvabhadrapada",4,"manushya","aadi","meen","jalchar","simha","brahmin"}
    String.match?(name,~r/^doo|^du/) -> {"uttarabhadrapada",1,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^tha/) -> {"uttarabhadrapada",2,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^jha|^za/) -> {"uttarabhadrapada",3,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^yna/) -> {"uttarabhadrapada",4,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^de/) -> {"revati",1,"deva","antya","meen","jalchar","gaja","brahmin"}
    String.match?(name,~r/^do/) -> {"revati",2,"deva","antya","meen","jalchar","gaja","brahmin"}
    String.match?(name,~r/^cha/) -> {"revati",3,"deva","antya","meen","jalchar","gaja","brahmin"}
    String.match?(name,~r/^chee|^chi/) -> {"revati",4,"deva","antya","meen","jalchar","gaja","brahmin"}
    true -> {nil,0,nil,nil}
   #https://chanderprabha.com/2016/02/08/table-for-nakshatrarashivarnayoni-etc/
   #नक्षत्र -Constellation	चरणाक्षर – 1st Letter 	वश्य – Vashya	योनि -Yoni	गण -Gana	नाड़ी -Nadi
   #अभिजित	जु,जे,जो,ख	कोई नहीं है	नकुल	कोई नहीं	कोई नहीं
  end
end


end
