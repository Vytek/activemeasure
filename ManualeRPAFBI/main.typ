// typewriter.typ
#set page(
  paper: "a4",
  margin: (x: 1.0cm, y: 2.5cm),
  fill: rgb("#f4ecd8") // Vintage aged paper color
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

// Simulate a strikeout / correction (common on typewriters)
#let strikeout(s) = {
  box(stack(dir: ttb,
    typewriter-line(s),
    v(-0.85em),
    line(length: 100% * s.len() * 0.55, stroke: 1.2pt + rgb("#2b2b2b"))
  ))
}


#figure(
      image("photos/logo_fbi.webp", width: 18%),
)

#align(center)[#typewriter-line("MANUALE OPERATIVO DELL' FBI PER IL CONTRASTO DELLE MISURE ATTIVE")]
#align(center)[ovvero Active Measures Working Group]
#align(center)[di Enrico Speranza per il LARP: Active Measure - Operation Infektion]
#align(center)[================================]

L'Active Measures Working Group (Gruppo di lavoro sulle misure attive) è stato un comitato interagenziale del governo degli Stati Uniti, istituito nel 1981 durante l'amministrazione Reagan, con l'obiettivo primario di contrastare la disinformazione e le "misure attive" (aktivnye meropriyatiya) sovietiche. [1, 2] 
Di seguito sono riportati i dettagli principali sulla sua struttura, il funzionamento e l'impatto storico:
== 🇺🇸 Origine e Struttura Interagenziale
Prima degli anni '80, la CIA tracciava la disinformazione sovietica, ma la Casa Bianca evitava un confronto pubblico diretto. L'amministrazione Reagan cambiò strategia, istituendo questo gruppo sotto la guida iniziale del Dipartimento di Stato americano (in particolare l'ufficio INR) per coordinare gli sforzi tra i vari organi di sicurezza e di intelligence. [3, 4, 5] 
Il gruppo includeva rappresentanti di spicco di: [1, 6] 


- Central Intelligence Agency (CIA)
- Federal Bureau of Investigation (FBI)
- Dipartimento di Stato
- Dipartimento della Difesa (DoD) e della Defense Intelligence Agency (DIA)
- United States Information Agency (USIA)
- Arms Control and Disarmament Agency


Il primo presidente del gruppo è stato il vice assistente del segretario di Stato Dennis Kux (fino al 1984), seguito successivamente da altre figure tra cui Kathleen C. Bailey, che ha presieduto il comitato dal 1985 al 1987. [1] 
== 🎯 Obiettivi e Metodologia
Il focus del gruppo non era la semplice raccolta di informazioni, bensì l'esposizione pubblica e sistematica della propaganda ingannevole e delle operazioni coperte del KGB. Il comitato operava attraverso passaggi ben definiti: [3, 7] 

   1. Raccolta ed Analisi: Raccoglieva esempi di disinformazione e falsificazioni anti-americane in tutto il mondo, analizzandoli grazie agli esperti di intelligence, ai database informatici della CIA sui falsi storici e alle testimonianze dei disertori del KGB. [3] 
   2. Sensibilizzazione e Trasparenza: Invece di rispondere con altra propaganda segreta, il gruppo pubblicava regolarmente report dettagliati e dossier aperti (inviati al Congresso, ai media e ai governi alleati) per istruire giornalisti e funzionari pubblici su come riconoscere le manovre di influenza sovietiche. [3, 4] 

Il gruppo si occupava di smascherare sia le false notizie (come la fake news creata dal KGB secondo cui il virus dell'HIV fosse stato sintetizzato in un laboratorio militare statunitense a Fort Detrick) sia le attività delle cosiddette organizzazioni di facciata (front groups) sovietiche. [1, 3] 
== 📈 Impatto e Valutazione Storica
Nel panorama della burocrazia statunitense, l'Active Measures Working Group è considerato dagli storici e dagli analisti di geopolitica (come gli studi condotti dalla [National Defense University](https://inss.ndu.edu/Media/News/Article/693590/deception-disinformation-and-strategic-communications-how-one-interagency-group/)) come uno dei rari esempi di comitato interagenziale part-time di eccezionale successo. [1, 8] 
Il suo operato riuscì a:


- Stabilire una linea politica coesa e reattiva del governo USA contro la guerra d'informazione. [2] 
- Innalzare il costo politico delle operazioni coperte di Mosca, rendendo il pubblico domestico e internazionale immune a determinati tentativi di manipolazione. [2] 
- Fornire un modello metodologico di "contro-disinformation" basato sulla trasparenza e sul fact-checking istituzionale, che viene studiato ancora oggi per contrastare le moderne campagne di guerra ibrida della Federazione Russa. [3, 9]

===  1. L'Active Measures Working Group (AMWG) e la Metodologia RAP

Istituito nel 1981 sotto l'amministrazione Reagan e guidato dal Dipartimento di Stato statunitense, l'Active Measures Working Group (AMWG) nacque per colmare un vuoto strategico: durante il periodo della Distensione (*détente*), la risposta americana alla disinformazione sovietica si era quasi completamente azzerata. L'AMWG era un comitato interagenzia unico, composto da esperti del Dipartimento di Stato (in particolare dell'INR), della CIA, dell'FBI, dell'USIA e del Dipartimento della Difesa (DIA).

Invece di perdersi nella vasta e vaga definizione delle "misure attive" sovietiche, il gruppo circoscrisse in modo pragmatico la propria missione: individuare, analizzare e smascherare le disinformazioni palesi e provabili, basandosi rigorosamente su informazioni declassificate o non classificate. 

Per guidare questa azione "end-to-end" (dall'identificazione alla risposta pubblica), il gruppo sviluppò la metodologia RAP: Report, Analyze, Publicize.

==== A. REPORT (Segnalazione e Raccolta)
-  L'AMWG istituì un canale preferenziale di monitoraggio globale. 
-   Tutti gli uffici esteri dell'USIA, le ambasciate e le stazioni della CIA ricevettero l'ordine prioritario di segnalare e inviare a Washington qualsiasi articolo di stampa manipolato, voce diffusa o documento sospetto comparso nei Paesi di loro competenza.

==== B. ANALYZE (Analisi Forense e lo "Standard del Grand Jury")
-   La documentazione ricevuta veniva esaminata da un team congiunto di analisti dell'INR, esperti di disinformazione della CIA (in possesso di archivi informatici sulle falsificazioni) e dell'FBI.
-   Lo Standard del "Grand Jury": Ogni potenziale falso veniva valutato con estremo rigore. Il gruppo decideva di denunciare pubblicamente una falsificazione solo se le prove raccolte erano così solide da poter convincere una giuria imparziale ipotetica di giornalisti o governi esteri della matrice sovietica dell'inganno.
-   Esame Tecnico Forense: Gli analisti cercavano gli inevitabili errori commessi dai falsificatori del KGB. Tra questi: l'uso di codici di classificazione o acronimi del Dipartimento di Stato ormai obsoleti (*tags*), font e macchine da scrivere inadeguate, o errori linguistici e di traslitterazione tipicamente russi (come la resa di *Brasilia* o di alcuni toponimi).

==== C. PUBLICIZE (Divulgazione e Smantellamento)
-  Report e Dossier Ufficiali: L'AMWG sintetizzava le sue scoperte in *Special Reports*, *Foreign Affairs Notes* e volumi pubblicati ufficialmente (come i celebri report inviati al Congresso nel 1986 e 1987), distribuendoli ai media internazionali per de-sensibilizzare l'opinione pubblica.
-   Le "Truth Squads" (Roadshows): I membri dell'AMWG (guidati da Dennis Kux e colleghi) organizzavano tour internazionali diplomatici e mediatici. In ciascun Paese visitato, il team teneva briefing riservati con i servizi d'intelligence locali al mattino, e nel pomeriggio organizzava conferenze stampa per i giornalisti, mostrandosi in grado di smontare i falsi "pezzo per pezzo".

=== 2. Dinamiche delle Falsificazioni Documentali (*Forgeries*)

La falsificazione (*forgery*) è definita dalle fonti come l'uso di documenti e comunicati apparentemente autentici ma del tutto falsi o manipolati. Costituiva uno dei vettori preferiti dal Servizio A della Prima Direzione Centrale del KGB e dei servizi satelliti del Blocco Orientale (come il Dipartimento D cecoslovacco o la STASI).

==== Infrastruttura Operativa e Fabbricazione
*   Sezione Documentazione (*Otdeleniye po dokumentatsiya*): All'interno del Servizio A del KGB operava un sottogruppo specializzato che raccoglieva e catalogava campioni di documenti ufficiali di governi stranieri, tipi di carta, carte intestate, loghi, inchiostri e campioni di battitura per rendere verosimile ogni falso.
*   Tecniche di Raccolta: Per ottenere carte intestate e firme autentiche da utilizzare come modello, gli ufficiali di intelligence all'estero inviavano regolarmente cartoline di auguri natalizi a diplomatici e funzionari occidentali, archiviando le lettere ufficiali di risposta firmate.
*   Supporto di Falsificatori d'Élite: Il KGB impiegava artisti ed esperti di falsificazione (come Pavel Gromoshkin, specializzato nell'imitazione di firme e loghi) e si avvalse di spie come Guy Burgess per revisionare lo stile burocratico e linguistico inglese dei documenti.
*   Tipologie di Falso:
    1.  *Documenti interamente fabbricati*: creati ex-novo su carta intestata ricostruita.
    2.  *Documenti autentici alterati*: inserimento di singole frasi, paragrafi o nomi manipolati all'interno di veri documenti riservati occidentali sottratti tramite spionaggio, al fine di amplificare tensioni o rivalità interne.

==== Categorie e Casi Studio Emblematici
1.  Provocare Disarmonia nella NATO:
    -   *Il Manuale dell'Esercito USA FM 30-31B*: Un falso manuale di intelligence militare americana distribuito in oltre 20 Paesi, in cui si istruivano le forze statunitensi a interferire negli affari interni dei Paesi ospitanti e a utilizzare gruppi di estrema sinistra per provocazioni in caso di minaccia comunista.
    -  *I Piani Atomici/Chimici Clandestini*: Finte lettere (come la falsa lettera del Segretario Generale NATO Haig a Joseph Luns) pensate per convincere l'opinione pubblica europea che gli USA fossero pronti a sacrificare gli alleati NATO o stessero stoccando armi chimiche letali in Italia.
2.  Screditare gli USA nel Terzo Mondo:
    -   Lettere fabbricate ad arte (come la finta lettera di Nelson Rockefeller al Presidente Eisenhower) volte a mostrare presunti complotti dell'imperialismo americano per manipolare l'economia del Terzo Mondo o rovesciare leader come Nasser in Egitto o Sihanouk in Cambogia.
3.  Ritorsioni e Falsificazioni Mirate:
    -   *Il Falso "Romerstein" su Chernobyl (1986)*: Per ritorsione contro l'AMWG, il KGB fabbricò una finta lettera dell'esperto americano Herbert Romerstein al Senatore Durenberger, ipotizzando una campagna per gonfiare il numero di vittime del disastro di Chernobyl. Il tentativo fallì perché Romerstein aveva contrassegnato con un sigillo invisibile la carta usata dai diplomatici orientali per la richiesta, smascherando immediatamente il falso in conferenza stampa.

= Il contrasto al reclutamento degli Agenti di Influenza

Per persuadere o convincere un futuro Agente di Influenza sia i Servizi Segreti occidentali che quelli del Patto di Varsavia si avvalevano della schematizzazione offerta tramite la “metodica” definita dalla CIA con l’acronimo M.I.C.E. Metodica tra altre cose fornita da uno stesso ex-agente del KGB. Questa griglia intepretativa è utilizzata dagli stessi agenti dell'FBI e CIA per prevenire ed indagare sui lati oscuri o sul passato degli indiziati nazionali ed esteri nella consapevolezza che questi punti deboli possano essere sfruttati dagli agenti sovietici. Quelle stesse debolezze che nel personale sovietico in patria ed all'estero possono essere delle preziose scorciatoie per condurre i cittadini sovietici a collaborare con gli USA e l'occidente in generale.

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

Bibliografia e links
- [1] [https://en.wikipedia.org](https://en.wikipedia.org/wiki/Active_Measures_Working_Group)
- [2] [https://inss.ndu.edu](https://inss.ndu.edu/Media/News/Article/693590/deception-disinformation-and-strategic-communications-how-one-interagency-group/)
- [3] [https://www.csis.org](https://www.csis.org/analysis/going-offensive-us-strategy-combat-russian-information-warfare)
- [4] [https://www.lse.ac.uk](https://www.lse.ac.uk/iga/assets/documents/arena/2018/Jigsaw-Soviet-Subversion-Disinformation-and-Propaganda-Final-Report.pdf)
- [5] [https://www.cia.gov](https://www.cia.gov/readingroom/docs/CIA-RDP90G01359R000300010043-9.pdf)
- [6] [https://dn790009.ca.archive.org](https://dn790009.ca.archive.org/0/items/dos-report_s-12so-8-12/dos-report_s-12so-8-12.pdf?ref=america2.news)
- [7] [https://en.wikipedia.org](https://en.wikipedia.org/wiki/Active_measures)
- [8] [https://www.lawfaremedia.org](https://www.lawfaremedia.org/article/active-measures-working-group)
- [9] [https://www.marshallcenter.org](https://www.marshallcenter.org/en/publications/security-insights/active-measures-russias-covert-geopolitical-operations-0)

Materiale di studio dell'Active Measure Working Group



