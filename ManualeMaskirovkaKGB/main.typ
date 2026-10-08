// typewriter.typ
#set page(
  paper: "a4",
  margin: (x: 1.0cm, y: 2.5cm),
  fill: rgb("#f4ecd8") // Vintage aged paper color
)

#set text(
  font: "Mom´sTypewriter",
  size: 12pt,
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

  let dy = (r1 - 0.5) * 1.2pt        // vertical jitter (baseline wobble)
  let rot = (r2 - 0.5) * 3deg        // slight rotation per key strike
  let opacity = 70% + r3 * 30%       // ink density variation

  box(
    move(
      dx: 0pt, dy: dy,
      rotate(rot, origin: bottom + left,
        text(fill: rgb("#2b2b2b").transparentize(100% - opacity), ch)
      )
    )
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

#figure(
  image("photos/Gemini_Generated_Image_ulzwqbulzwqbulzw-removebg-preview.png", width: 18%)
)

#align(center)[#typewriter-line("MANUALE OPERATIVO DEL KGB")]
#align(center)[ovvero Come usare la Maskirovka e Kombinasia]
#align(center)[di Enrico Speranza per il LARP: Active Measure - Operation Infektion]
#align(center)[================================]

#quote(attribution: [Oleg Kalugin])[“The heart and soul of Soviet intelligence was subversion. Not intelligence collection, but subversion: active measures to weaken the West, to drive wedges in the Western community alliances of all sorts, particularly NATO, to sow discord among allies, to weaken the United States in the eyes of the people of Europe, Asia, Africa, Latin America, and thus to prepare ground in case the war really occurs.”
(In italiano: "Il cuore e l'anima dell'intelligence sovietica era la sovversione. Non la raccolta di informazioni, ma la sovversione: misure attive per indebolire l'Occidente, insinuare cunei nelle alleanze della comunità occidentale di ogni tipo, in particolare la NATO, seminare discordia tra gli alleati, indebolire gli Stati Uniti agli occhi dei popoli d'Europa, Asia, Africa, America Latina, e preparare cosi' il terreno nel caso in cui la guerra dovesse realmente scoppiare").] 

(https://web.archive.org/web/20070627183623/http://www3.cnn.com/SPECIALS/cold.war/episodes/21/interviews/kalugin/)

= #typewriter-line("Introduzione: Modalita' di attuazione delle “Misure Attive”")
Il termine “misure attive” venne utilizzato in URSS fin dagli anni ’50 per descrivere tecniche palesi e segrete per influenzare eventi e comportamenti in paesi stranieri. La disinformazione - ovvero la diffusione intenzionale di informazioni false - e' solo uno dei tanti elementi che hanno costituito le operazioni di misure attive. Altre possibilita' includono:

- Organizzazioni di facciata: Si trattava di gruppi nominalmente indipendenti che sostenevano le politiche sovietiche o quelle favorevoli all'URSS, come il disarmo nucleare unilaterale. Ne sono un esempio il Consiglio Mondiale della Pace, la Federazione Mondiale dei Sindacati Liberi e l'Organizzazione Internazionale dei Giornalisti.

- Agenti di influenza: Si presentavano in tre forme: spie a tutti gli effetti infiltrate in organizzazioni straniere per diffondere messaggi; reclute locali che venivano “coltivate”; complici inconsapevoli che non avevano idea che uno Stato nemico li stesse aiutando discretamente.

- Storie false nei media non sovietici: Il KGB ha sempre preferito inserire la disinformazione nei media non sovietici. A volte usavano pubblicazioni apertamente comuniste e filo-sovietiche, ma venivano fatti grandi sforzi per influenzare anche i media piu' tradizionali.

- Falsificazioni: La gamma dei falsi sovietici si estendeva a tutto il mondo. Tra gli esempi, un falso rapporto dell'Ambasciata sui piani statunitensi per rovesciare il governo del Ghana e la falsificazione di cablogrammi dell'Ambasciata che mostravano il coinvolgimento degli Stati Uniti nel tentativo di assassinare il Papa.

I sovietici usano il termine misure attive (aktivnyye meropriyatiya) principalmente in un contesto di intelligence. In tale contesto, il termine e' usato per riferirsi a operazioni attive che hanno un effetto politico, distinte dallo spionaggio e dal controspionaggio[^6].

Ma i sovietici non limitavano il concetto di misure attive alla sola intelligence. Le misure attive erano un complemento non convenzionale alla diplomazia tradizionale. Erano per antonomasia uno strumento offensivo della politica sovietica. In particolare, avevano lo scopo di influenzare politica dei governi stranieri, interrompere le relazioni tra altre nazioni, minare la fiducia nei leader e nelle istituzioni straniere, e screditare gli avversari. Le misure attive, quindi, consistono in un'ampia gamma di attivita', sia palesi che occulte, tra cui:

- Manipolazione o controllo dei media.  
- Disinformazione scritta o orale.  
- Uso di partiti comunisti stranieri e di organizzazioni di facciata. 
- Manipolazione delle organizzazioni di massa.  
- Radiodiffusione clandestina.  
- Attivita' economiche.  
- Operazioni militari.  
- Altre operazioni di influenza politica.

#figure(
  image("/photos/KGBPlayBook.png"),
  caption: [KGB Play Book],
) <fig:kgbplaybook>

= L’agente di influenza 

Una spiegazione molta chiara di cosa sia un'agene d'influenza viene fornita dal libro “Dezinformatsia: Active Measures in Soviet Strategy” per capire chi possa soprattitto essere un agente d’influenza:

*Dei vari mezzi impiegati da Mosca per il condizionamento di operazioni segrete a sostegno degli obiettivi di politica estera, l'agente di influenza puo' essere il piu' complesso e difficile da documentare. In effetti, anche gli abili agenti del controspionaggio lo trovano molto difficile seguire e svelare le operazioni orchestrate degli agenti di influenza. Come notato in precedenza, esistono diversi tipi di agenti di influenza, compresi quelli inconsapevoli ma manipolati individualmente, il “contatto di fiducia” e l’agente sotto copertura controllato. L'agente di influenza puo' essere un giornalista, un funzionario governativo, un leader sindacale, un accademico, un opinion leader, un artista, o coinvolto in una delle numerose altre professioni. Il principale obiettivo di un’operazione di influenza e' l’utilizzo della posizione dell’agente – che si tratti di governo, politica, lavoro, giornalismo o altro altro campo - nel sostenere e promuovere le condizioni politiche desiderate dalla potenza straniera sponsor. Mosca utilizza gli agenti di influenza come uno degli elementi di cura, sforzo completamente orchestrato. Gli addetti ai lavori chiamano questa orchestrazione “kombinatsia”. Si riferisce all’abilita' di mettere in relazione, collegare e combinare vari agenti di influenza (in tempi diversi e in luoghi diversi) con particolari impegni operativi, in modo tale da migliorare l’efficacia. Queste azioni comprendono un'altra componente dell'approccio congiunto manifesto-nascosto impiegato dal Cremlino. Il KGB generalmente e' responsabile della conduzione di queste attivita'. La prima fase prevede lo sviluppo di forti coperture tramite rapporti personali con personaggi importanti di societa' straniere. Una volta stabilita tale relazione, il passo successivo e' garantire la collaborazione attiva del singolo sulle questioni di reciproco interesse. In cambio, il KGB fornira' una remunerazione su misura per soddisfare le esigenze specifiche o le vulnerabilita' della persona coinvolta. In alcuni casi, la forma di risarcimento puo' coinvolgere semplicemente il denaro. Tuttavia, per l'individuo che ha raggiunto la notorieta', e' piu' probabile che le ricompense per aver prestato servizio come agente di influenza comportino assistenza nel raggiungimento di obiettivi politici o personali.*

Per persuadere o convincere un futuro Agente di Influenza sara' necessario basarsi sulla schematizzazione offerta tramite la “metodica” definita dalla CIA con l’acronimo MICE. Metodica tra altre cose fornita da uno stesso ex-agente del KGB.

= La metodologia MICE

I servizi di spionaggio e controspionaggio occidentali erano e sono consapevoli della possibilita' che normali cittadini, ma anche personaggi famosi, pubblici o che ricoprivano importanti posizioni, potessero essere obiettivi privilegiati per la propaganda e le operazioni  del KGB. La metodologia MICE elaborata dalla CIA delineava quattro motivi principali per “persuadere” o semplicemente convincere un “un agente d’influenza” a collaborare con l’Unione Sovietica nelle sue Misure Attive. L’agente del controspionaggio deve conoscerle per intercettare, mitigare e perseguire tutti coloro che spinti di queste “motivazioni” mettono a repentaglio la sicurezza nazionale. Riportiamo di seguito una sintesi tratta da “https://thebigbyte.substack.com/p/what-can-we-learn-from-the-cia-and e https://www.ilpost.it/2021/09/05/come-si-diventa-spia/ e soprattuto dal docummento CIA: An Alternative Framework for Agent Recruitment: From MICE to RASCLS”:

- M di MICE: (Money) Il denaro. In apparenza, il denaro, o cio' che il denaro puo' fornire (come la sicurezza, l'istruzione dei figli, un tenore di vita migliore o un biglietto d'uscita da un ambiente indesiderato), sembra essere un motivo razionale per assumersi i rischi dello spionaggio. Certamente una lunga lista di persone che si sono offerte volontarie per fornire informazioni ai nemici del loro Paese ha citato come motivo la necessita' di denaro. In uno studio su 104 americani che hanno fatto la spia e sono stati catturati tra il 1947 e il 1989, la maggior parte, anzi un numero crescente nel corso degli anni, ha dichiarato che il denaro era la loro unica o principale motivazione.  Ad esempio, il tenente colonnello del GRU Pyotr Popov, un guerriero della guerra fredda, vendette segreti sovietici agli americani a Vienna nel 1953 per mantenere moglie e amante. Durante la guerra fredda e dopo la caduta della cortina di ferro, l'agente della CIA Aldrich Ames, arrestato nel 1994, vendette segreti americani a Mosca per una cifra stimata di 2,7 milioni di dollari.

- I di MICE: (Ideology) Ideologia. Piu' che una recluta "venale" che persegue il denaro, un agente guidato dall'ideologia e' visto come una minaccia molto piu' grande dagli ufficiali del controspionaggio (CIA e FBI). Per i reclutatori della CIA, gli agenti che prestano servizio per motivi di fede sono gli unici che la maggior parte degli ufficiali puo' veramente rispettare. L'analista senior della Defense Intelligence Agency (DIA) degli Stati Uniti, Ana Belen Montes, ha ammesso di aver spiato per Cuba per piu' di 16 anni e di non aver ricevuto alcuno stipendio oltre a quello GS-15 della DIA.  Il colonnello del GRU Oleg Penkovsky, a volte chiamato "la spia che salvo' il mondo" per il suo contributo durante la crisi dei missili di Cuba, ha spiato per la CIA e l'MI6 britannico congiuntamente tra il 1961 e il 1963, con la sola promessa di essere "curato" se avesse deciso di lasciare l'Unione Sovietica e stabilirsi in Occidente.

- C di MICE: (Coercion or Compromise) Coercizione o compromesso. La coercizione o il compromesso (ricatto) sono motivi relativamente facili da capire per cui gli agenti si assumono i rischi dello spionaggio, come si vede in innumerevoli film e film di addestramento per informatori scientifici. Entrambi i fattori compaiono in molti casi di spionaggio del passato. Il compromesso si verifica piu' spesso quando i potenziali agenti commettono errori e credono di dover chiedere l'assistenza di un'agenzia di intelligence straniera per evitare una punizione. Compromesso e coercizione erano chiaramente le principali preoccupazioni dei funzionari dell'IC durante la Guerra Fredda. Chiunque avesse un'autorizzazione di sicurezza veniva avvertito che qualsiasi comportamento illegale o "deviante", secondo la definizione dell'epoca, comportava il rischio di essere ricattato per spiare. Sia nella narrativa che nella saggistica abbondano le storie di funzionari costretti a causa del loro comportamento sessuale illecito, che si trattasse di omosessualita' o di adulterio, a seguito della cattura nelle "trappole di miele" messe in atto dalle famigerate "squadre di passeri" sovietiche.

- E di MICE: (Ego or Excitement) Ego o Eccitazione. La lettera finale di MICE puo' stare per "Ego" o "Eccitazione". Tra i due, la soddisfazione dell'ego sembra essere il motore piu' diffuso. La narrativa spionistica puo' ritrarre lo spionaggio come un mondo eccitante fatto di battaglie con le armi, esplosioni, inseguimenti in auto e avventure sessuali, ma chiunque abbia vissuto in questo mondo sa che la verita' e' molto diversa. Per ogni ora trascorsa in strada, un agente passa molte altre ore a scrivere i risultati dell'ultimo incontro, a prepararsi per il prossimo, a valutare all'infinito i casi in corso e a cercare costantemente nuove risorse. Per quanto riguarda l'agente, la vita e' di solito altrettanto noiosa e impegnativa. Gli agenti di successo devono continuare a svolgere qualsiasi lavoro che garantisca loro l'accesso per il quale sono stati reclutati, soddisfacendo nel contempo i compiti imposti dagli agenti. Gli agenti devono anche prepararsi e spostarsi in modo sicuro da e verso le riunioni e, se sono bravi, saranno costantemente alla ricerca di nuovi modi per soddisfare le esigenze informative dell'organizzazione che segretamente servono. Una doppia vita non e' una vita facile, come dimostra il numero di agenti che si esauriscono, si rompono o semplicemente decidono di non poter continuare, soprattutto in ambienti ad alto rischio. Spesso gli agenti smettono di produrre o iniziano a commettere così tanti errori che i case officer devono sospendere i rapporti per la sicurezza di entrambe le parti. L'eccitazione, se c'e', e' passeggera, ma il rafforzamento della fiducia in se stessi o dell'ego di un agente puo' contribuire a mantenere la sua produttivita'. Nell'ambito di questa dinamica, si riscontra spesso il desiderio di vendetta o di ritorsione come motivazione. Ne sono un esempio il diplomatico di professione scontento; l'ufficiale militare che non vuole "fare politica"; l'agente dei servizi segreti messo da parte per un problema di alcolismo; o il funzionario delle forze dell'ordine costretto a lavorare in nero come guardia giurata per sbarcare il lunario. Nel quadro del MICE, questi sono tutti agenti in attesa di essere reclutati. Hanno solo bisogno di essere accarezzati e di avere la possibilita' di danneggiare un sistema che ha fatto loro un torto. Queste ragioni possono costituire un buon inizio sulla strada dello spionaggio, ma riusciranno a mantenere gli agenti su questa strada per decenni? In che modo i case officer potrebbero andare oltre il MICE per consolidare e ottimizzare l'impegno a lungo termine di un agente produttivo? 

= Da MICE A RICE

Andrew Bustamante, ex ufficiale dell'intelligence sotto copertura della Central Intelligence Agency (CIA), veterano dell'aeronautica militare statunitense e fondatore di una piattaforma di formazione, afferma che l'acronimo che la CIA insegna a tutte le sue spie e' in realtà: RICE. Rappresenta le motivazioni fondamentali che guidano ogni comportamento umano e fornisce un quadro elegante per comprendere perche' le persone fanno cio' che fanno.   
RICE sta per ricompensa, ideologia, coercizione ed ego. Questi aspetti del comportamento umano sono così potenti che le spie li usano per indurre i patrioti a [spiare contro il loro paese](https://www.cbsnews.com/news/china-us-espionage-cia-spying/) e commettere tradimento, spesso a rischio della propria vita.   
Analizziamo nel dettaglio le quattro motivazioni principali di RICE e come questo framework puo' aiutarti ad attrarre piu' clienti.

1. R=Ricompensa

Il primo modo per motivare le persone all'azione e' attraverso le ricompense, la proverbiale carota. Le ricompense tangibili – una crociera in Alaska, una collana di diamanti o denaro – hanno un impatto notevole. Altrettanto potenti sono le ricompense intangibili come la lode, il riconoscimento o l'attenzione, la proverbiale pacca sulla spalla.

2\. I=Ideologia

Fare appello ai valori e alle convinzioni delle persone e' un potente motivatore. Allineare il proprio messaggio alle convinzioni piu' profonde di qualcuno – che si tratti di famiglia, liberta', equita' o qualsiasi altra cosa – puo' ispirare all'azione. Le spie della CIA sanno che le persone sono disposte a sacrificare tutto per proteggere le proprie convinzioni. 

3\. C=Coercizione

Se le ricompense sono la carota, la coercizione e' il bastone. La coercizione usa sensi di colpa, vergogna o minacce per indurre le persone a fare qualcosa. Sebbene spesso rappresentata come una tattica di riferimento nei film di spionaggio, la CIA insegna alle spie che la coercizione e' il fattore motivante meno efficace nel modello RICE.   
Se un agente costringe un bersaglio a farlo, puo' mettere a repentaglio la propria vita e vanificare mesi o anni di lavoro sotto copertura.

4\. E=Ego

L'ultimo fattore motivante e' l'ego, ma l'ego non riguarda l'essere orgogliosi o pomposi. Riguarda l'immagine che abbiamo di noi stessi e l'immagine che proiettiamo agli altri.   

= Manuale di Architettura dell'Inganno: La Maskirovka come Involucro delle Misure Attive

== Inquadramento Concettuale: Il Legame tra Maskirovka e Misure Attive
La Maskirovka (origini militari di mimetizzazione, depistaggio, dissimulazione e occultamento strategico) costituisce l'"involucro protettivo e l'architettura di inganno" entro cui vengono concepite ed eseguite le "misure attive". 

Se le *misure attive* rappresentano il braccio operativo dinamico (disinformazione, falsificazioni, agenti d'influenza, propaganda coperta, provocazioni e organizzazioni di facciata) volte ad alterare la percezione della realta' da parte dei decisori e dell'opinione pubblica estera, la *maskirovka* ne assicura la verosimiglianza e la plausibile denegabilita'. Nessuna operazione di disinformazione o influenza coperta puo' funzionare senza un accurato lavoro di *maskirovka* che nasconda la vera matrice statale dell'operazione e fornisca al messaggio un "uno scheletro razionale" di veridicita'.

= Struttura e Contenuti del Manuale Operativo

== I: Principi Fondamentali della Maskirovka Strategica
-  Definizione e Obiettivi: Metodologia per nascondere le reali capacita', intenzioni, dottrine e vulnerabilita' dello Stato, proiettando una realta' distorta sul nemico.
-  La Costruzione dello "Scheletro Razionale" (*Rational Skeleton*): Regola secondo cui la disinformazione efficace non si compone mai di sole menzogne, ma combina fatti reali e plausibili con elementi manipolati o falsificati per conquistare la fiducia dell'avversario e condizionarne la presa di decisione.
-  Invisibilita' della Matrice: Dissimulare l'origine centrale del Cremlino o del KGB, facendo apparire la narrazione o la provocazione come il frutto spontaneo di dibattiti interni alla societa' civile occidentale, di pubblicazioni indipendenti o di fughe di notizie.

== II: Vettori e Strumenti di Dissimulazione nelle Misure Attive
-  Agenti d'Influenza e Giornalisti: Reclutamento e gestione di figure d'e'lite, giornalisti, accademici o funzionari che promuovono gli obiettivi strategici in modo sottile e non attribuibile al servizio secretato sponsor.
-  Organizzazioni di Facciata e "Contatti Neutrali": Utilizzo di fronti internazionali (come il *World Peace Council*) e di contatti neutrali per mimetizzare le campagne di influenza e la distribuzione di fondi coperti.
-  Falsificazioni Documentali (*Forgeries*): Inserimento di dettagli falsi in documenti autentici intercettati o fabbricazione ex-novo di direttive riservate per seminare discordia tra i paesi membri della NATO.
-  Maskirovka Militare e Tecnica: Costruzione di falsi silos missilistici, rampe di lancio fittizie, alterazioni di mappe ufficiali e movimentazioni ingannevoli di truppe per disorientare i servizi di intelligence ed esponenti militari avversari.

=== Sintesi Analitica
In questo quadro, la "maskirovka" rappresenta la *metodologia strategica dell'illusione*, mentre le "misure attive" costituiscono l'*insieme delle tattiche operative*. Il manuale evidenzia come l'efficacia delle misure attive dipenda direttamente dalla capacita' della maskirovka di costruire una narrazione verosimile, nascondere le impronte dell'esecutore e manipolare le percezioni del bersaglio a vantaggio degli interessi strategici del Cremlino.

== 1. Inquadramento Concettuale: L'Agente d'Influenza (*Agent of Influence*)
Nell'architettura delle Misure Attive (*aktivnyye meropriyatiya*), l' agente d'influenza  rappresenta lo strumento operativo piu' sofisticato per penetrare le istituzioni, il dibattito pubblico e i mass media delle nazioni avversarie. A differenza dell'agente di spionaggio tradizionale — il cui compito primario e' la sottrazione di documenti segreti —, l'agente d'influenza sfrutta la propria posizione sociale, politica, accademica o professionale per iniettare copertamente narrazioni, orientare decisioni politiche ed esacerbare le divisioni interne dell'avversario a favore degli interessi strategici del Cremlino.

La dottrina del KGB distingue tre gradazioni operative di questa figura:
1.  L'Agente Controllato (*Controlled Agent*) : Individuo formale reclutato dal servizio segreto, gestito da un ufficiale di collegamento (*case officer*), il quale opera eseguendo direttive precise e ricevendo compensi finanziari o supporto logistico continuo.
2.  Il Contatto di Fiducia (*Trusted Contact*) : Persona d'e'lite o ad alta rilevanza pubblica che collabora consapevolmente su temi di comune interesse ideologico, politico o professionale. Non viene reclutata formalmente e non riceve ordini diretti o perentori, ma viene guidata e ricompensata con assistenza nelle sue ambizioni politiche o di carriera.
3.  L'Inconsapevole o Manipolato (*Unwitting Individual*) : Figura influente priva di legami diretti con i servizi segreti, guidata o condizionata attraverso informazioni fuorvianti, relazioni sociali modellate ad hoc (*kombinatsia*) o lo sfruttamento delle sue vulnerabilita' personali e convinzioni ideologiche.

== 2. La Copertura Giornalistica e la Penetrazione dei Media
I mass media costituiscono il canale primario per la diffusione della propaganda coperta (*covert propaganda*) e della disinformazione. Per raggiungere questi obiettivi, la strategia sovietica operava su un doppio binario:

*  Ufficiali di Intelligence sotto Copertura Giornalistica : Circa due terzi dei corrispondenti esteri appartenenti alle principali agenzie e testate statali sovietiche — come *TASS*, *Novosti*, *Radio Mosca*, *Izvestia* e *New Times* — erano in realta' ufficiali dell'SVD/KGB o del GRU. L'unica testata ampiamente esente da questa penetrazione diretta era la *Pravda*, organo ufficiale del Comitato Centrale del PCUS.
*  Reclutamento di Giornalisti Occidentali : Come rivelato dall'ex ufficiale del KGB Stanislav Levchenko, il reclutamento di giornalisti esteri richiedeva un lungo lavoro preparatorio (da 2 a 4 anni di valutazione e avvicinamento). I giornalisti target venivano suddivisi in due categorie principali:
  1. *Il Giornalista Specializzato*: Esperto in ambiti politici, militari o economici, dotato di accesso diretto a informazioni riservate e in grado di interagire quotidianamente con le e'lite di governo.
  2. *Il Giornalista ad Ampia Diffusione*: Figura vicina ai direttori o ai proprietari di grandi quotidiani o emittenti, capace di condizionare la linea editoriale e raggiungere milioni di lettori.

== 3. Tradecraft Operativo e Tecniche di Manipolazione
La gestione dei giornalisti e degli agenti d'influenza seguiva rigidi protocolli di dissimulazione e *maskirovka*:

-  Linee Guida anziche' Articoli Pronti : Gli ufficiali del KGB raramente consegnavano articoli interamente scritti in casa dal Centro operativo, poiche' un testo tradotto dal russo o con uno stile estraneo avrebbe insospettito i servizi di controspionaggio occidentali. Al giornalista reclutato venivano invece fornite direttive tematiche (*guidelines*), tracce riassuntive di 2-3 pagine o spunti fattuali (talvolta uniti a veri o falsi documenti riservati), lasciando all'agente la stesura finale nel proprio stile.
-  Piazzamento Clandestino e "Riproduzione Selettiva" (*Selective Replay*) : L'operazione tipo prevedeva il piazzamento iniziale di una notizia o di un'inchiesta manipolata su un giornale estero o su un quotidiano di un Paese terzo (spesso in India, Italia o Austria, attraverso testate come *Paese Sera*, *Blitz* o *Die Furche*). Una volta pubblicata dall'esterno, la notizia veniva ripresa da *TASS* o *Pravda* e rilanciata a livello internazionale come "prova imparziale" proveniente dalla stampa indipendente occidentale.
-  Canali Privilegiati d'Intelligence : All'interno dell'URSS, pubblicazioni come "Literaturnaya Gazeta" (sotto la direzione di Alexander Chakovsky e con firme come Genrikh Borovik) venivano utilizzate come condotto primario per diffondere narrazioni modellate direttamente dal KGB per screditare i servizi occidentali o giustificare operazioni clandestine.

 == 4. Caso Studio: L'Operazione Pierre-Charles Pathe' in Francia
Uno dei casi piu' documentati di agente d'influenza nei media occidentali riguarda il giornalista francese  Pierre-Charles Pathe' .

*  Profilo sociale e d'e'lite : Figlio di un pioniere del cinema francese e cognato di un ministro, di un ambasciatore negli USA e del presidente della Renault, Pathe' era una figura perfettamente inserita nell'alta societa' parigina, con contatti diretti tra i leader di tutto l'arco politico, da Charles de Gaulle a François Mitterrand.
*  Gestione da parte del KGB : Notato a seguito di un articolo favorevole all'URSS nel 1959, fu avvicinato dal KGB e inizio' a ricevere finanziamenti regolari. Scriveva sotto vari pseudonimi (come "Charles Morand") e riceveva linee guida tematiche da ufficiali sovietici come Igor Kuznetsov.
*  Il Bollettino *Synthesis *: Nel 1976, Pathe' lancio' la newsletter bisettimanale riservata *Synthesis*, finanziata in gran parte da Mosca. La pubblicazione raggiunse una penetrazione straordinaria presso le e'lite francesi, annoverando tra i suoi 500 abbonati ben 139 Senatori, 299 Deputati, 41 Giornalisti e 14 Ambasciatori.
*  Temi della Disinformazione : Attraverso *Synthesis*, Pathe' promosse costantemente narrazioni mirate a incrinare i rapporti tra Francia e NATO, criticando la politica "atlantista", sostenendo l'inaffidabilita' dell'ombrello nucleare statunitense in Europa e screditando le denunce occidentali sulle violazioni dei diritti umani nell'Unione Sovietica.
-  Arresto e Condanna : Nel 1978, la sorveglianza del controspionaggio francese (DST) su Kuznetsov porto' all'intercettazione dei loro incontri clandestini e alla consegna di denaro e documenti. Nel 1979 Pathe' fu processato e condannato a cinque anni di reclusione per spionaggio contro lo Stato.

=== *La Kombinatsia: L’Arte dell’Orchestrazione Operativa nelle Misure Attive*

==== 1. Definizione Dottrinale e Concetto di *Kombinatsia*
Nel lessico dell’intelligence sovietica e della pianificazione strategica del KGB, il termine kombinatsia (combinazione operativa) definisce la capacita' di orchestrare, collegare e strutturare sinergicamente una molteplicita' di strumenti, agenti d’influenza e operazioni coperte in tempi e luoghi differenti. 

Mentre una singola misura attiva puo' consistere nell'iniezione di una falsificazione documentale o nell'azione isolata di un canale propagandistico, la *kombinatsia* costituisce l'architettura complessa che connette questi diversi vettori in un'unica campagna integrata. L'obiettivo strategico della *kombinatsia* e' amplificare drammaticamente l'impatto dell'operazione, facendo in modo che canali palesi (*overt*) e coperti (*covert*) si rafforzino reciprocamente, manipolando la percezione della realta' da parte dei decisori politici e dell'opinione pubblica estera.

==== 2. Gli Incredienti della *Kombinatsia*: Integrazione tra Vettori
L'efficacia di una *kombinatsia* si basa sull'impiego simultaneo o sequenziale di diversi strumenti operativi:

- La Messa in Rete degli Agenti d'Influenza: La dottrina divideva le fonti operative in agenti controllati, contatti di fiducia (*trusted contacts*) e soggetti inconsapevoli manipolati (*unwitting individuals*). La *kombinatsia* consiste nel far agire questi individui in modo coordinato senza che essi siano necessariamente a conoscenza dell'esistenza degli altri o della regia centrale di Mosca.
- L'Intreccio tra Falsificazioni e "Riproduzione Selettiva" (*Selective Replay*): Una tipica combinazione operativa prevedeva la fabbricazione o alterazione di un documento riservato (*forgery*). Il falso non veniva distribuito direttamente dai canali sovietici, ma fatto "trapelare" e pubblicare su un quotidiano indipendente o di un Paese terzo da un giornalista reclutato o inconsapevole. Successivamente, gli organi di stampa di Stato (come *Pravda*, *TASS* o *New Times*) riprendevano e citavano la notizia esterna come prova imparziale e veritiera, amplificandola su scala globale.
- Sinergia con le Organizzazioni di Facciata (*Front Organizations*): Le campagne coperte venivano fatte risuonare da organizzazioni internazionali palesi gestite dal Dipartimento Internazionale del PCUS, come il *World Peace Council* (WPC). Le narrazioni inoculate via disinformazione venivano così trasformate in risoluzioni ufficiali, conferenze internazionali e manifestazioni di piazza.
- Integrazione con i "Giochi Operativi" (*Operativnaya Igra*): Le operazioni d'influenza venivano spesso combinate con contromisure informative avanzate, l'uso di doppi agenti, provocazioni coperte e la creazione di trappole psicologiche o kompromat (ricatti sessuali o finanziari) per garantire la cooperazione e il controllo degli asset strategici.

==== 3. Fisiologia e Fasi Operative della *Kombinatsia*
La stesura di una *kombinatsia* da parte del Servizio A del KGB (o dai dipartimenti specializzati del blocco sovietico) seguiva un processo rigoroso e centralizzato:

1. Valutazione della "Correlazione delle Forze" (*Correlation of Forces*): L'operazione parte da un'analisi globale dei fattori politici, economici, sociali e militari, identificando le spaccature interne, le vulnerabilita' o le tensioni esistenti nel campo avversario (ad esempio tra i membri della NATO).
2. Elaborazione dello "Scheletro Razionale": La disinformazione non viene costruita su menzogne arbitrarie, ma incorpora fatti reali ed evidenze verificate per costruire una narrazione verosimile e difficile da smentire.
3. Piazzamento e Inoculazione Clandestina: Utilizzo di agenti d'influenza o canali secondari per inserire lo spunto disinformativo nell'ecosistema informativo bersaglio.
4. Amplificazione Multi-Canale: Attivazione simultanea dei media ufficiali, delle organizzazioni di facciata e delle leve diplomatiche per esercitare una pressione coordinata sul governo o sull'opinione pubblica bersaglio.
5. Monitoraggio e *Deception Damage Assessment*: Utilizzo di fonti penetrate all'interno delle istituzioni o dell'intelligence avversaria per misurare l'efficacia reale della disinformazione e calibrare i passaggi successivi.

==== 4. Casi di Studio Storici di *Kombinatsia*

- Il Caso Pierre-Charles Pathé in Francia: L'operazione contro le élite francesi, gia' citato, ha rappresentato una perfetta *kombinatsia*. Il KGB combino' la gestione di un agente d'influenza d'élite (Pathé), la creazione di una newsletter bisettimanale riservata (*Synthesis*) letta da centinaia di parlamentari e giornalisti, e la costante iniezione di analisi orientate a incrinare l'alleanza tra Francia e Stati Uniti, integrando il tutto con i temi palesi delle campagne antinucleari promosse dal Cremlino.
- Le Campagne contro l'Ammodernamento NATO (Bomba al Neutrone e Missili INF): Durante la fine degli anni '70 e gli anni '80, Mosca orchestro' una vasta *kombinatsia* per bloccare il dispiegamento dei missili Pershing II e Cruise in Europa. L'operazione integro' la fabbricazione di finti piani contingenti del Pentagono che ipotizzavano la distruzione nucleare dell'Europa, l'attivazione del *World Peace Council* per mobilitare il movimento pacifista e l'azione coordinata di agenti nei media occidentali per instillare la paura di una guerra imminente.

==== 5. Sintesi Strategica
In conclusione, la kombinatsia dimostra come la potenza delle misure attive non derivi dal successo di un singolo episodio propagandistico, ma dal loro effetto cumulativo. Come evidenziato dagli analisti occidentali e dagli ex ufficiali defezionisti, le singole operazioni agiscono come "gocce d'acqua che cadono su una pietra": un'azione isolata non lascia traccia, ma la loro combinazione sistematica e orchestrata nel tempo finisce per scavare una spaccatura profonda nelle istituzioni e nelle alleanze dell'avversario.

= Conclusioni su quanto illustrato

Per concludere riportiamo un documento interno del servizio segreto Cecoslovacco che relazione in maniera molto positiva l'utilizzo combinato di Misure Attive e risorse ed agenti sul territotio testimaniando l'efficacia di questa dottrina militare nell'ambito dello spionaggio interno ed esterno:

"Le misure attive (AO) stanno diventando, accanto alla creazione di una nuova rete di agenti, la pietra angolare del lavoro di intelligence, e a tal fine deve essere adeguato il lavoro con gli agenti e l'intera attivita' all'interno della residenza. Non si tratta di un qualche nuovo impulso avente validita' temporanea; le misure attive rappresentano un livello qualitativo superiore al quale e' giunto il lavoro del nostro servizio di spionaggio, ed e' in sostanza una profonda valorizzazione del lavoro finora svolto dai nostri organi all'estero. In base alla qualita' delle misure attive realizzate verra', non da ultimo, condotta la valutazione dei singoli collaboratori.
Se vogliamo contribuire in modo piu' efficace alla lotta del nostro popolo per il mantenimento della pace nel mondo — e questo e' infine il nostro dovere — dobbiamo passare dalla modalita' difensiva a un metodo di lavoro offensivo. In sostanza, cio' significa passare dall'acquisizione di informazioni per l'informazione stessa all'acquisizione di informazioni da utilizzare nelle misure attive. Cio' significa che i metodi di lavoro finora adottati devono essere elevati qualitativamente: verranno acquisite notizie di intelligence, documenti di spionaggio e verranno elaborati profili e obiettivi di reclutamento; tuttavia, tutto questo lavoro deve mirare a un unico obiettivo: l'utilizzo offensivo di notizie, documenti e agenti.
A questo proposito e' necessario tenere presente che la quantita' non significa ancora qualita'. Al nostro governo giova di piu' una sola misura attiva che abbia una vasta risonanza e provochi una reazione (sia essa sotto forma di manifestazioni, petizioni o discussioni) rispetto a diverse misure attive che, sotto forma di articoli di giornale, sono state pubblicate in quotidiani o periodici marginali e sono passate inosservate. In questo senso riteniamo che le misure attive che verranno realizzate d'ora in avanti debbano avere un effettivo livello qualitativo.
D'altra parte e' pur vero che con le misure attive stiamo muovendo solo i primi passi e che con difficolta' e lentezza nascono nuove idee. Anche per questo motivo vi descriviamo di seguito alcune misure attive provenienti da altre residenze, che vi saranno forse d'aiuto nella riflessione su nuovi spunti e nella ricerca di nuove forme."

Fonte originale: Ref: Fascicolo `10443_121_fis_1_4`, pag. 62 — Intestazione: "Informazioni e AO per la Residentura")