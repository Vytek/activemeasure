// typewriter.typ
#set page(
  paper: "a4",
  margin: (x: 1.0cm, y: 2.5cm),
  fill: rgb("#f4ecd8"), // Vintage aged paper color
)

#set text(
  font: "Mom´sTypewriter",
  size: 10pt,
  fill: rgb("#2b2b2b"),
  lang: "it",
  hyphenate: true,
)

// Number pahe
#set page(numbering: (current, total) => [#current / #total])

// Deterministic pseudo-random jitter generator (no external RNG needed)
#let seedrand(seed) = {
  let x = calc.rem(seed * 9301 + 49297, 233280)
  x / 233280
}

// Renders one "typed" character with jitter
#let typed-char(ch, index) = {
  let r1 = seedrand(index * 3 + 1)
  let r2 = seedrand(index * 7 + 2)
  let r3 = seedrand(index * 13 + 5)

  let dy = (r1 - 0.5) * 1.2pt // vertical jitter (baseline wobble)
  let rot = (r2 - 0.5) * 3deg // slight rotation per key strike
  let opacity = 70% + r3 * 30% // ink density variation

  box(
    move(
      dx: 0pt,
      dy: dy,
      rotate(rot, origin: bottom + left, text(fill: rgb("#2b2b2b").transparentize(100% - opacity), ch)),
    ),
  )
}

#let typewriter-line(s) = {
  let chars = s.clusters()
  for (i, c) in chars.enumerate() {
    if c == " " {
      " "
    } else {
      typed-char(c, i)
    }
  }
}

// Simulate a strikeout / correction (common on typewriters)
#let strikeout(s) = {
  box(stack(dir: ttb, typewriter-line(s), v(-0.85em), line(
    length: 100% * s.len() * 0.55,
    stroke: 1.2pt + rgb("#2b2b2b"),
  )))
}

#figure(
  image("/photos/logo.png"),
  caption: [Logo ufficiale del LARP],
) <fig:logo>

#align(center)[di Enrico Speranza per il LARP: Active Measure - Operation Infektion]

= 🎭 LARP EDUCATIVO - CHAMBER LARP

== “Operation Infektion – Le Misure Attive nella Guerra Fredda”

=== Il Concept

I giocatori vengono trasportati nel 1985. Non si combatte con le armi, ma con le parole. Lo scopo non e' conquistare territori, ma la memoria collettiva e la loro mente.

Il gioco e' asimmetrico: una fazione (KGB/Stasi) cerca di costruire una menzogna credibile; l'altra (USA/Occidente) cerca di scoprire la fonte e arginare il danno, Media/Scienziati/Professori/Politici statunitensi devono decidere a chi credere sapendo che i loro comportamenti e scelte avranno ripercussioni su tutta l'opinione pubblica statunitense e quindi mondiale.

=== 🎯 Obiettivi didattici

Al termine del LARP i partecipanti saranno in grado di:

- Capire cos’e' una misura attiva
- Riconoscere meccanismi di disinformazione
- Analizzare propaganda, bias cognitivi, canali di diffusione
- Collegare la Guerra Fredda al mondo informativo di oggi

------

== 👥 Numero partecipanti

- Ideale: 5–10 giocatori
- Durata: 2–3 ore
- Nessun costume necessario (EDU-LARP da camera)

------

== 🌍 Ambientazione

1980–1987, mondo occidentale

Un’epidemia misteriosa (AIDS) sta generando paura. Diverse potenze e attori cercano di controllare la narrazione.

=== Breve cronologia dei fatti storici salienti

Origini e Scoperta

- 1981 (5 giugno): Il Centers for Disease Control and Prevention (CDC) pubblicano un bollettino sui primi casi di polmonite insolita in giovani uomini a Los Angeles, segnando l'inizio ufficiale della cronaca dell'epidemia.
- 1982: La nuova malattia viene ufficialmente denominata AIDS (Sindrome da Immunodeficienza Acquisita).

Isolamento del Virus e Diagnosi

- 1983: All'Istituto Pasteur di Parigi, il gruppo guidato da Luc Montagnier isola per la prima volta il virus responsabile dell'AIDS (chiamato inizialmente LAV).
- 1984: Il team americano di Robert Gallo dimostra che il virus (ribattezzato HTLV-III) e' la causa dell'AIDS, portando allo sviluppo dei test diagnostici per il sangue.
- 1987: La Food and Drug Administration (FDA) approva la zidovudina (AZT), il primo farmaco antiretrovirale per il trattamento dell'infezione.

Svolta Terapeutica e Lotta Globale

- 1988 (1 dicembre): Viene celebrata per la prima volta dall'Organizzazione Mondiale della Sanita' la Giornata Mondiale contro l'AIDS.

(Molto interessante a questo proposito il film: The Normal Heart, (2014) HBO Mark Ruffalo Jim Parsons tratto dall'opera teatrale The Normal Heart di Larry Kramer che cerca di ricostruire l'atmosfera di urgenza, panico, disorientamente che spesso ha dato sfogo ad accuse di complottismo e disinformazione usate abbondantemente in maniera consapevol od incosapevole dall'AM sovietica https://en.wikipedia.org/wiki/The_Normal_Heart).

Anno 1980

- Gennaio: Jimmy Carter ritira il trattato SALT II e vieta l'export di tecnologia verso l'URSS a causa dell'invasione dell'Afghanistan.
- Luglio-Agosto: 65 nazioni occidentali boicottano le Olimpiadi di Mosca per protesta contro l'URSS.
- Novembre: [Ronald Reagan](https://ladigacivile.eu/l_italia_degli_anni_80) vince le elezioni presidenziali negli Stati Uniti su una linea di forte chiusura anticomunista.
- Agosto-Settembre: Nasce in Polonia il sindacato indipendente *Solidarność* guidato da Lech Wałęsa, sfidando l'egemonia comunista.

Anno 1981

- Gennaio: Ronald Reagan si insedia come 40° presidente degli Stati Uniti.
- Dicembre: Il generale Wojciech Jaruzelski proclama la legge marziale in Polonia per reprimere il movimento *Solidarność*, con il forte appoggio preventivo di Mosca.

Anno 1982

- Novembre: Muore Leonid Brežnev, leader dell'Unione Sovietica. Jurij Andropov (Direttore generale del KGB dal 1967-1982) gli succede come segretario generale del PCUS.

Anno 1983

- Marzo: Reagan annuncia la Strategic Defense Initiative (SDI), nota come "Guerra Stellari", un sistema di difesa spaziale antimissilistico.
- Marzo: Reagan definisce l'Unione Sovietica un "impero del male" nel suo celebre discorso.
- Novembre: Inizia l'installazione dei missili nucleari americani Pershing II in Europa occidentale (Germania Ovest) in risposta ai missili sovietici SS-20.
- Novembre: Esercitazione NATO *Able Archer 83*, un test di comando che per errore sfiora l'allarme atomico preventivo da parte di Mosca.

Anno 1984

- Febbraio: Muore Jurij Andropov; Konstantin Černenko diventa il nuovo segretario generale del PCUS.
- Luglio-Agosto: L'Unione Sovietica e i paesi del Patto di Varsavia boicottano i Giochi Olimpici di Los Angeles in risposta al boicottaggio americano dei Giochi Olimpici di Mosca del 1980.

Anno 1985

- Marzo: Muore Konstantin Černenko. Michail Gorbačëv diventa il nuovo segretario generale del PCUS e avvia le riforme di *Perestrojka* (ristrutturazione) e *Glasnost'* (trasparenza).
- Novembre: Si tiene il vertice di Ginevra, il primo incontro ufficiale tra Ronald Reagan e Michail Gorbačëv, che riapre il dialogo diplomatico tra le due superpotenze.
- 10 marzo: morte di Konstantin Cernenko.
- 11 marzo: Michail Gorbačëv diventa leader dell'Unione Sovietica.
- 15 marzo: termina in [Brasile](https://it.wikipedia.org/wiki/Brasile) il [governo militare](https://it.wikipedia.org/wiki/Dittatura_militare_brasiliana).
- 24 marzo: il maggiore [Arthur D. Nicholson](https://it.wikipedia.org/wiki/Arthur_D._Nicholson?action=edit&redlink=1), un ufficiale dell'[intelligence militare](https://it.wikipedia.org/wiki/Intelligence_militare) dell'[US Army](https://it.wikipedia.org/wiki/US_Army) viene colpito a morte da una sentinella sovietica nella [Germania Est](https://it.wikipedia.org/wiki/Repubblica_Democratica_Tedesca). e' elencato come l'ultima vittima degli Stati Uniti nella Guerra Fredda.
- 20 maggio: l'FBI arresta [John Anthony Walker](https://it.wikipedia.org/wiki/John_Anthony_Walker).
- 6 agosto: in concomitanza con il 40º anniversario del bombardamento atomico di Hiroshima e Nagasaki, l'Unione Sovietica inizia quella che ha annunciato essere una moratoria unilaterale di 5 mesi sui test delle armi nucleari. L'amministrazione Reagan respinge la mossa drammatica come nient'altro che propaganda e si rifiuta di seguirne l'esempio. Gorbačëv dichiara diverse proroghe, ma gli Stati Uniti non riescono a ricambiare e la moratoria termina il 5 febbraio 1987.
- 21 novembre: Reagan e Gorbačëv si incontrano per la prima volta ad un [vertice](https://it.wikipedia.org/wiki/Vertice_di_Ginevra_(1985)) a Ginevra, in Svizzera, dove concordano altri due (poi tre) vertici.

Anno 1986

- 15 aprile: [Attacco missilistico libico contro Lampedusa](https://it.wikipedia.org/wiki/Attacco_missilistico_libico_contro_Lampedusa)
- 26 aprile: [Disastro di Černobyl'](https://it.wikipedia.org/wiki/Disastro_di_Černobyl'): una centrale nucleare sovietica in Ucraina esplode, provocando il peggior incidente nucleare della storia.
- 11-12 ottobre: [vertice di Reykjavík](https://it.wikipedia.org/wiki/Vertice_di_Reykjavík): una svolta nel controllo degli armamenti nucleari.
- 3 novembre: [Irangate](https://it.wikipedia.org/wiki/Irangate): l'amministrazione Reagan annuncia pubblicamente di aver venduto armi all'Iran in cambio di ostaggi e di aver trasferito illegalmente i profitti ai ribelli Contra in Nicaragua.

1987

- 16 gennaio: inizia la [Perestrojka](https://it.wikipedia.org/wiki/Perestrojka). e' speranza di Gorbachev che attraverso iniziative di apertura, dibattito e partecipazione, il popolo sovietico sosterra' la Perestrojka.

= Introduzione al LARP

Active Measures ovvero “misure attive” é una simulazione ricreata tramite narrazione interattiva delle operazioni di disinformazione (e relativi vari tentativi di contrasto) ad opera dell'Unione Sovietica durante il periodo storico della cosiddetta “Guerra Fredda”.

*Active Measures* deve intendersi comunque piu' come un “Serious Game” con finalita' soprattutto didattiche ed educative. Scopo ultimo e' quello di creare un “vaccino” alle vaste e reali campagne di disinformazione allenando le menti di tutti alla comprensione delle enormi ripercussioni sulle nostre scelte, credenze e comportamenti.  Per comprendere la tematica principale del gioco verranno citati diversi testi e pubblicazioni che se ne sono occupati ampiamente sia a livello storico che di analisi da parte di famose agenzie di intelligence. E' di estrema importanza capire le ideolgie e la logica storica che hanno guidato tali complesse operazioni, quindi e' necessario un lungo preambolo per comprendere pienamente cosa fosse una "Misura Attiva".

== Personaggi giocanti URSS

=== 1. Il Generale del KGB

Generale Viktor Anatolyevich Volkov

- Ruolo: Generale del Primo Direttorato Centrale (Dipartimento A).
- Storia: Un veterano glaciale e calcolatore che ha costruito la sua carriera sventando complotti veri e presunti durante l'era Brežnev. Crede fermamente nell'ideale comunista, ma disprezza la corruzione dei burocrati di partito che vivono nel lusso mentre il popolo fa la fila per il pane. e' temuto da tutti e le sue reti di informatori sono ovunque.
- Obiettivo Pubblico: Attuare le principale Misure Attive seguendo i dettami .
- Segreto Inconfessabile: Incredibilemente non ha alcun segreto da proteggere se non che e' un fervente marxista/leninista e crede che operazioni di questo tipo debbano arrecare il massimo danno possibile all'avversario, ovvero ai capitalisti americani che sono d'intralcio al grande progetto dell'Internazionale Comunista portato avanti dall'Unione Sovietica. E'  conderato uno dei principali ideologi politici e militari delle A.M. (Aktivnye Meropriyatiya (*Aктивные Mероприятия*))
- Cosa puo' fare: E' colui che detta le linee strategia e coordinala fazione. Tuttavia ovviamente, nel pieno adempimento della dottrina della "maskirovka" (etteralmente "mascheramento" o "camuffamento", inteso come inganno strategico) potrà, grandi linee, dettare la narrazione da tenere senza pero' mai ma poter firmare direttamente articoli, video, radio, interviste, comunicati stampa od ogni altro pezzo apparso su qualsivoglia mezzo di comunicazione di massa.

*NOTA: Questo ruolo e' solo e soltanto maschile, rispecchia la misoginia dell'URSS in cui i ruoli chiave erano prevalentemente maschili pur essendoci molte figure anche femminili nei ruoli intermedi e molto propagandati all'estero.*

*NOTA 2: Questo ruolo potrebbe essere ricoperto, qualora fosse necessario oppure per mancanza del giocatore relativo, da uno degli organizzatori del LARP così da guidare meglio lo sviluppo ed il gioco stesso* 

=== 2. Il Colonnello dell'Armata Rossa

Colonnello Sergei Ivanovich Sokolov

- Ruolo: Ufficiale pluridecorato, da poco rientrato dal fronte in Afghanistan.
- Storia: Sergei era un soldato fedele e un eroe dell'Unione Sovietica, ma gli anni passati nelle valli afghane lo hanno spezzato. Ha visto migliaia di giovani coscritti morire per tattiche miopi e per la mancanza di equipaggiamento adeguato, mentre in patria la televisione parlava di "operazioni di pace e costruzione di scuole".
- Obiettivo Pubblico: Sfruttare al massimo i contatti e conoscenze che il KGB ha per poter infiltrare e sovvertire tutti i paese capitalisti. La sua rabbia incontrollata incredibilmente si e' tramutata in uno zelo spasmodico, in un agire gelido e preciso nel manipolare le proprie risorse nell'attuazione di piani sempre piu complessi.
- Segreto Inconfessabile: Incredibilemente non ha alcun segreto da proteggere se non che e' un fervente marxista/leninista e crede che operazioni di questo tipo debbano arrecare il massimo danno possibile all'avversario, ovvero ai capitalisti americani che sono d'intralcio al grande progetto dell'Internazionale Comunista portato avanti dall'Unione Sovietica.
- Cosa puo' fare: Ha a disposizione le schede complete di altri giocatori sia della fazione URSS che USA tranne quella relativa al proprio superiore. E' responsabile del reclutamento ed attuazione degli agenti d'influenza e della "Kombinatsia" nell'attuazione di tali operazioni attraverso. Può ovvimente servirsi di tutto il personale della fazione URSS per l'attuazione di tali operazioni in URSS e USA.

=== 3. La Maestra del Falso (KGB, Servizio A)

Colonnello Elizaveta Evgen'evna Ivanova

- Ruolo: Colonnello del Servizio A (Misure Attive) del Primo Direttorato Principale. Ufficialmente accreditata al vertice come "Consigliera Accademica per la Storia Contemporanea" della delegazione sovietica.
- Storia: Se altri agenti seducono e manipolano con le parole, Polina lo fa con l'inchiostro e la carta. E' l'architetto tecnico delle piu' brillanti campagne di disinformazione dell'ultimo decennio. Dirige il laboratorio segreto di Mosca che fabbrica documenti classificati occidentali, crea finte organizzazioni pacifiste e finanzia giornali compiacenti nel Terzo Mondo. Ha una mente analitica, spietata e conosce le paure e la paranoia della societa' americana meglio di chiunque altro. Non ama i riflettori, preferisce muovere le marionette dall'ombra, osservando il caos che le sue creazioni scatenano.
- Obiettivo Pubblico: Validare dal punto di vista "accademico" e "scientifico" le accuse dell'Operazione Denver (il virus creato in laboratorio). Deve fornire argomentazioni inattaccabili alla stampa e rassicurare i propri superiori (come la Generale Romanova) che la documentazione fabbricata e' assolutamente a prova di bomba.
- Segreto Inconfessabile: Incredibilemente non ha alcun segreto da proteggere se non che e' una fervente marxista/leninista e crede che operazioni di questo tipo debbano arrecare il massimo danno possibile all'avversario, ovvero ai capitalisti americani ceh sono d'intralcio al grande progetto dell'Internazionale Comunista portato avanti dall'Unione Sovietica.
- Cosa puo' fare: Ha a disposizione le schede complete di altri giocatori sia della fazione URSS che USA tranne quella relativa al proprio superiore. E' responsabile del reclutamento ed attuazione degli agenti d'influenza e della "Kombinatsia" nell'attuazione di tali operazioni attraverso. Può ovvimente servirsi di tutto il personale della fazione URSS per l'attuazione di tali operazioni in URSS e USA.

=== 4. Il Capo Redattore della APN - Agenzia di stampa Novosti

Yuri Nikolaevitch Borzov

- Ruolo: Capo Redattore della principale Agenzie di Stampa del Partito Comunista.
- Storia: Yuri e' il maestro dell'illusione. Sa esattamente come trasformare un disastro agricolo in una "vittoria eroica del proletariato rurale" o nascondere un fallimento spaziale. e' un uomo cinico, colto, che veste abiti sartoriali e fuma sigarette americane di contrabbando nella sua dacia privata. Conosce la verita' meglio di chiunque altro, proprio perché e' lui a doverla nascondere.
- Obiettivo Pubblico: Mantenere la linea del Partito in un decennio turbolento (la rapida successione di leader morenti come Andropov e Černenko), conservando i propri privilegi. Segue peddisequamente i dettami del partito e pubblica qualsiasi notizia gli sia dato purche' questa non intacchi la sua carriere e la sua rilevante immagine pubblica nazionale ed internazionale.
- Segreto Inconfessabile: Yuri ha tra le mani le prove documentali di un disastro nucleare o industriale taciuto dal governo (come l'incidente di Majak o un precursore di Černobyl'). Il suo istinto di giornalista gli urla di pubblicarlo per salvare vite umane, ma il suo istinto di sopravvivenza gli impone di bruciare tutto.
- Cosa puo' fare: può scrivere comunicati ufficiali per la propria agenzia oltre ad ogni altra attività giornalista della fazione URSS. Ha contatti con un suo omologo collega della fazione USA. Può viaggiare e incontrare PG USA giornalista previa autorizzazione del KGB anche su suolo URSS (stanza URSS).

=== 5. La Direttrice dell'Agenzia di Stampa TASS (URSS)

Irina Petrovna Volokova

- Ruolo: Direttrice Generale della TASS (l'agenzia di stampa ufficiale sovietica).
- Storia: Irina e' la voce dell'Unione Sovietica. Decide quali notizie dal mondo filtrano oltre la Cortina di Ferro e come le imprese del Partito vengono raccontate. e' una maestra della manipolazione psicologica e della propaganda. Frequenta i salotti del potere di Mosca, bevendo vodka con i generali e rassicurando i cittadini che il comunismo sta trionfando ovunque.
- Obiettivo Pubblico: Nascondere il disastroso bilancio degli esperimenti di manipolazione genetica in USSR che non hanno portato a nulla di militarmente concreto e dipingere gli Stati Uniti come una nazione sull'orlo del collasso sociale.
- Segreto Inconfessabile: Sotto lo pseudonimo di *Vera S.*, Irina e' l'autrice di poesie e romanzi clandestini ferocemente anti-sovietici, che vengono contrabbandati e pubblicati con enorme successo a Parigi e New York. Il KGB  sta dando una caccia spietata a questa misteriosa autrice dissidente, non sospettando che si nasconda proprio nel cuore dell'apparato di propaganda. Ritiene che l'arrivo del virus HIV/AIDS in Unione Sovietica sia una sorta di maledizione soprannaturale per le malefatte del governo sovietico ed il suo agire sconsiderato e miope nei confronti del popolo russo.
- - Cosa puo' fare: può scrivere comunicati ufficiali per la propria agenzia oltre ad ogni altra attività giornalista della fazione URSS. Ha contatti con un suo omologo collega della fazione USA. Può viaggiare e incontrare PG USA giornalista previa autorizzazione del KGB anche su suolo URSS (stanza URSS).

=== 6. L'Ambasciatore dell'URSS negli USA

Dmitry Leonidovich Kuznetsov

- Ruolo: Ambasciatore Straordinario e Plenipotenziario dell'URSS a Washington D.C.
- Storia: Carismatico, poliglotta e affascinante. Dmitry e' il volto rassicurante dell'URSS in Occidente. Frequenta i salotti di Washington, dialoga con i senatori americani e stringe la mano a Ronald Reagan. Dietro il suo sorriso diplomatico, pero', c'e' la cupa consapevolezza che l'economia sovietica non puo' reggere la nuova corsa agli armamenti (il progetto "Star Wars" americano).
- Obiettivo Pubblico: Allentare le tensioni diplomatiche e negoziare trattati sul disarmo per far guadagnare tempo all'economia sovietica, ormai al collasso.
- Segreto Inconfessabile: La CIA lo ha avvicinato con un'offerta di defezione estremamente allettante per lui e la sua famiglia. Dmitry non ha ancora accettato, ma non ha nemmeno denunciato il contatto al KGB. Sta segretamente valutando se l'Unione Sovietica sia una nave che affonda da cui fuggire.
- Cosa può fare: Può scrivere comunicati ufficiali del Ministero degli'esteri. Ha contatti con un suo omologo collega della fazione USA. Può viaggiare e incontrare ogni membro della fazione USA anche sul suolo USA (stanza USA). Agisce di concerto con il KGB pur mantenendo una certa autonomia operativa e politica.

=== 7. L'Ambasciatrice dell'URSS negli USA

Ambasciatrice Lyudmila Ivanovna Chernova

- Ruolo: Ambasciatrice Straordinaria e Plenipotenziaria dell'Unione Sovietica a Washington D.C.
- Storia: Arrivare a essere il volto dell'URSS negli Stati Uniti in un mondo politico rigidamente dominato dagli uomini ha richiesto a Lyudmila un'intelligenza spietata e una compostezza glaciale. Sopravvissuta alle tempeste politiche e ai continui cambi di leadership al Cremlino, e' nota ai vertici di Washington per i suoi modi impeccabili, il suo inglese perfetto e la sua abilita' nel respingere le provocazioni della stampa americana con un sorriso tagliente. Rappresenta il volto "colto e moderno" del blocco sovietico, ma dietro le quinte e' una negoziatrice feroce, capace di tenere testa sia ai falchi del Pentagono che ai paranoici burocrati di Mosca.
- Obiettivo Pubblico: Utilizzare il vertice di Ginevra per presentare l'URSS come la vera nazione garante della pace globale. Ha il mandato di sfruttare lo scandalo dell'Operazione INFEKTION (le accuse su Fort Detrick) non per scatenare una guerra aperta, ma come potente leva diplomatica per forzare gli USA a ritirare i missili dall'Europa e bloccare il progetto spaziale SDI ("Star Wars").
- Segreto Inconfessabile: Il marito di Lyudmila, un brillante scienziato rimasto in ostaggio dorato a Mosca, ha sviluppato una rara e letale malattia del sangue. Le cure mediche sovietiche si sono rivelate del tutto inefficaci. Disperata, Lyudmila ha stretto un patto di altissimo tradimento con i vertici della CIA: in cambio di farmaci sperimentali americani contrabbandati segretamente in URSS tramite la sua valigia diplomatica, lei si e' impegnata a far deragliare in modo credibile l'Operazione INFEKTION. Deve quindi fare in modo che la disinformazione sovietica fallisca senza far sospettare al KGB che ci sia stato un sabotaggio interno. Se il GRU o il Servizio A del KGB dovessero scoprire la verita', lei finirebbe davanti al plotone d'esecuzione per alto tradimento.
- Cosa può fare: Può scrivere comunicati ufficiali del Ministero degli'esteri. Ha contatti con un suo omologo collega della fazione USA. Può viaggiare e incontrare ogni membro della fazione USA anche sul suolo USA (stanza USA). Agisce di concerto con il KGB pur mantenendo una certa autonomia operativa e politica.

=== 8. Il Virologo (URSS)

Dott. Mikhail Sergeyevich Yefremov

- Ruolo: Vicedirettore dell'Istituto *Biopreparat* (il vasto e segreto programma sovietico per le armi biologiche) e delegato scientifico per l'URSS al vertice di Ginevra.
- Storia: Mikhail e' una delle menti piu' brillanti della sua generazione, ma e' un uomo profondamente cinico. Ha barattato l'etica medica con fondi illimitati e laboratori all'avanguardia. Mentre la propaganda ufficiale lo esalta come l'eroe che sta sconfiggendo le malattie infettive nel Terzo Mondo, la sua vera specialita' e' la militarizzazione di virus letali come il vaiolo e il Marburg. Considera la politica e le "misure attive" del KGB come distrazioni per menti inferiori; per lui, l'unica vera superpotenza mondiale e' la biologia.
- Obiettivo Pubblico: Sostenere pubblicamente e con inattaccabile rigore scientifico che il virus dell'HIV presenta tracce evidenti di manipolazione genetica in laboratorio (avvalorando così le accuse contro gli USA e Fort Detrick). Deve usare il suo prestigio per umiliare i delegati americani e dimostrare la superiorita' etica e scientifica dell'Unione Sovietica.
- Segreto Inconfessabile: Mikhail disprezza la farsa dell'Operazione INFEKTION/DENVER, sapendo benissimo che l'accusa contro gli USA e' una montatura del KGB priva di fondamento. Reputa pero' queste attivita' di propaganda completamente inutili e soprattutto delle distrazioni nel suo prezioso lavoro. Collabora di mala voglia, ma esegue gli ordini pedissequamente ed in maniera svogliata, quel minimo che basta per non essere incolpato od estromesso da qualche ruolo ben piu' importante o dal suo laboratorio.
- Cosa può fare: E' il riferimento scientifico ed accademico della fazione URSS nel campo della virologia e branche affini, è l'unico che può quindi pubblicare articoli scientifici sulle riviste peer-rewied sovietiche che hanno un eco tangibile sulla comunità scientifica americana e mondiale. Ha contatti con un suo omologo collega della fazione USA soprattutto in ambito accademico. 

=== 9. La Virologa (URSS)

Dott.ssa Elena Vladimirovna Morozova

- Ruolo: Scienziata di punta del progetto *Biopreparat* (il programma segreto sovietico per le armi biologiche).
- Storia: Elena e' entrata nella ricerca medica per salvare vite, sviluppando vaccini contro la poliomielite e il vaiolo. Tuttavia, la sua genialita' ha attirato l'attenzione dei militari, che l'hanno trasferita a forza in una struttura segreta (una citta' chiusa) per trasformare i virus in armi di distruzione di massa per la Guerra Fredda.
- Obiettivo Pubblico: Dimostrare ai generali (e al Colonnello Sokolov) che i fondi per la ricerca biologica sono ben spesi, mantenendo la copertura di una ricerca puramente difensiva.
- Segreto Inconfessabile: Pochi anni prima, un errore nel suo laboratorio ha causato la fuoriuscita di spore di antrace letali, uccidendo decine di civili innocenti in una citta' vicina (ispirato al reale incidente di Sverdlovsk del 1979). Il KGB ha insabbiato tutto incolpando della carne avariata. Elena, divorata dal senso di colpa, sta microfilmando i dati del progetto per farli arrivare all'Organizzazione Mondiale della Sanita'.
- Cosa può fare: E' il riferimento scientifico ed accademico della fazione URSS nel campo della virologia e branche affini, è l'unico che può quindi pubblicare articoli scientifici sulle riviste peer-rewied sovietiche che hanno un eco tangibile sulla comunità scientifica americana e mondiale. Ha contatti con un suo omologo collega della fazione USA soprattutto in ambito accademico.

== Personaggi giocanti USA

=== 1. Il Senatore (USA)

Senatore Robert "Bob" Sterling

- Ruolo: Senatore Repubblicano, membro di spicco della Commissione per i Servizi Armati.
- Storia: Un politico carismatico, falco della Guerra Fredda e fervente sostenitore della dottrina di Reagan della "Pace attraverso la Forza". e' uno dei principali promotori del progetto SDI (lo scudo spaziale noto come "Star Wars") e sostiene l'invio di armi ai ribelli anticomunisti in tutto il mondo. Vende l'immagine del perfetto patriota americano.
- Obiettivo Pubblico: Aumentare il budget della Difesa per schiacciare economicamente l'URSS e smascherare qualsiasi politico americano "morbido" con il comunismo.
- Segreto Inconfessabile: e' pesantemente coinvolto in un traffico d'armi illegale (simile allo scandalo Iran-Contra). Sta deviando fondi neri per finanziare guerriglieri all'estero, arricchendo contemporaneamente alcuni appaltatori della difesa che finanziano occultamente la sua imminente campagna presidenziale. Se scoperto, finirebbe in prigione per alto tradimento.
- Cosa puo' fare: Può scrivere disegni di legge ed interpellanze parlamentari oltre ogni altra azione politica regolata dalla costituzione e dalla prassi USA. Puo', attarverso PG USA giornalista, dare notizie e informazioni sulla politica nazionale ed internazione USA oltre a commentare le decisioni politiche URSS. Ha contatti con un suo omologo collega della fazione URSS. Può viaggiare e incontrare ogni membro della fazione USA anche sul suolo URSS (stanza URSS) previa autorizzazione del PG FBI USA.

=== 2. La senatrice (USA)

Senatrice Katherine "Kate" Montgomery

- Ruolo: Senatrice Democratica, Membro Anziano della Commissione per le Relazioni Estere del Senato USA.
- Storia: Elegante, astuta e ferocemente ambiziosa, Kate e' considerata da molti la prossima candidata naturale alla Presidenza. Si presenta come la voce della ragione, pronta a criticare le spese militari incontrollate dell'amministrazione Reagan e a spingere per un dialogo reale con Mosca, senza pero' mai apparire "debole" di fronte al comunismo. Utilizza la diplomazia come una partita a scacchi, prevedendo sempre tre mosse in anticipo.
- Obiettivo Pubblico: Dimostrare leadership. Vuole sventare la crisi diplomatica causata dalla disinformazione sull'HIV e costringere la delegazione sovietica a firmare gli storici trattati per la riduzione degli armamenti, garantendo la pace e spianando la sua strada verso la Casa Bianca.
- Segreto Inconfessabile: Il figlio ventenne della Senatrice ha da poco contratto l'HIV che pero' nessuno ancora conosce come un virus. Nel clima di puro terrore e forte stigma sociale degli anni '80, Kate sta nascondendo disperatamente la notizia per proteggere il ragazzo e la propria carriera. Ha ricevuto informazioni classificate secondo cui gli scienziati sovietici (il progetto *Biopreparat*) stanno testando in gran segreto un siero antivirale sperimentale. Kate e' disposta a tutto per ottenere quel siero. e' segretamente pronta a sabotare la posizione negoziale degli Stati Uniti o a cedere ai ricatti sovietici pur di stringere un accordo sotto banco per salvare la vita di suo figlio.
- Cosa puo' fare: Può scrivere disegni di legge ed interpellanze parlamentari oltre ogni altra azione politica regolata dalla costituzione e dalla prassi USA. Puo', attarverso PG USA giornalista, dare notizie e informazioni sulla politica nazionale ed internazione USA oltre a commentare le decisioni politiche URSS. Ha contatti con un suo omologo collega della fazione URSS. Può viaggiare e incontrare ogni membro della fazione URSS anche sul suolo URSS (stanza URSS) previa autorizzazione del PG FBI USA.
 
=== 3. L'Agente dell'FBI (USA)

Agente Speciale Thomas "Tom" Miller

- Ruolo: Agente Senior della divisione Controspionaggio dell'FBI a Washington D.C.
- Storia: Un investigatore duro e disilluso, formatosi negli anni '70. Il suo lavoro e' dare la caccia alle spie sovietiche (gli "Illegali") infiltrate sul suolo americano. Ha sacrificato la sua vita privata per l'agenzia, sviluppando un'ossessione per il KGB che lo ha portato a sospettare di chiunque, persino dei suoi superiori.
- Obiettivo Pubblico: Identificare e arrestare una presunta talpa sovietica ad alto livello all'interno delle istituzioni di Washington.
- Segreto Inconfessabile: Tom e' la talpa. Anni fa, a causa di pesanti debiti di gioco contratti ad Atlantic City per curare la moglie malata, e' stato agganciato dal KGB. Da allora, e' costretto a bruciare le indagini dell'FBI e a depistare i suoi colleghi per proteggere le spie sovietiche in America, vivendo nel terrore costante di essere scoperto.
- Cosa puo' fare: Ha il delicato compito di sorvegliare tutto la fazione USA e di attuare misure di controllo, interviste pur rimanendo nell'ambito del rigido protocollo legale dell'FBI. Suo anche il compito di sorvegliare possibili interferenze estere di natura sovietica per sensibilizzare verso le "misure attive" facendo parte dell' Active Measure Working Group. Può dare parere negativo sull'uscita dagli USA del PG USA Senatore/trice, PG giornalista USA, PG Virologo/a USA. Come agente FBI non può entrare sul suol URSS (stanza URSS).

=== 4. L'Agente Supervisore dell'FBI (USA)

Agente Speciale Diane Foster

- Ruolo: Vicedirettrice della Divisione Controspionaggio dell'FBI.
- Storia: Diane ha dovuto combattere il doppio rispetto ai suoi colleghi uomini per ottenere il suo distintivo e il suo grado. e' cinica, stacanovista e non si fida di nessuno, nemmeno della CIA (che considera un branco di dilettanti paranoici). Le sue indagini sono metodiche, chirurgiche e inesorabili.
- Obiettivo Pubblico: Scovare una presunta talpa che sta passando i progetti del programma missilistico americano ai sovietici, interrogando diplomatici, politici e scienziati.
- Segreto Inconfessabile: Per ottenere la sua ultima promozione e sbarazzarsi di un superiore misogino che la stava ostacolando, Diane ha falsificato delle prove, facendolo sembrare un simpatizzante sovietico e costringendolo alle dimissioni. Ora, la *vera* talpa di Washington ha scoperto la sua frode e la sta ricattando per costringerla a deviare le indagini dell'FBI su piste false.
- Cosa puo' fare: Ha il delicato compito di sorvegliare tutto la fazione USA e di attuare misure di controllo, interviste pur rimanendo nell'ambito del rigido protocollo legale dell'FBI. Suo anche il compito di sorvegliare possibili interferenze estere di natura sovietica per sensibilizzare verso le "misure attive" facendo parte dell' Active Measure Working Group. Può dare parere negativo sull'uscita dagli USA del PG USA Senatore/trice, PG giornalista USA, PG Virologo/a USA. Come agente FBI non può entrare sul suol URSS (stanza URSS).

=== 5. Il Virologo (USA)

Dott. Arthur Vance

- Ruolo: Ricercatore Capo presso l'USAMRIID (Istituto di Ricerca Medica sulle Malattie Infettive dell'Esercito USA).
- Storia: Brillante, arrogante e ossessionato dalla superiorita' scientifica americana. Vance lavora ufficialmente alla difesa contro le minacce biologiche naturali e i focolai virali emergenti. Tuttavia, le sue ricerche sono fortemente finanziate dal Pentagono per studiare contromisure alle presunte armi biologiche sovietiche.
- Obiettivo Pubblico: Sviluppare vaccini universali e protocolli di difesa per proteggere l'esercito e i civili americani da attacchi batteriologici.
- Segreto Inconfessabile: Vance e' convinto che i sovietici siano decenni avanti nella guerra biologica. Per colmare il divario, sta conducendo test illegali e non etici per testare vaccini sperimentali su popolazioni vulnerabili negli Stati Uniti (come carcerati o pazienti psichiatrici), bypassando le norme della FDA.
- Cosa può fare: E' il riferimento scientifico ed accademico della fazione USA nel campo della virologia e branche affini, è l'unico che può quindi pubblicare articoli scientifici sulle riviste peer-rewied USA che hanno un eco tangibile sulla comunità scientifica americana e mondiale. Ha contatti con un suo omologo collega della fazione URSS soprattutto in ambito accademico. Può viaggiare e incontrare PG USA giornalista previa autorizzazione dell'FBI e KGB anche su suolo URSS (stanza URSS).

=== 6. La Virologa (USA)

Dott.ssa Evelyn Carter

- Ruolo: Ricercatrice Capo presso l'USAMRIID (Fort Detrick) e Consulente Scientifica della delegazione USA.
- Storia: Evelyn e' una scienziata brillante, pragmatica e mossa da una genuina dedizione alla salute pubblica. Ha dedicato la sua vita a studiare i patogeni piu' letali del pianeta per sviluppare vaccini e cure. Sa perfettamente che le accuse sovietiche sull'ingegnerizzazione dell'HIV a Fort Detrick sono un'assurdita' biologica, una menzogna costruita a tavolino per seminare il panico.
- Obiettivo Pubblico: Smontare pezzo per pezzo la pseudoscienza sovietica. Vuole difendere la reputazione di Fort Detrick e della comunita' scientifica americana, dimostrando al mondo che il dossier in mano ai giornalisti e' una rozza falsificazione.
- Segreto Inconfessabile: Sebbene l'HIV non sia stato creato a Fort Detrick, Evelyn *e'* coinvolta in una grave macchia oscura. Anni prima, un suo esperimento illegale e non autorizzato su un agente patogeno modificato (non l'HIV, ma una letale variante influenzale) e' sfuggito al controllo, causando la morte di alcuni tecnici di laboratorio. L'esercito USA ha insabbiato tutto. Il problema devastante di Evelyn oggi e' che nel falso dossier sovietico sono stati inseriti alcuni frammenti di dati reali rubati dal suo vecchio esperimento insabbiato. Se lei analizza e smonta troppo a fondo il dossier per provare che e' falso, rischia di attirare l'attenzione proprio su quei dati reali, esponendo l'esercito americano e distruggendo per sempre la propria vita e carriera.
- Cosa può fare: E' il riferimento scientifico ed accademico della fazione USA nel campo della virologia e branche affini, è l'unico che può quindi pubblicare articoli scientifici sulle riviste peer-rewied USA che hanno un eco tangibile sulla comunità scientifica americana e mondiale. Ha contatti con un suo omologo collega della fazione URSS soprattutto in ambito accademico. Può viaggiare e incontrare PG USA giornalista previa autorizzazione dell'FBI e KGB anche su suolo URSS (stanza URSS).

=== 7. La Giornalista (USA)

Sarah Jenkins

- Ruolo: Giornalista d'inchiesta per il *The Washington Post*.
- Storia: Cresciuta con il mito dello scandalo Watergate, Sarah e' una cronista d'assalto implacabile e idealista. Non ha paura di sfidare il governo e crede che la verita' debba essere sempre svelata, indipendentemente dalle conseguenze per la sicurezza nazionale. I suoi articoli fanno tremare i palazzi del potere.
- Obiettivo Pubblico: Scoprire gli scheletri nell'armadio dell'amministrazione USA e smascherare la corruzione legata alle spese militari della Guerra Fredda.
- Segreto Inconfessabile: La sua fonte piu' preziosa e anonima, che le ha fornito documenti per i suoi piu' grandi scoop, e' in realta' un agente provocatore del KGB. Sarah ha recentemente iniziato a sospettare di essere manipolata per pubblicare articoli che danneggiano strategicamente gli USA, ma la prospettiva di vincere un Premio Pulitzer le sta impedendo di troncare i ponti con la fonte.
- Cosa puo' fare: può scrivere comunicati ufficiali per la propria agenzia oltre ad ogni altra attività giornalista della fazione USA. Ha contatti con un suo omologo collega della fazione URSS. Può viaggiare e incontrare PG USA giornalista previa autorizzazione dell'FBI e KGB anche su suolo URSS (stanza URSS).

=== 8. Il Giornalista (USA)

David "Dave" Callahan

- Ruolo: Inviato Speciale e Giornalista d'Inchiesta per il *The New York Times*.
- Storia: Dave e' un veterano disilluso. Ha iniziato la sua carriera nel fango del Vietnam, imparando a proprie spese che la prima vittima di ogni guerra e' la verita', e che il governo americano mente tanto quanto quello sovietico. e' temuto a Washington per la sua penna al vetriolo e per le sue domande spietate durante le conferenze stampa. e' a Ginevra per coprire il summit sul disarmo, ma l'emergere del dossier su Fort Detrick ha risvegliato il suo istinto da predatore.
- Obiettivo Pubblico: Ottenere lo scoop del decennio. Vuole inchiodare al muro sia i diplomatici americani che quelli sovietici, costringendoli a dichiarare a verbale cosa sanno davvero sulle armi biologiche e sul nuovo, terrificante virus dell'HIV.
- Segreto Inconfessabile: Dietro l'immagine dell'incorruttibile mastino della stampa, Dave nasconde un devastante vizio del gioco d'azzardo che lo ha portato a contrarre debiti astronomici con la mafia italo-americana di New York. Un emissario del KGB lo ha avvicinato segretamente offrendogli una valigetta piena di contanti non tracciabili per estinguere il debito e salvargli la vita. In cambio, Dave deve pubblicare integralmente le "prove" sovietiche su Fort Detrick senza fare domande e senza verificarne l'autenticita'. Il suo dilemma e' atroce: vendere la propria integrita' (e tradire il proprio Paese) o rischiare di farsi uccidere dai creditori.
- Cosa puo' fare: può scrivere comunicati ufficiali per la propria agenzia oltre ad ogni altra attività giornalista della fazione USA. Ha contatti con un suo omologo collega della fazione URSS. Può viaggiare e incontrare PG USA giornalista previa autorizzazione dell'FBI e KGB anche su suolo URSS (stanza URSS).

=== 9. L'Ambasciatore USA negli URSS

William Pendleton

- Ruolo: Ambasciatore degli Stati Uniti a Mosca.
- Storia: Un diplomatico di carriera della vecchia scuola. Crede fermamente nella distensione (*détente*) e pensa che la retorica aggressiva del Senatore Sterling portera' inevitabilmente a un olocausto nucleare. Cerca di mantenere aperti i canali di dialogo con il Cremlino, anche nei momenti di massima tensione.
- Obiettivo Pubblico: Negoziare con successo trattati per la limitazione delle armi nucleari (come i futuri trattati START) ed evitare l'escalation militare.
- Segreto Inconfessabile: Pendleton e' caduto in una classica "trappola al miele" (*honey trap*). Ha una relazione clandestina con un'affascinante funzionaria del Ministero della Cultura sovietico, che lui sa bene essere un'agente del KGB. Pur di proteggerla e mantenere la relazione, Pendleton ha iniziato a "lasciarsi sfuggire" informazioni diplomatiche minori.
- Cosa può fare: Può scrivere comunicati ufficiali del Ministero degli'esteri. Ha contatti con un suo omologo collega della fazione URSS. Può viaggiare e incontrare ogni membro della fazione USA anche sul suolo URSS (stanza URSS). Agisce di concerto con il PG Senatore USA pur mantenendo una certa autonomia operativa e politica.

=== 10. L'Ambasciatrice (USA) all'ONU

Margaret "Peggy" Vance

- Ruolo: Ambasciatrice degli Stati Uniti presso le Nazioni Unite.
- Storia: Margaret e' un fulmine nei dibattiti pubblici. Elegante, colta e dalla lingua tagliente, e' l'incubo dei diplomatici sovietici all'ONU. Usa il palcoscenico delle Nazioni Unite per denunciare le violazioni dei diritti umani nel blocco sovietico. e' vista come la candidata ideale per diventare la prima donna Segretario di Stato.
- Obiettivo Pubblico: Isolare diplomaticamente l'URSS, convincendo gli alleati europei a boicottare le iniziative sovietiche e a schierare i missili Pershing in Europa.
- Segreto Inconfessabile: Sotto l'immacolata veste pubblica, Margaret nasconde una devastante dipendenza dal gioco d'azzardo e dall'alcol. Anni fa, per coprire un debito milionario a Las Vegas che avrebbe distrutto la sua carriera, ha accettato un prestito da un magnate straniero. Recentemente ha scoperto che quell'uomo era un agente di copertura del KGB. Ora e', a tutti gli effetti, una risorsa compromessa.
- Cosa può fare: Può scrivere comunicati ufficiali del Ministero degli'esteri. Ha contatti con un suo omologo collega della fazione URSS. Può viaggiare e incontrare ogni membro della fazione USA o URSS anche sul suolo URSS (stanza URSS). Agisce di concerto con il PG Senatore USA pur mantenendo una certa autonomia operativa e politica.

== Possibile organizzazione degli spazi nel LARP

#figure(
  image("/images/imagen-pegada-3.png"),
  caption: [Ipotesi di organizzazione degli spazi nel LARP delle due fazioni USA, URSS, Regia],
) <fig:imagen-pegada-3>

== Descrizione di massima sull'organizzazione e svolgimento del LARP

Il workshop iniziale sara' composto dalla proiezione di un filmato originali relativi alle Active Measure Sovietiche con relativa discussione. Il filmato dura circa 25 minuti e saro' seguito da una spiegazione di circa 10-15 minuti massimo di spiegazione dibattitto di quato visto.

Si veda filmato (Soviet Active Measure): https://youtu.be/1m3qAwMkmNY?si=JWQ32mloVJOvvq56

Sara' prevista la scelta dei 5 personaggi URSS e di cinque per USA.

Saranno create due stanze divisi tra di loro comunicanti attraverso radio, telefono e comunicazioni scritte. La differente disposizione delle due stanze e' schematizzato di seguito:

== Macro attivita' da svolgere nel LARP

==== FASE 1 (50 minuti)

- SCELTA ED INVIO DEI DOCUMENTI ALLEGATI DELLA CAMPAGNA DENVER OLTRE OGNI ALTRO DOCUMENTO SCELTO DAI 5 GIOCATORI DEL KGB (URSS) DA INVIARE A TUTTI I GIOCATORI DELL'OPPOSTA FAZIONE (USA) (20  minuti)
- NELLO STESSO TEMPO LA FAZIONE USA RICEVERA' TRAMITE IL GIOCATORE/TRICE FBI ED IL GOCATORE SENATORE/SENATRICE UNA BREVE RELAZIONE SUI RISULTATI DELLA COMMISSIONE DI INCHIESTA SUL PROGETTO MKULTRA (https://it.wikipedia.org/wiki/Progetto_MKULTRA) OPPURE DAL GIOCATORE VIROLOGO PER LA DENUNCIA DELL'ESPERIMENTO SULLA SIFILIDE DI TUSKEGEE (https://it.wikipedia.org/wiki/Studio_sulla_sifilide_di_Tuskegee) (stessi 20 MINUTI)
- RICEZIONE E DISCUSSIONE CONGIUNTA AL RIGUARDO DEGLI ARTICOLI RICEVUTI E LETTI (USA) (30 minuti)

BREVE INCONTRO IN OCCASIONE DI UN RITROVO CULTURALE DI UN CONCERTO DI MUSICA CLASSICA ALL'AMBASCIATA RUSSA NEGLI USA. I GIOCATORI (MASCHILI O FEMMINILI) COLONNELLO URSS, GORNALISTA URSS,  VIROLOGO URSS ED AMBASCIATORE URSS POSSONO INCONTRARE TUTTI I GIOCATORI USA NEL RIDOTTO DELLA SALA DEL CONCERTO DURANTE E NON OLTRE LA BREVE PAUSA TRA IL PRIMO E SECONDO TEMPO (10 minuti)

==== FASE 2 (60 minuti)

IL GIOCATORE FBI (USA) MOSTRA VIDEO E DISTRIBUISCE ESTRATTO DEL REPORT DELL'ACTIVE MEASURE WORKING GROUP https://foreigninterference.org/post/state-department-1986-87-active-measures-report-documents-soviet-disinformation-architecture (Soviet Influence Activities: A Report on Active Measures and Propaganda, 1986 - 87) RELATIVO ALL'HIV/AIDS DISINFORMATION (18 minuti) UNA O PIU' AZIONI A SCELTA NEL TEMPO RIMANENTE:

- IL SENATORE (USA) PUO' CREARE DISEGNI DI LEGGE SU FINANZIAMENTO STUDIO AIDS/HIV ED OGNI ALTRA ATTIVITA' IN COLLABORAZIONE CON GLI ALTRI GIOCATORI DELLA SUA FAZIONE
- VIROLOGO (USA) PUO' INTERVENIRE COME COSULENTE SCIENTIFICO ED OGNI ALTRA ATTIVITA' IN COLLABORAZIONE CON GLI ALTRI GIOCATORI DELLA SUA FAZIONE
- GIORNALISTA (USA) PUO' SCRIVERE UN ARTICOLO AL RIGUARDO NOTIZIE O FATTI CHE SMENTISCANO O MENO QUANTO SI CONOSCE SUL VIRUS HIV/AIDS ED OGNI ALTRA ATTIVITA' IN COLLABORAZIONE CON GLI ALTRI GIOCATORI DELLA SUA FAZIONE
- DIPLOMATICO (USA) PUO' AGIRE DIPLOMATICAMENTE PER PROTESTARE O CHIEDERE DI RITIRARE/CENSURARE LE DICHIARAZIONI FATTE ED OGNI ALTRA ATTIVITA' IN COLLABORAZIONE CON GLI ALTRI GIOCATORI DELLA SUA FAZIONE

==== FASE 3 (45 minuti)

- INCONTRO CON LA DELEGAZIONE AMERICANA FORMATA DA GIOCATORI VIROLOGO, GIORNALISTA, DIPLOMATICO, SENATORE IN VISITA DIPLOMATICA BILATERALE IN URSS. L'INTERAZIONE SARA' MINIMA E BREVE PROPRIO PER SIMULARE LO STRETTO CONTROLLO DA PARTE DEL KGB (10 minuti)
- REAZIONE DELLA FAZIONE USSR TRAMITE I DIVERSI GIOCATORI ALLE AZIONI USA (35 minuti)

==== DEBRIEFING (15 minuti, ma puo' essere prolungato su richiesta degli stessi giocatori)

TUTTI INSIEME GIOCATORI, FACILITATORI ED ORGANIZZATORI SI RIUNISCONO PER DISCUTERE E CONFRONTARSI SU QUANTO SIA AVVENUTO DURANTE IL LARP.

=== Comunicazione ed interazione tra la fazione USA/URSS

E' possibile e deve essere favorita la possibilita' di scambiarsi informazioni e messaggi tra USA e URSS tramite documenti od anche singoli messaggi da inviare e ricevere. La comunicazione puo' essere tramite telefono, radio, computer che emula/simula telex dell'epoca o semplicemente in forma scritta usando un foglio piegato in quattro con su scritto mittente e destinatario. La comunicazione e' da singolo giocatore a singolo

*Se si vuole e' possibile utilizzare sistemi di cifratura per assciurare la completa sicurezza dei messaggi scritti, tuttavia questa opzione di gioco richiede molto tempo, un opprtuno addestramente ed un rallentamento nel flusso di gioco. Si puo' ad esempio utilizzare il cifrario VIC (https://it.wikipedia.org/wiki/Cifrario_VIC), ma questa scelta va ponderata ed e' a scelta degli organizzatori del LARP.*

==== Segreti conosciuti dal KGB e dall'FBI

Se la fazione USA hanno i giocatori VIROLOGO, GIORNALISTA, AGENTE FBI in gioco, si metta i loro segreti in un sacchetto e saranno estratti a caso dai giocatori GENERALE e COLONNELLO URSS, in maniera che i segreti siano condivisi e sempre tutti a disposizione. Si puo' anche fare che possano essere sortegiati un numero di segreti (Segreti Incofessabili) in numero minore dei giocatore USA in gioco così da riequilibrare l'assimetria di gioco voluta, la quale simula la difficolta' del governo USA ad infiltrare spie in URSS e il non uso di Misure Attive ma della generica propaganda.

E' molto importante che i due giocatori del KGB siano istruiti sulla dottrina operativa e politica del KGB (ovvero utilizzando i due manuali appasitamente redatti). Ovviamente non potremo mai raggiungere nemmeno lontanamente il vero pensiero ed agire realistico del KGB, ma ci possiamo avvicinare ed ecco perchè sarà fatto un workshop di addestramento per i due personaggi del KGB che "attaccano", uno di difesa del solo personaggio FBI il quale cerca di preparare la propria fazione alle misure attive. Il resto dei giocatori sia della fazione URSS che USA sono all'oscuro di tutto e quindi riceveranno solo la scheda personaggio ed una descrizione di massima su cosa possono fare, cosa sanno e cosa devono nascondere. Cercheranno quindi di interpretare i loro ruoli come PG senza conoscere la tematica delle misure attive ma ricevendo istruzioni ed informazioni durante il LARP.

=== Risorse e scenografia da utilizzare

Saranno utilizzate dei semplici distintivi per identificare la fazione URSS e USA

- Per tutti i cittadini USA si usera': https://it.aliexpress.com/item/1005011898551303.html
#figure(
  image("/images/imagen-pegada.png", width: 20%),
  caption: [Spilletta USA],
) <fig:imagen-pegada>
- Per i due componenti del KGB (URSS) si usera': https://it.aliexpress.com/item/1005013138312500.html
#figure(
  image("/images/imagen-pegada-1.png", width: 20%),
  caption: [Spilletta KGB],
) <fig:imagen-pegada-1>
- Per le rimanenti tre persona (URSS):
#figure(
  image("/images/imagen-pegada-2.png", width: 20%),
  caption: [Spilletta URSS],
) <fig:imagen-pegada-2>

Saranno usati inoltre dei cartellini porta badge su cui scrivere il nome del proprio personaggio in gioco in modo da facilitare la memorizzazione il loro riconoscimento.

Non e' prevista alcuna scenografia particolare ed i personaggi non hanno l'obblido di indossare costumi d'epoca. Qualora si fosse curiosi sulla "moda" degli agenti del KGB si veda:

- https://fashiongtonpost.com/kgb-agents-clothing-style/
- https://www.lastoriamilitare.com/prodotto/kgb-soviet-security-uniforms-militaria-1917-1991-in-colour-photographs/
- https://en.wikipedia.org/wiki/Military_ranks_of_the_KGB_(1955%E2%80%931991)
- https://www.uniforminsignia.net/committee-for-state-security-kgb-(1980-1988),6074.html

Dizionario:

KGB: Comitato per la sicurezza dello Stato (in russo Комитет государственной безопасности, КГБ, Komitet Gosudarstvennoj Bezopasnosti)

