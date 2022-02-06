cookie:-
    pozdrav,
    godine,
    mjesto,
    kuhanje,
    ljutoIliBlago,
    zdravo,
    kuharskiShow,
    favNamirnica,
    poznataOsoba,
    egzotika,
    ucenje,
    desert,
    doslusanja.



pozdrav:-
    write("Bok! Ja sam Cookie, chatbot za kuhanje i zdravu prehranu. Jos uvijek sa mlad i ne znam prepoznati razmak :(, ali kroz vrijeme cu i to nauciti! Isto tako ne znam sto su velika slova pa te molim da koristis mala."),nl,
    write("Ali, necemo vise o meni nego da te pitam, kako se zoves?"), nl,
    read(X),
    write("Drago mi je da smo se upoznali "),
    write(X),
    write("! "),nl.

godine:-
    write("Koje si godine roden/a? Ili ce to ostati tajna"), nl,
    read(X),
    (   X = 'tajna'->nezelimreci,nl, !;
    (   X > 2000 -> jakomlad,nl, !;
    (   X = 2000 -> newage, nl, !;
    (   X < 2000 -> oldage, nl)))).

mjesto:-
    write("Odakle dolazis?"), nl,
    read(Z),
    (   Z = 'varazdin' -> istigrad,nl, !;
    (   Z \= 'varazdin' -> lijepomjesto, nl )).


kuhanje:-
    write("Volis li kuhati?"),
    read(K),
    (   K = 'da' -> kuhanjeDa, nl, !;
    (   K = 'ne' -> kuhanjeNe, nl, !;
    (   write("Ne poznajem tu rijec, probaj nesto drugo."),nl,nl, kuhanje))).

ljutoIliBlago:-
    write("Volis li vise ljutu kuhinju (Nesto tipa sechuanska ili indijska kuhinja) ili vise blagu kuhinju (mediteranska, francuska ili japanska kuhinja)?"), nl,
    read(C),
    (   C = 'sechuanska' -> china, nl,!;
    (   C = 'indijska' -> indija, nl, !;
    (   C = 'mediteranska' -> mediteran, nl, !;
    (   C = 'francuska' -> french, nl, !;
    (   C = 'japanska' -> nippon, nl, !;
    (   write("Ne znam za tu kuhinju, mozda ti se svida neka druga? "), nl, nl, ljutoIliBlago)))))).

china:-
    write("I meni se svida kineska kuhinja, jako ljuto, a s druge strane, puno okusa i zacina!!"), nl.

indija:-
    write("Indijska kuhinja je oduvijek bila ljuta, oni su izumili ljuto."), nl.

mediteran:-
    write("Meni se takoder jako dopada mediteranska kuhinja jer postoji puno zacina koji se koriste samo na tom podrucju i daju specificnu aromu jelima!"), nl.

french:-
    write("Francuska kuhinja poznata je po profinjenosti i jednostavnim okusima koji docaravaju ambijent samog restorana!"), nl.

nippon:-
    write("Izrazito specificna japanska kuhinja sastoji se od dosta namirnica koje daje more: morski plodovi, riba, skampi i slicno. Volio bih probati dobar ramen!"), nl.

nezelimreci:-
    write("Oookej, znaci to ce ostati tajna."), nl.

jakomlad:-
    write("Jos uvijek jako mlada osoba, stignes jos svasta nauciti kuhati!"), nl.

newage:-
    write("Pfff, tebi je barem lako brojati svoje godine.."), nl.

oldage:-
    write("Sjecas li se dinosaura dok su jos hodali po zemlji?"), nl.

istigrad:-
    write("Heeej, ja sam isto iz Varazdina!"), nl.

lijepomjesto:-
    write("Jos nisam bio tamo, ali cuo sam da je to jako lijepo mjesto!"), nl.

kuhanjeDa:-
    write("Opa, iznenaden sam! Jako malo ljudi zapravo zna dobro kuhati!"), nl,
    write("Imas li neko svoje najdraze jelo koje bi podijelio sa mnom?"), nl,
    read(J),
    (   J = 'da' -> jeloDa, nl, !;
    (   J = 'ne' -> jeloNe, nl, !;
    (   write("Ovo pitanje je vise za da i ne odogovor, pokusaj s tim."),nl, nl, kuhanjeDa))).

kuhanjeNe:-
    write("Nema veze, nikad nije rano za poceti kuhati!"), nl.

jeloDa:-
    write("Koje je to jelo? Vjerujem da je ukusno!"), nl,
    read(H),
    write("Ovo jelo vec i zvuci fino, a na samu pomisao vec mi sline cure."), nl,
    write("Kada bih ovako brzo ucio recepte, sigurno bih bio najveca arhiva recepata na svijetu"), nl.

jeloNe:-
    write("Nema veze, neka to ostane tvoja tajna, ionako znam vec previse recepata :P"), nl.

zdravo:-
   write("Da li radije jedes zdravo ili fino?"), nl,
   read(A),
   (   A = 'zdravo' -> healthy, nl, !;
   (   A = 'fino' -> tasty, nl, !;
   (   A = 'oboje' -> svidamisesve, nl, !;
   (   write("Ne poznam tu naredbu, probaj s necim drugim"), nl,nl, zdravo)))).

healthy:-
    write("Jesti pravilno i zdravo uvijek je dobro, ali ponekad si treba dati malo oduska ;)"), nl.

tasty:-
    write("Sva hrana je fina ako se pripremi dobro, razmisli o pravilnoj prehrani! "), nl.

svidamisesve:-
    write("Jedini tocan odgovor na moje pitanje! Pravilna prehrana se skriva u svakoj od namirnica, samo je treba konzumirati u umjerenim kolicinama!"), nl.

ucenje:-
    write("Zelis li nauciti koji moj recept?"),
    read(G),
    (   G = 'da' -> ucenjeDa, nl, !;
    (   G = 'ne' -> ucenjeNe, nl, !;
    (   write("Ovo je vise pitanje za da i ne odgovor, probaj s tim."),nl,nl,ucenje))).

ucenjeDa:-
    write("Drago mi je da ima zainteresiranih za moju kuhinju!!"),nl,
    write("Trenutno imam 3 recepta na raspolaganju, ali mozes odabrati samo jedan broj! Ne smijem otkriti previse svojih kulinarskih tajni."), nl,
    read(L),
    (   L = 1 -> recept1, nl, !;
    (   L = 2 -> recept2, nl, !;
    (   L = 3 -> recept3, nl, !;
    (   write("Rekao sam ti da imam samo 3 recepta, odaberi jedan broj pa cu ti odati tajnu iza njega!"), nl, nl, ucenjeDa)))).

ucenjeNe:-
    write("Sigurno ne zelis nauciti nista novo? :( "),nl,
    read(O),
    (   O = 'da' -> tugyplaky, nl, !;
    (   O = 'ne' -> ucenjeDa, nl, !;
    (   write("Ovo je vise pitanje za da i ne, ako zelis nauciti novi recept napisi ne, a ukoliko si siguran da ne zelis uciti napisi da."), nl,nl, ucenjeNe))).

tugyplaky:-
    write("Uredu, zao mi je sto ne zelis nova znanja, ali postujem tvoju odluku."), nl.

recept1:-
    write("Hobotnica u pecnici"),nl,nl,
    write("Sastojci:"),nl,
    write("2kg hobotnice"),nl,
    write("1kg mješavine povrca: krumpir, mrkva, tikvice, kupus ili slicne namirnice.."), nl,
    write("1 glavica luka"),nl,
    write("1 dl bijelog vina"),nl,
    write("lovorov list i ruzmarin"),nl,
    write("maslinovo ulje"),nl,
    write("smjesa: 5 reznjeva cesnjaka, vezica persina, 5 zlica krusnih mrvica, vegeta"), nl, nl,
    write("PRIPREMA:"),nl,
    write("1. Odledenu hobotnicu staviti u zdjelu, zaliti ju cašom vode, i prokuhati 15 minuta (ne mora cijela biti pod vodom)"),nl, nl,
    write("2. Dok se hobotnica kuha mozes pripremiti povrce. Ja osobno stavim duplo manje povrca od hobotnice jer se ona stisne pecenjem, ali obavezno je staviti krumpir, luk i cesnjak! "), nl, nl,
    write("3. Svo povrce narezati na podjednake komade te zaciniti lovorovim listom, ruzmarinom i maslinovim uljem."),nl,nl,
    write("4. Nakon sto se hobotnica kuhala 15 minuta, izvaditi ju, staviti na povrce i zaliti maslinovim uljem."),nl, nl,
    write("5. Sastojke za smjesu nasjeckati na sitne komadice te posipati po hobotnici!"),nl,nl,
    write("6. Sve otkriveno staviti u pecnicu na 180 C stupnjeva na 80 minuta, a na pola pecenja uliti bijelog vina!"),nl,nl.

recept2:-
    write("Pikantni tatrski biftek"),nl,nl,
    write("Sastojci: "),nl,
    write("400g bifteka"),nl,
    write("1 glavica luka"),nl,
    write("2 reznja cesnjaka"),nl,
    write("5dag zelenih maslina"),nl,
    write("4 kisela krastavca"),nl,
    write("1 zlica kapara"),nl,
    write("1 zlica nasjeckanog persina"),nl,
    write("1 zlica ljutog senfa"),nl,
    write("1/2 zlicice mljevenog papra"),nl,
    write("1/2 zlicice ljute paprike"),nl,
    write("1/2 zlicice slatke paprike"),nl,
    write("1 zlicica maslinovog ulja"),nl,
    write("1 zlicica acceta balsamica"),nl,
    write("1 zlicica worcester umaka"),nl,
    write("2 zumanjka"),nl,
    write("1 zlicica soli"),nl,
    write("2 rajcice"),nl,
    write("100g maslaca"),nl,nl,
    write("PRIPREMA: "),nl,
    write("Ocistite i naribajte crveni luk i stavite u zdjelu u kojoj ce te mijesati biftek. Isto napravite sa cesnjakom i sa kiselim krastavcima.
Nasjeckajte na sitno oprani peršin i njega dodajte u zdjelu. Nasjeckate kapare i masline što sitnije.
Dodajte dva žumanjka. Dodajte zacine:sol, senf, ljutu i slatku mljevenu papriku, crni papar, Worcester umak, aceto balsamico, maslinono ulje.
Na kraju dodajte dvaput mljeveni biftek. Sve zajedno dobro promiješajte ili izradite štapnim mikserom do teksture kakvu zelite."),nl,nl.

recept3:-
    write("Spaghetti Carbonara"),nl,nl,
    write("Sastojci: "), nl,
    write("300g spageta"),nl,
    write("250g mesnate slanine"),nl,
    write("2 jaja"),nl,
    write("3dcl vrhnja"),nl,
    write("40g ribanog parmezana"),nl,
    write("1 cesanj bijelog luka"),nl,
    write("2-3 zlicice maslinovog ulja"),nl,
    write("sol"),nl,nl,
    write("PRIPREMA: "),nl,
    write("1. Staviti vodu za spagete da zakuha, posoliti je"),nl,
    write("2. Za to vrijeme isjeckati slaninu na kockice, zamutiti jaja i dodati vrhnje i 20 grama parmezana i usitnjeni cesnjak u smjesu."),nl,
    write("3. Slaninu isprziti na maslinovom ulju."),nl,
    write("4. Nakon sto su spagete kuhane, dodati ih u zdjelu sa slaninom te nakon toga dodati smjesu. Promjesati sve skupa i servirati vruce na tanjure."),nl,nl.






kuharskiShow:-
    write("Pratis li kakve kulinarske emisije?"), nl,
    read(P),
    (   P = 'da' -> emisijaDa, nl, !;
    (   P = 'ne' -> emisijaNe, nl, !;
    (   write("Ovo pitanje je vise za da ili ne, probaj sa necim od toga."), nl, nl, kuharskiShow))).

emisijaDa:-
    write("Cak i to!! Stvarno si stranstveni/a kuhar/ica!"),
    write("Ja sam pogledao dosta kulinarskih emisija, ali uvijek sam zeljan pogledati jos koju, imas neku na umu?"), nl,
    read(A),
    write("Kulinarska emisija: "),
    write(A),
    write(" dodana na popis!"), nl.

emisijaNe:-
    write("Iz kulinarskih emisija mozes stvarno puno nauciti, preporucam da probas sa nekom od njih!"),nl.


favNamirnica:-
    write("Koju namirnicu obozavas jesti?"), nl,
    read(E),
    write("Wow! Postoji jako puno recepata u kojima se nalazi "),
    write(E),
    write("."),nl,
    write("To je jako zanimljiva namirnica!"), nl.

poznataOsoba:-
    write("Jesi li cuo za Marka Turkovica?"),nl,
    read(Z),
    (   Z = 'da' ->cuoSam, nl, !;
    (   Z = 'ne' ->nisamCuo, nl, !;
    (   write("Ovo je vise pitanje za odgovor da ili ne, probaj s tim!"),nl, nl, poznataOsoba))).

cuoSam:-
    write("Imao je odlicno predavanje na Bug Future Show-u 2022. Pricao je o egzoticnim namirnicama!"), nl.

nisamCuo:-
    write("Steta, on je nas Hrvatski najbolji mladi chef koji voli eksperimentirati sa egzoticnim namirnicama u svojoj kuhinji!"), nl.

egzotika:-
   write("Kad smo kod egzoticnih namirnica, da li bi ikad probao/la neke egzoticne namirnice poput krokodilskog mesa, kukaca, puzeva i slicno??"),nl ,
   read(M),
   (   M = 'da' -> egzotikaDa, nl, !;
   (   M = 'ne' -> egzotikaNe, nl, !;
   (   write("Opet pitanje da ili ne, nema izmedu. :)"),nl, nl, egzotika))).

egzotikaDa:-
    write("Jako zanimljivo! Jos nisam imao priliku raditi sa takvim namirnicama, ali se nadam da cu u buducnosti imati priliku pronaci dosta recepata sa njima!!"), nl, nl.

egzotikaNe:-
    write("Steta, cuo sam da je dosta tih namirnica jako zdravo i fino, samo se trebaju pripremiti na pravi nacin! "), nl.

desert:-
    write("Za kraj, mogu li te zainteresirati kojim receptom za desert?"),nl,
    read(D),
    (   D = 'da' -> receptDesert,nl, !;
    (   D = 'ne' -> write("U redu, ne volimo slatko."),nl)).

receptDesert:-
    write("Mozes birati izmedu 3 recepta, pazljivo odaberi jer cu podijeliti samo jedan. Samo je potrebno upisati broj."),nl,
    read(W),
    (   W = 1 -> recept4, nl, !;
    (   W = 2 -> recept5, nl, !;
    (   W = 3 -> recept6, nl, !:
    (   write("Samo je potrebno upisti broj recepta koji zelis pa ti mogu dati recept!"),nl,nl, receptDeserti)))).

recept4:-
    write("Tiramisu"),nl,nl,
    write("Sastojci:"),nl,
    write("30dag piskota za tiramisu"),nl,
    write("4dl kuhane kave"),nl,
    write("5dl slatkog vrhnja"),nl,
    write("20dg mlijecnog namaza"),nl,
    write("15dg secera u prahu"),nl,
    write("1 vanilin secer"),nl,
    write("3 zlicice kakao praha"),nl,nl,
    write("PRIPREMA:"),nl,
    write("1. Skuhati kavu da se napravi talog koji cemo baciti."),nl,
    write("2. Miksati slatko vrhnje sa vanilin secerom, a kada se dobije cvrsti slag, dodati i mlijecni namaz te pomijesati."),nl,
    write("3. Namociti piskote te ih sloziti u jedan sloj, zatim premazati sa polovinom slag-kreme, poravnati i sloziti drugi red piskota."),nl,
    write("4. Preostalom slag-kremom premazati gore i oko kolaca."),nl,
    write("5. Posuti kakaom u prahu i ostaviti preko noci u hladnjaku da kolac ocvrsne!"),nl,nl.
recept5:-
   write("Schwarzwald torta"),nl,
   write("Sastojci za biskvit:"),nl,
   write("130g maslaca"),nl,
   write("150g secera u prahu"),nl,
   write("2 vrecice vanilin secera"),nl,
   write("4 jaja"),nl,
   write("100g cokolade"),nl,
   write("50g psenicnog ostrog brasna"),nl,
   write("1/2 vrecice praska za pecivo"),nl,
   write("50g Gussnela Dolcela"),nl,
   write("50g mljevenih badema"),nl,
   write("50g krusnih mrvica"),nl,nl,
   write("Sastojci za nadjev:"),nl,
   write("1 staklenka visanja"),nl,
   write("2 zlice secera"),nl,
   write("4 zlice visnjevace ili maraskina"),nl,
   write("40g Gussnela Dolcela"),nl,
   write("600ml slatkog vrhnja"),nl,
   write("2 vrecice vanilin secera"),nl,
   write("3 vrecice Slagfixa Dolcela"),nl,nl,
   write("PRIPREMA za nadjev:"),nl,
   write("1. Visnje ocjediti (340g), a sok zagrijati. Umijesati secer, vanilin secer, visnjevacu i Gussnel (koji je razmucen sa 2 zlice soka od visanja.)"),nl,
   write("2. Smjesu kratko prokuhati."),nl,
   write("3. Dodati ocjijedene visnje i ostaviti da se nadjev ohladi."),nl,
   write("Slatko vrhnje mijesati elektricnom mjesalicom te umijesati i vanilin secer, Slagfix i mjesati dok se ne dobije cvrsti slag."),nl,
   nl,nl,
   write("PRIPREMA biskvita:"),nl,
   write("1. Maslac, secer i vanilin secer pjenasto izmjesati i dodati zumanjke, naribanu cokoladu, brasno pomijesano s praskom za pecivo i Gussnel"),nl,
   write("2. Na kraju u smjesu lagano umijesati mljevene bademe pomijesane s krusnim mrvicama i cvrstim snijegom od bjelanjaka."),nl,
   write("3. Dobivenu smjesu staviti u kalup za torte promjera 24cm koji je namazan maslacem i posut brasnom."),nl,
   write("4. Peci u pecnici na 18' C stupnjeva u trajanju od 45 minuta."),nl,
   write("5. Ohladeni biskvit narezati na tri lista i svaki list torte nakapajti likerom i premazati nadjevom od visanja i tucenim slatkim vrhnjem."),nl,nl.

recept6:-
    write("Sladoled od limuna"),nl,nl,
    write("Sastojci:"),nl,
    write("150g secera"),nl,
    write("1 limun"),nl,
    write("3 bjelanjka"),nl,
    write("250ml slatkog vrhnja"),nl,nl,
    write("PRIPREMA:"),nl,
    write("1. Bjelanjke zamutiti u cvrst 'snijeg' sa prstohvatom soli."),nl,
    write("2. Koru limuna naribati i pomijesati sa limunovim sokom i secerom."),nl,
    write("3. Kuhati na laganoj vatri dok se ne dobije sirup koji dodajemo zamucenim bjelanjcima"),nl,
    write("4. Slatko vrhnje zamutimo kao klasican slag te dodamo smjesi sa sirupom"),nl,
    write("5. Dobivenu smjesu rasporediti u zdjelice te ostaviti preko noci u zamrzivacu!"),nl,nl.

doslusanja:-
    write("Bilo mi je drago popricati s tobom, ali sad zurim dalje, puno je toga sto jos ne znam o kuhanju!!"),nl,
    write("Nadam se da cemo se jos koji put sresti!"), nl.
