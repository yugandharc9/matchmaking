defmodule Matchmaking do

  #reference

  #https://imarriages.com/advice/how-kundali-matching-works

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



    String.match?(name,~r/^चु|^chu/) -> {"ashwini",1,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^चे|^che/) -> {"ashwini",2,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^चो|^cho/) -> {"ashwini",3,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^ला|^la/) -> {"ashwini",4,"deva","aadi","mesh","chatushpada","ashwa","kshattriya"}
    String.match?(name,~r/^ली|^lee|^li/) -> {"bharani",1,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^लू|^lu|^loo/) -> {"bharani",2,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^ले|^le/) -> {"bharani",3,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^लो|^lo/) -> {"bharani",4,"manushya","madhya","mesh","chatushpada","gaja","kshattriya"}
    String.match?(name,~r/^अ|^a/) -> {"krittika",1,"rakshas","antya","mesh","chatushpada","mesha","kshattriya"}
    String.match?(name,~r/^ई|^ee/) -> {"krittika",2,"rakshas","antya","vrishabh","chatushpada","mesha","vaishya"}
    String.match?(name,~r/^उ|^u/) -> {"krittika",3,"rakshas","antya","vrishabh","chatushpada","mesha","vaishya"}
    String.match?(name,~r/^ए|^e/) -> {"krittika",4,"rakshas","antya","vrishabh","chatushpada","mesha","vaishya"}
    String.match?(name,~r/^4|^o/) -> {"rohini",1,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^वा|^vaa|^va/) -> {"rohini",2,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^वी|^vee|^vi/) -> {"rohini",3,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^वु|^vu|^voo/) -> {"rohini",4,"manushya","antya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^वे|^ve/) -> {"mrigashirsha",1,"deva","madhya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^वो|^vo/) -> {"mrigashirsha",2,"deva","madhya","vrishabh","chatushpada","sarpa","vaishya"}
    String.match?(name,~r/^का|^kaa|^ka/) -> {"mrigashirsha",3,"deva","madhya","mithun","human","sarpa","shudra"}
    String.match?(name,~r/^की|^kee|^ki/) -> {"mrigashirsha",4,"deva","madhya","mithun","human","sarpa","shudra"}
    String.match?(name,~r/^कु|^ku|^koo/) -> {"ardra",1,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^घ|^gha/) -> {"ardra",2,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^ङ|^ing/) -> {"ardra",3,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^छ|^chha/) -> {"ardra",4,"manushya","aadi","mithun","human","swan","shudra"}
    String.match?(name,~r/^के|^ke/) -> {"punarvasu",1,"deva","aadi","mithun","human","marjar","shudra"}
    String.match?(name,~r/^को|^ko/) -> {"punarvasu",2,"deva","aadi","mithun","human","marjar","shudra"}
    String.match?(name,~r/^हा|^haa|^ha/) -> {"punarvasu",3,"deva","aadi","mithun","human","marjar","shudra"}
    String.match?(name,~r/^ही|^hee|^hi/) -> {"punarvasu",4,"deva","aadi","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^हु|^hu/) -> {"pushya",1,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^हे|^he/) -> {"pushya",2,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^हो|^ho/) -> {"pushya",3,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^डा|^daa/) -> {"pushya",4,"deva","madhya","karka","jalchar","mesha","brahmin"}
    String.match?(name,~r/^डी|^dee|^di/) -> {"ashlesha",1,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^डू|^doo|^du/) -> {"ashlesha",2,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^डे|^de/) -> {"ashlesha",3,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^डो|^do/) -> {"ashlesha",4,"rakshas","antya","karka","jalchar","marjar","brahmin"}
    String.match?(name,~r/^मा|^maa|^ma/) -> {"magha",1,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^मी|^mee/) -> {"magha",2,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^मू|^moo|^mu/) -> {"magha",3,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^मे|^me/) -> {"magha",4,"rakshas","antya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^मो|^mo/) -> {"purvaphalguni",1,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^टा|^taa/) -> {"purvaphalguni",2,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^टी|^tee|^ti/) -> {"purvaphalguni",3,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^टू|^too|^tu/) -> {"purvaphalguni",4,"manushya","madhya","simha","vanacara","mushak","kshattriya"}
    String.match?(name,~r/^टे|^te/) -> {"uttaraphalguni",1,"manushya","aadi","simha","vanacara","gow","kshattriya"}
    String.match?(name,~r/^टो|^to/) -> {"uttaraphalguni",2,"manushya","aadi","kanya","human","gow","vaishya"}
    String.match?(name,~r/^पा|^paa|^pa/) -> {"uttaraphalguni",3,"manushya","aadi","kanya","human","gow","vaishya"}
    String.match?(name,~r/^पी|^pee|^pi/) -> {"uttaraphalguni",4,"manushya","aadi","kanya","human","gow","vaishya"}
    String.match?(name,~r/^पू|^poo|^pu/) -> {"hasta",1,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^ष|^sha/) -> {"hasta",2,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^ण|^na/) -> {"hasta",3,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^ठ|^tha/) -> {"hasta",4,"deva","aadi","kanya","human","mahish","vaishya"}
    String.match?(name,~r/^पे|^pe/) -> {"chitra",1,"rakshas","madhya","kanya","human","vyaghra","vaishya"}
    String.match?(name,~r/^पो|^po/) -> {"chitra",2,"rakshas","madhya","kanya","human","vyaghra","vaishya"}
    String.match?(name,~r/^रा|^raa|^ra/) -> {"chitra",3,"rakshas","madhya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^री|^ree|^ri/) -> {"chitra",4,"rakshas","madhya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^रू|^roo|^ru/) -> {"swati",1,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^रे|^re/) -> {"swati",2,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^रो|^ro/) -> {"swati",3,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^ता|^taa|^ta/) -> {"swati",4,"deva","antya","tula","human","mahish","shudra"}
    String.match?(name,~r/^ती|^tee|^ti/) -> {"vishakha",1,"rakshas","antya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^तू|^too|^tu/) -> {"vishakha",2,"rakshas","antya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^ते|^te/) -> {"vishakha",3,"rakshas","antya","tula","human","vyaghra","shudra"}
    String.match?(name,~r/^तो|^to/) -> {"vishakha",4,"rakshas","antya","vrischik","keet","vyaghra","brahmin"}
    String.match?(name,~r/^ना|^naa|^na/) -> {"anuradha",1,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^नी|^nee|^ni/) -> {"anuradha",2,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^नू|^noo|^nu/) -> {"anuradha",3,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^ने|^ne/) -> {"anuradha",4,"deva","madhya","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^नो|^no/) -> {"jyeshtha",1,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^या|^yaa|^ya/) -> {"jyeshtha",2,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^यी|^yee|^yi/) -> {"jyeshtha",3,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^यू|^yoo|^yu/) -> {"jyeshtha",4,"rakshas","aadi","vrischik","keet","mriga","brahmin"}
    String.match?(name,~r/^ये|^ye/) -> {"mula",1,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^यो|^yo/) -> {"mula",2,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^भा|^bhaa|^bha/) -> {"mula",3,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^भी|^bhee|^bhi/) -> {"mula",4,"rakshas","aadi","dhanu","human","swan","kshattriya"}
    String.match?(name,~r/^भू|^bhoo|^bhu/) -> {"purvaashadha",1,"manushya","madhya","dhanu","human","vanar","kshattriya"}
    String.match?(name,~r/^धा|^dhaa/) -> {"purvaashadha",2,"manushya","madhya","dhanu","human","vanar","kshattriya"}
    String.match?(name,~r/^फा|^Phaa|^pha|^faa|^fa/) -> {"purvaashadha",3,"manushya","madhya","dhanu","chatushpada","vanar","kshattriya"}
    String.match?(name,~r/^ढ|^dha/) -> {"purvaashadha",4,"manushya","madhya","dhanu","chatushpada","vanar","kshattriya"}
    String.match?(name,~r/^भे|^bhe/) -> {"uttaraashadha",1,"manushya","antya","dhanu","chatushpada","nakul","kshattriya"}
    String.match?(name,~r/^भो|^bho/) -> {"uttaraashadha",2,"manushya","antya","makar","chatushpada","nakul","vaishya"}
    String.match?(name,~r/^जा|^jaa|^ja/) -> {"uttaraashadha",3,"manushya","antya","makar","chatushpada","nakul","vaishya"}
    String.match?(name,~r/^जी|^jee|^ji/) -> {"uttaraashadha",4,"manushya","antya","makar","chatushpada","nakul","vaishya"}
    String.match?(name,~r/^खी|^khee|^khi/) -> {"shravana",1,"deva","antya","makar","chatushpada","vanar","vaishya"}
    String.match?(name,~r/^खू|^khoo|^khu/) -> {"shravana",2,"deva","antya","makar","chatushpada","vanar","vaishya"}
    String.match?(name,~r/^खे|^khe/) -> {"shravana",3,"deva","antya","makar","jalchar","vanar","vaishya"}
    String.match?(name,~r/^खो|^kho/) -> {"shravana",4,"deva","antya","makar","jalchar","vanar","vaishya"}
    String.match?(name,~r/^गा|^gaa|^ga/) -> {"dhanishtha",1,"rakshas","madhya","makar","jalchar","simha","vaishya"}
    String.match?(name,~r/^गी|^gee|^gi/) -> {"dhanishtha",2,"rakshas","madhya","makar","jalchar","simha","vaishya"}
    String.match?(name,~r/^गु|^gu/) -> {"dhanishtha",3,"rakshas","madhya","kumbha","human","simha","shudra"}
    String.match?(name,~r/^गे|^ge/) -> {"dhanishtha",4,"rakshas","madhya","kumbha","human","simha","shudra"}
    String.match?(name,~r/^गो|^go/) -> {"shatabhisha",1,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^सा|^saa|^sa/) -> {"shatabhisha",2,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^सी|^see|^si/) -> {"shatabhisha",3,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^सू|^soo|su/) -> {"shatabhisha",4,"rakshas","aadi","kumbha","human","ashwa","shudra"}
    String.match?(name,~r/^से|^se/) -> {"purvabhadrapada",1,"manushya","aadi","kumbha","human","simha","shudra"}
    String.match?(name,~r/^सो|^so/) -> {"purvabhadrapada",2,"manushya","aadi","kumbha","human","simha","shudra"}
    String.match?(name,~r/^दा|^da/) -> {"purvabhadrapada",3,"manushya","aadi","kumbha","human","simha","shudra"}
    String.match?(name,~r/^दी|^dee|^di/) -> {"purvabhadrapada",4,"manushya","aadi","meen","jalchar","simha","brahmin"}
    String.match?(name,~r/^दू|^doo|^du/) -> {"uttarabhadrapada",1,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^थ|^tha/) -> {"uttarabhadrapada",2,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^झ|^jha|^za/) -> {"uttarabhadrapada",3,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^ञ|^yna/) -> {"uttarabhadrapada",4,"manushya","madhya","meen","jalchar","gow","brahmin"}
    String.match?(name,~r/^दे|^de/) -> {"revati",1,"deva","antya","meen","jalchar","gaja","brahmin"}
    String.match?(name,~r/^दो|^do/) -> {"revati",2,"deva","antya","meen","jalchar","gaja","brahmin"}
    String.match?(name,~r/^च|^cha/) -> {"revati",3,"deva","antya","meen","jalchar","gaja","brahmin"}
    String.match?(name,~r/^ची|^chee|^chi/) -> {"revati",4,"deva","antya","meen","jalchar","gaja","brahmin"}
    true -> {nil,0,nil,nil}
   #https://chanderprabha.com/2016/02/08/table-for-nakshatrarashivarnayoni-etc/
   #नक्षत्र -Constellation	चरणाक्षर – 1st Letter 	वश्य – Vashya	योनि -Yoni	गण -Gana	नाड़ी -Nadi
   #अभिजित	जु,जे,जो,ख	कोई नहीं है	नकुल	कोई नहीं	कोई नहीं
  end
end


end
