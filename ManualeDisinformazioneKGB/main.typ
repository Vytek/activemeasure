// typewriter.typ
#set page(
  paper: "a4",
  margin: (x: 1.0cm, y: 1.5cm),
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

#figure(
  image("photos/Gemini_Generated_Image_ulzwqbulzwqbulzw-removebg-preview.png", width: 18%),
)

#align(center)[#typewriter-line("MANUALE DI DISINFORMAZIONE DEL KGB")]
#align(center)[ovvero Ingegneria della Disinformazione]
#align(center)[di Enrico Speranza per il LARP: Active Measure - Operation Infektion]
#align(center)[================================]

= #typewriter-line("Introduzione")

Per entrare nel ruolo del perfetto disinformatore sovietico e' molto importante comprendere il pensiero e la cultura sovietica dell'epoca. Le pagine che seguono hanno lo scopo di addestrare e formare i giocatori della fazione dell' URSS ed in particolar modo quelli appartenenti al KGB.

La lunghezza ed apparente complessita' di questo "manuale" non deve assoltutamente spaventare od intomirire il giocatore. E' anzi una necessita' inderogabile per avere una buona comprensione del gioco e per interpretarlo correttamente oltre a seguire fedelmente cio' che storicamente e' avvenuto e che oggi ancora avviene.

Capire cosa sia e come venissero messe in pratica le "Misure attive" dal KGB e dai paesi facenti parte del "Patto di Varsavia" profondamenti influenzati dall'egemonia politica sovietica, significa penetrare in profondita' nelle logiche del pensiero umano passato e presente per poi vaccinarsi contro le debolezze del nostro pensiero umano, troppo umano.

= #typewriter-line("Il contesto storico")

U.R.S.S., anni '8O, siamo nel pieno della cosiddetta "Guerra Fredda". La tensione tra USA ed URSS ha raggiunto nuove vette e le attivita' di spionaggio e controspionaggio sono arrivate ai livelli massimi. Uomini, nazioni, intere popolazioni vivono nell'angosciosa paura di una possibile, ma catastrofica "guerra nucleare": la Terza Guerra Mondiale che potrebbe anche annientare l'intera razza umana. In questo quadro diplomatico internazionale teso ed ansiogeno i due blocchi si sfidano con la costruzione tecnologica di armi sempre piu' micidiali, ma anche attraverso "armi" meno convenzionali per sfidare il nemico ideologico che temono ed odiano. In particolare il servizio di spionaggio estero sovietico (KGB) progettava e realizzava numerose forme di “influenza e manipolazione” dell’opinione pubblica mondiale tese a screditare e dividere sul piano internazionale i paesi capitalisti ed in particolar modo l’eterno ed acerrimo nemico ideologico: gli Stati Uniti D’America.

Nel gergo tecnico del KGB tale operazioni, sia su scala nazionale che internazionale, venivano definite “Misure Attive” (in russo: активные мероприятия, romanizzato: *aktivnye meropriyatiya*) ed ad esse, fin dagli anni ‘60, era dedicato un apposito direttorato (Servizio “A”) parte del Primo Direttorato Centrale. Il termine “Misure Attive” definisce molto bene lo scopo di tali operazioni e le distingue nettamente dal tipico ruolo “passivo” delle diverse agenzie di spionaggio spesso maggiormente focalizzate sulla raccolta ed analisi di informazioni riservate o segrete. Il gergo, spesso abbreviato come A.M., ci descrive in nuce anche la filosofia politica teorica alla base di tali provvedimenti.

= #typewriter-line("Una definizione dal Dizionario del KGB")

MISURE ATTIVE – azioni di controspionaggio che consentono di penetrare nei piani del nemico, prevenire in anticipo le sue mosse indesiderate, indurlo in errore, sottrargli l’iniziativa e sabotare le sue attivita' sovversive.

Le misure attive, a differenza delle misure difensive (ad esempio quelle volte a garantire il regime di segretezza e la tutela dei segreti di Stato e militari), hanno carattere offensivo e permettono di individuare e reprimere le attivita' ostili sin dalle fasi piu' precoci della loro insorgenza, costringere il nemico a scoprirsi, imporgli la propria volonta' e obbligarlo ad agire in condizioni sfavorevoli e nella direzione desiderata dagli organi di controspionaggio.

Nella pratica dell’attività di controspionaggio degli organi di di sicurezza dello Stato, la M. A. comprende misure volte alla creazione di reti di agenti nel campo nemico e nel suo entourage, alla conduzione di operazioni di inganno nei confronti del nemico, alla disinformazione, alla compromissione e alla disgregazione delle forze nemiche, al trasferimento sul territorio dell’URSS di persone di interesse operativo, all’acquisizione di informazioni di intelligence e così via.

Tradotto con DeepL.com (versione gratuita)

Fonte: [https://kgb.arhivi.lv/dokumenti/vdk/pretizlukosanas-vardnica]

= L'ARTE DELLA PIANIFICAZIONE, DELLO SVILUPPO E DELL'ATTUAZIONE DELLE M.A. (Misure Attive)
DA UN DOCUMENTO ORIGINALE del Generale del KGB Vladimir Ivanov in visita al servizio segreto Bulgaro PGU-DS, gennaio 1985

Traduzione dal russo. IL LIVELLO DI CLASSIFICAZIONE e' RIMOSSO! CRDOPBGDSRSBNA Data: 22.09.2009 Base legale: § 17 delle Disposizioni Transitorie e Finali della Legge sull'accesso ai documenti dell'ex Sicurezza di Stato. Posizione: Segretario della CRDOPBGDSRSBNA Nome e cognome: RUMEN BORISOV Firma: ......

L'ARTE DELLA PIANIFICAZIONE, DELLO SVILUPPO E DELL'ATTUAZIONE DELLE MA (Misure Attive)

Le misure attive sono un mezzo efficace dell'intelligence per esercitare influenza sullo sviluppo della situazione all'estero, per rafforzare e consolidare gli sviluppi vantaggiosi per i paesi socialisti nel mondo e nei singoli paesi.

Le MA sono un'arma dell'intelligence estremamente efficace, ma allo stesso tempo molto acuta e delicata. Le MA mirano a sventare le intenzioni aggressive dell'imperialismo, a garantire la pace e il progresso sociale. Di fatto, sono una delle forme di assistenza internazionale per tutte le forze antimperialiste e rivoluzionarie di oggi.

L'attivita' dell'intelligence estera nel campo delle MA contribuisce a smascherare i piani aggressivi del nemico e crea difficolta' nella loro attuazione; essa prevede di esercitare influenza sia sulle posizioni di singole figure statali, politiche, militari, pubbliche e altre, sia sulle posizioni di governi, partiti, organizzazioni e sulla formazione dell'opinione pubblica in questo o quel paese.

L'efficacia delle MA dipende in primo luogo dalla maestria dell'agente operativo che si occupa delle MA. Maggiore e' questa, maggiore e' l'efficacia della misura.

Ogni MA e' una forte azione politica. Inoltre, il lavoro in questo campo rappresenta di per se' una delle forme piu' acute di lotta politica segreta, nel senso pieno del termine. Quali che siano le MA condotte, in ultima analisi esse riguardano sempre i fondamentali interessi politici, economici e strategico-militari dello Stato socialista. A questo proposito, nel lavoro sulle MA a livello metodologico, sono di fondamentale importanza i pensieri di V.I. Lenin sulla politica come scienza e arte, espressi nella sua opera "L'estremismo, malattia infantile del comunismo".

Lenin avvertiva che nell'attivita' politica non si dovrebbero dare ricette o regole adatte a tutti i casi e a tutte le circostanze. Egli esigeva "di acquisire le conoscenze necessarie, l'esperienza necessaria, il necessario - oltre all'esperienza e alle conoscenze - fiuto politico per la soluzione rapida e corretta di complesse questioni politiche" (vol. 41, pag. 53). Lenin sottolineava che "un nemico piu' potente puo' essere sconfitto solo con la massima tensione delle forze e, obbligatoriamente, con l'uso piu' attento, scrupoloso, cauto e abile di ogni minima crepa tra i nemici, di ogni divergenza di interessi della borghesia di paesi diversi, tra i vari gruppi o tipi di borghesia all'interno dei singoli paesi, nonche' di ogni minima possibilita' di ottenere un alleato di massa, anche se temporaneo, titubante, instabile, condizionato." (vol. 41, pag. 55). Queste indicazioni di Lenin hanno conservato fino ad oggi la loro forza e attualita', la loro importanza per i collaboratori dell'intelligence impegnati nello sviluppo e nell'attuazione delle MA.

Lo sviluppo e la conduzione delle MA sono strettamente legati non solo alla politica, ma anche all'economia, all'ideologia, alla diplomazia e alla propaganda. Sulla base dell'analisi di tutti i materiali e, se necessario, con l'aiuto di scienziati e specialisti, l'ufficiale dell'intelligence deve trovare i focolai piu' acuti di crisi, malcontento, attrito, disaccordo, rivalita' e lotta nel campo nemico. La scoperta di questi focolai e, successivamente, l'individuazione dei punti piu' sensibili richiedono conoscenze e un approccio scientifico, la conoscenza dei processi oggettivi nel mondo e nel paese di residenza. Questo e' un tipo di attivita' dell'agente di intelligence che si occupa di MA.

Anche l'uso delle informazioni e il trarre conclusioni sui suddetti punti vulnerabili del nemico come base per lo sviluppo delle MA e' un compito complesso, ma di un altro tipo, che richiede altre conoscenze. Per questo non e' solo necessario conoscere bene la situazione, ma anche studiare le caratteristiche psicologiche e sociali di quelle figure o partiti, organizzazioni e gruppi sociali su cui vogliamo esercitare un'influenza. In questo modo, il processo di sviluppo delle MA e' una cosa molto complessa, che richiede all'ufficiale dell'intelligence non solo conoscenza, ma anche grande intuito, immaginazione, inventiva e tatto. In definitiva, se le MA sono sviluppate e attuate nel rispetto di tutti questi fattori, dovrebbero influenzare il processo di pensiero, le emozioni e gli stati d'animo psicologici di singoli o gruppi di individui, spingendoli ad azioni corrispondenti agli obiettivi da noi prefissati.

L'arte della pianificazione, dell'organizzazione e dell'attuazione delle MA comprende una serie di condizioni o principi basati su fattori sia oggettivi che soggettivi. Tra questi possiamo indicare i piu' importanti: prima di tutto, si tratta dello studio, dell'analisi e della comprensione della pratica nel campo dell'attuazione delle MA. Ovvero la pianificazione delle misure su una base rigorosamente scientifica e oggettiva.

Nello sviluppo delle MA, e' necessario padroneggiare l'arte di dare al materiale, all'informazione un contenuto e un carattere tali che, per l'oggetto dell'influenza, essa sia attuale, nuova e utile, e lo spinga alle azioni da noi desiderate.

In tal modo, il compito di colui che sviluppa le MA e' creare con perdite minime qualcosa che attiri l'attenzione su di se', spinga le persone ad assumere una posizione per noi vantaggiosa e, in ultima analisi, le induca ad agire.

Nella realizzazione delle MA, l'arte consiste nel dover determinare correttamente i tempi per la conduzione della misura, scegliere un canale ottimale per la realizzazione e garantire la segretezza del nostro coinvolgimento e, in particolare, la sicurezza della fonte coinvolta nell'operazione.

Un importante elemento costitutivo della maestria e dell'arte nel campo delle MA e' la capacita' di lavorare in modo continuo, coerente e globale finche' il problema sussiste, la capacita' di organizzare, provocare e studiare le reazioni alle MA condotte.

L'esperienza disponibile testimonia in particolare che, se vogliamo raggiungere obiettivi tattici a breve termine in situazioni di rapido cambiamento e provocare una reazione immediata, le nostre MA devono avere un contenuto piu' emotivo. In tal caso si puo' ricorrere a significative esagerazioni, a una forte disinformazione. Al contrario, le misure attive a lungo termine devono avere un contenuto con un tono piu' calmo e moderato.

L'ufficiale dell'intelligence che padroneggia l'arte di condurre MA deve conoscere bene la situazione internazionale, i processi politici e la situazione nel paese di residenza per poter reagire in modo rapido e tempestivo a ogni evento importante e sfruttare ogni situazione favorevole per realizzare azioni di influenza in conformita' con i compiti assegnati alla residenza. A volte, anche una voce "lanciata" al momento giusto, unita alla conoscenza della sostanza e a successive misure di supporto, puo' rivelarsi di grande influenza ed efficacia nella risoluzione di compiti importanti.

Una delle componenti piu' importanti dell'arte di condurre MA e' la capacita' di sfruttare con successo le abilita' operative degli agenti dell'intelligence nelle operazioni di influenza. I compiti nel campo delle MA possono essere risolti solo con un'ampia cerchia di agenti e contatti di fiducia: da figure governative e parlamentari, leader di partiti politici e organizzazioni sociali, importanti giornalisti ed editori, fino a semplici funzionari di istituzioni statali. Per questo motivo, il successo del lavoro dipendera' dalla nostra capacita' di "gestire" queste forze in situazioni specifiche, di utilizzarle in quel campo e in quel profilo in cui le loro capacita' e possibilita' potrebbero manifestarsi pienamente a livello attivo. Praticamente tutti gli agenti e i contatti di fiducia possono essere utili nello svolgimento delle MA. Tutto dipende dalla nostra abilita' e dall'abilita' dell'agente.

L'approccio scientifico nel lavoro nel campo delle MA richiede la conoscenza non solo della pratica consolidata, ma anche della costante sintesi e analisi dell'esperienza nel nostro lavoro attuale, nonche' della considerazione e dell'analisi dell'attivita' del nemico in questo campo.

E' all'ordine del giorno anche la questione dell'elaborazione di concetti a lungo termine per influenzare i paesi, le regioni e i singoli problemi piu' importanti (naturalmente con la partecipazione del Ministero degli Esteri, scienziati e specialisti di spicco).

Nel risolvere i compiti relativi all'esercizio di un'influenza all'estero vantaggiosa per i paesi socialisti attraverso azioni speciali, l'intelligence si scontra sempre con un nemico esperto e insidioso, rappresentato dai suoi organi di intelligence. I loro sforzi sono diretti a ostacolare e paralizzare le attivita' della nostra intelligence.

Preparare e condurre in tali condizioni e con costi minimi MA su larga scala altamente efficaci, che causino danni significativi al nemico, nascondendo con certezza il coinvolgimento dell'intelligence in queste azioni: questa e' proprio l'arte dell'intelligence nel campo delle MA.

Il concetto di arte operativa nella preparazione e nell'attuazione delle MA, come si evince da quanto detto finora, e' costituito da molti elementi diversi, la cui conoscenza e assimilazione non e' facile. Quest'arte non appare all'improvviso. Si acquisisce gradualmente, con il duro lavoro.

Un'esperienza pluriennale dimostra che a lavorare in modo piu' fruttuoso ed efficace in questo importante settore dell'attivita' di intelligence sono quelle persone che hanno ampie vedute politiche, grande immaginazione, fantasia, capaci di pensare in modo creativo e logico, di analizzare il materiale, di fare generalizzazioni e separare le cose piu' importanti, di penetrare l'essenza dei fenomeni, di lavorare in modo indipendente, di valutare correttamente fallimenti ed errori, di mostrare inventiva e astuzia operativa. Gli agenti operativi che possiedono queste qualita' raggiungono quest'arte operativa in modo piu' rapido ed efficiente, la arricchiscono con il loro contributo e ottengono risultati tangibili nella realizzazione delle MA.

L'arte nella conduzione delle MA, cosi' come l'arte in altre aree dell'intelligence, non puo' essere completamente padroneggiata da ogni ufficiale dell'intelligence, ma tuttaviae e' obbligatorio e necessario coinvolgere a volte, in particolare nelle singole fasi dell'attuazione delle MA, anche gli agenti operativi delle residenze, dei dipartimenti di linea e di alcune direzioni.

La visione del mondo marxista-leninista dell'ufficiale dell'intelligence, le sue convinzioni, i suoi ragionamenti dialettici esercitano senza dubbio un'influenza decisiva sul processo di padronanza dell'arte dell'intelligence anche in questo specifico campo delle MA.

N. 155/2870 Esec. 08-8245 Note preparate sulla base di una delle dichiarazioni del compagno Vl. P. Ivanov

= Motivazioni ideologiche e politiche delle M.A.

Come e' risaputo l’ideologia marxista/leninista e' profondamente informata dal rovesciamento del pensiero di von Clausewitz inteso come: "La politica non e' che la continuazione della guerra con altri mezzi". In tale ottica, ogni atto politico, anche in tempo di pace, si avvale della strategia militare nello sfruttare tutte le debolezze del “nemico” utili al raggiungimento dei propri obiettivi. Non certo a caso quindi, in una relazione citata, giunta dagli archivi del Servizio Segreto Bulgaro all’indomani della visita nel Gennaio 1985 del Generale Vladimir Ivanov del KGB a Sofia, lo stesso citava un’opera di Lenin per introdurre ed illustrare politicamente ed ideologicamente il “cuore” delle misure attive:

“Il nemico piu' potente puo' essere sconfitto solo con impegno estremo e sfruttando con massima abilita' e attenzione qualunque sua debolezza, anche la piu' piccola, ogni conflitto di interessi tra la borghesia dei vari paesi e tra vari gruppi o tipi di borghesia all’interno dei diversi paesi, approfittando di ogni opportunita', anche la piu' piccola, di avere la massa dalla propria parte, anche se si trattera' di un alleato temporaneo, indeciso, instabile, inaffidabile e condizionato”.

Piu' dettagliatamente estrapoliamo un passo piu' ampio dello stesso scritto in una nuova recente traduzione:

“Si puo' vincere un nemico piu' potente soltanto con la massima tensione delle forze e alla condizione necessaria di utilizzare nella maniera piu' diligente, accurata, attenta, abile, ogni benche' minima “incrinatura” tra i nemici, ogni contrasto di interessi tra la borghesia dei diversi paesi, tra i vari gruppi e le varie specie di borghesia all’interno di ogni singolo paese, e anche ogni minima possibilita' di guadagnarsi un alleato numericamente forte, sia pure temporaneo, incerto, incostante, instabile, inaffidabile, non incondizionato. Chi non ha capito questo, non ha capito un’acca ne' del marxismo, ne' del moderno socialismo scientifico in generale. Chi non ha praticamente dimostrato, durante un periodo di tempo abbastanza lungo e in situazioni politiche abbastanza varie, di essere capace di applicare nella pratica questa verita', non ha ancora imparato ad aiutare la classe rivoluzionaria nella sua lotta per liberare tutta l’umanita' lavoratrice dagli sfruttatori. E cio' che si e' detto si riferisce egualmente al periodo anteriore e al periodo successivo alla conquista del potere politico da parte del proletariato.”

(https://www.nuovopci.it/classic/lenin/estremismo.html)

E’ ormai storicamente assodata l’ammirazione da parte di Lenin verso il teorico militare von Clausewitz ed e' su questo fondamentale concetto che lo storico militare Nicola Zotti si esprime delineando l’origine di tale lettura da parte di Lenin:

La prima citazione di von Clausewitz che incontriamo negli scritti di Lenin compare ne “Il collasso della Seconda Internazionale”, del giugno 1915:

*«Applicata alla guerra, la tesi di fondo della dialettica […] e' che “la guerra e' semplicemente la continuazione della politica con altri mezzi (e precisamente violenti)”. Questa la formulazione di Clausewitz, uno dei piu' grandi autori su questioni di storia militare, le cui idee furono originate da Hegel. E queste idee furono sempre il punto di vista di Marx e Engels, che videro ‘ogni guerra’ come la continuazione della politica di ogni potere investito di interessi e delle differenti classi al loro interno, in una determinata epoca».*

Lenin e' il primo a cogliere un aspetto essenziale del pensiero di von Clausewitz, estremamente gravido di conseguenze: la relazione tra guerra e politica individuato dal pensatore prussiano trascende infatti un’interpretazione restrittiva applicabile solo agli Stati, ma puo' essere estesa a qualsiasi comunita' politica. Se la guerra e' il “vero camaleonte” descritto da von Clausewitz, ovunque una comunita' politica individui se stessa, potra' esprimere una ‘forma guerra’ di natura propria e congeniale. La lettura del ‘Vom Kriege’ chiariva a Lenin che per la prima volta nella teoria militare era stato negato l’eterno e il permanente, aprendo la strada alla possibilita' di impegnarsi a esaminare il fenomeno della guerra nelle sue interdipendenze e interconnessioni, nei suoi movimenti e sviluppi per riuscire a postularne leggi, principi e prassi originali. La ‘guerra socialista’ – come si legge ne “Il socialismo e la guerra” (1915) – era ormai disponibile:

«[Noi bolscevichi] comprendiamo l’inevitabile legame delle guerre con la lotta delle classi nell’interno di ogni paese, comprendiamo l’impossibilita' di distruggere le guerre senza distruggere le classi ed edificare il socialismo, come pure in quanto riconosciamo pienamente la legittimita', il carattere progressivo e la necessita' delle guerre civili, cioe' delle guerre della classe oppressa contro quella che opprime, degli schiavi contro i padroni di schiavi, dei servi della gleba contro i proprietari fondiari, degli operai salariati contro la borghesia». (http://www.warfare.it/storie/lenin_clausewitz_p1.html)

Attraverso questa interpretazione profondamente intrisa dell’equivalenza tra dialettica politica e guerra, lo scontro e' ubiquitario ed onnipresente in ogni epoca storica ed appare dunque l’utilizzo dell’ormai famoso “Divide ed impera” di cui le “misure attive” divengono gli strumenti principali per destabilizzare un’intera nazione e dunque sopraffarla piu' facilmente.

Per comprendere le motivazioni dell’attuazione delle Misure Attive da parte dell’Unione Sovietica e' necessario quindi capire il pensiero politico alla base dell’agire del suo “Spada e Scudo” dell'agire dell'URSS ovvero il KGB. Sempre dal libro “Dezinformatsia: Active Measures in Soviet Strategy” e' possibile chiarire ulteriormente scopi e motivazioni:

“*Ampie prove della continua adesione sovietica a questi precetti si trovano nelle fonti sovietiche disponibili, compresi gli scritti e i discorsi dei principali funzionari del Partito e dell’esercito. Leonid Brezhnev, ad esempio, annuncio' in diverse occasioni che la coesistenza pacifica non avrebbe comportato un indebolimento della lotta rivoluzionaria mondiale; al contrario, la lotta si sarebbe intensificata e gli antagonismi si sarebbero acuiti tra i due sistemi. Nel 1973, Breznev affermo' che “la rivoluzione, la lotta di classe e il marxismo-leninismo non possono essere abrogati per ordine o per accordo…ordine o per accordo… stiamo lottando per assicurare condizioni internazionali favorevoli per l’avanzamento della causa del progresso sociale”. Questo punto di vista e' stato ribadito da Breznev nel 1976 al XXV Congresso del CPSU:*

*I politici borghesi […] si lamentano della solidarieta' dei comunisti sovietici e del popolo sovietico con la lotta dei popoli per la liberta' e il progresso. Si tratta di ingenuita' o, piu' probabilmente, di deliberato offuscamento… La coesistenza pacifica… non abolisce minimamente, ne' puo' abolire o alterare, le leggi della lotta di classe.*

*Il maresciallo A. A. Grechko ha affermato in modo analogo che la prospettiva leninista sul conflitto, la guerra e la politica Leninista sul conflitto, la guerra e la politica continua a essere alla base dei concetti politico-strategici sovietici e la relativa dottrina militare.*

*Secondo Grechko:*

*"La definizione di Lenin sulla natura della guerra e' la chiave per una corretta comprensione del contenuto socio-politico delle guerre passate e di quelle precedenti… Lenin e' la chiave per una corretta comprensione della natura della guerra.*

*Lenin insegna che “la guerra e' semplicemente una continuazione della politica con altri mezzi (specificamente violenti)”… Questo e' stato sempre il punto di vista di Marx ed Engels, che hanno esaminato ogni guerra come la continuazione di politiche e poteri…La scienza militare sovietica e' guidata… dalla definizione leninista dell’essenza della guerra come continuazione della politica attraverso altri mezzi, specificamente mezzi di forza.*

*Cio' che queste affermazioni suggeriscono e' una continua adesione sovietica a una visione dinamica e dialettica della storia, che sottolinea come l’interazione e il movimento politico siano il risultato di un conflitto. Un conflitto che si verifica quasi sempre tra i principali avversari di ogni periodo storico. Come ha osservato un importante portavoce sovietico, “la rivalita', la lotta e il conflitto dei due sistemi contrapposti sono oggettivamente ineluttabili” e continueranno “finche' esisteranno due sistemi socio-economici diversi”. L’antagonista principale, secondo il punto di vista sovietico, e' l’entita' che ha la capacita' e la volonta' di infliggere il danno piu' grave. Una volta identificato l’antagonista principale, l’approccio sovietico richiede che questa entita' sia separata dai suoi alleati e isolata nel sistema internazionale.”*

Le conseguenze di tale impostazione vengono dettagliatamente descritte dall’ex spia cecoslovacca Ladislav Martin-Bittman nel suo libro piu' famoso del 1983, The KGB and Soviet Disinformation: An Insider’s View: “*The overall purpose is not only to deceive but to cause damage to the target. The victim of disinformation must be led to inflict harm upon himself, directly or indirectly. – either by acting against his own interests on the basis of spuriod information or by remaining passive when action is needed*”. Facendo dunque leva come un’incudine capace di agire su argomentazioni od idee particolarmente divisive (oggi diremo polarizzanti…) l’autore afferma ancora: “*Most disinformation clearly serves the receiver’s needs by playing upon prejudice and bias.*” L’esperto politologo Thomas Rid riassume quanto fin qui analizzato in maniera molto efficace mostrando i “punti di sutura” (come li definisce il collettivo Luther Blisset) su cui agire: “*Basandosi sull’analisi del materiale a loro disposizione, e facendosi aiutare se necessario da scienziati e specialisti, gli agenti hanno il dovere di rintracciare focolai di crisi, insoddisfazioni, frizioni, contrasti, rivalita' e scontri nel territorio nemico. L’approccio scientifico e la conoscenza delle culture dei diversi paesi avrebbero consentito di identificare i punti deboli piu' vulnerabili*”.

Ma l’intelligence sovietica non ha limitato il concetto di “misure attive” alla sola intelligence. Le misure attive erano infatti un complemento non convenzionale alla diplomazia tradizionale. Sono state per antonomasia uno strumento offensivo della politica sovietica. In particolare, avevano lo scopo di influenzare la politica dei governi stranieri, interrompere le relazioni tra altre nazioni, minare la fiducia nei leader e nelle istituzioni straniere e screditare gli avversari. Le misure attive, quindi, consistevano in un’ampia gamma di attivita', sia palesi che occulte, tra cui:

- Manipolazione o controllo dei media.

- Disinformazione scritta o orale.

- Uso di partiti comunisti stranieri e di organizzazioni di facciata.

- Manipolazione delle organizzazioni di massa.

- Falsificazione di documenti governativi, diplomatici, storici, etc…

- Radiodiffusione clandestina.

- Attivita' economiche.

- Operazioni paramilitari.

- Altre operazioni di influenza politica.

Fa eco con una proficua sintesi di quanto fin qui esposto il libro “The KGB and Soviet Disinformation”:

*"Ogni sforzo viene fatto per presentare il messaggio in modo tale da dissuadere i leader di un Paese bersaglio dall'analisi critica di  segmenti ingannevoli. Lo scopo complessivo non e' solo quello di ingannare, ma anche di causare danni all'obiettivo. La vittima della disinformazione deve essere indotta a infliggersi un danno, direttamente o indirettamente, agendo contro i propri interessi sulla base di informazioni false o rimanendo passiva quando e' necessario agire."*

(https://www.istitutogermani.org/2025/06/23/la-misura-attiva-piu-efficace-e-devastante-del-kgb-loperation-denver/#sdfootnote1sym)

= La ricetta per creare la perfetta M.A.

Lo scopo generale delle Misure Attive puo' essre quindi riassunto in quello che gli analisti moderni definiscono come le 5D:

- (*Dismiss*) Respingi: respingi le critiche respingendo i tuoi critici. Questo potrebbe significare che i critici usano per te uno standard diverso rispetto agli altri attori o a se stessi; o sostenendo che la loro critica e' parziale.
- (*Distort*) Distorcere: distorcere la narrazione. Prendi informazioni, o artefatti come immagini, e cambia l'inquadratura attorno ad essi.
- (*Distract*) Distrarre: sposta l'attenzione su una narrazione o un attore diverso, ad esempio accusando i critici della stessa attivita' di cui ti hanno accusato (ad esempio brutalita' della polizia).
- (*Dismay*) Sgomento: minacciare il critico o il narratore degli eventi. Ad esempio, minacciare giornalisti o organi di stampa che riportano una storia.
- (Divide) Dividere: creare conflitto tra sottogruppi, per ampliare le divisioni in una comunita' locale, nazionale od internazionale.

Le narrazioni sono le storie che raccontiamo a noi stessi su chi siamo, a chi apparteniamo e cosa sta succedendo nel mondo. Le narrazioni possono essere personali, o narrazioni di gruppo, o la base di cio' che crediamo di essere come nazioni. Le 5D vengono solitamente utilizzate per influenzare le narrazioni a livello di stato-nazione.

Oltre questi principi generali un’analisi contemporanea molto dettagliata del New York Time ha evidenziato quella che viene definita una “guida alla creazione delle Misure Attive” che puo' essere descritta in questo modo:

1. Trova le "fratture" nel tessuto sociale, le divisioni sociali, religiose, demografiche, economiche ed etniche. I disinformatori non creano divisioni dal nulla. Individuano tensioni sociali gia' esistenti (es. razzismo, diseguaglianze economiche, divisioni politiche, scetticismo/confusione sui vaccini) e le amplificano per spaccare l'opinione pubblica.
2. Crea una grande menzogna, qualcosa che sarebbe molto dannoso se si potesse indurre la gente a crederci. Inventare un'enorme, clamorosa falsita'. Piu' l'affermazione e' enorme e audace, piu' e' probabile che le persone pensino "non puo' essere del tutto inventata" e inizino a parlarne, facendola circolare.
3. Avvolgi la menzogna in un nucleo di verita'. Una bugia totale viene smentita facilmente. Per renderla credibile, viene mescolata con fatti reali o documenti autentici ma decontestualizzati. La verita' parziale fa da "esca" per far ingoiare la menzogna.
4. Nascondi la mano, fai sembrare che la storia provenga da qualche altra parte. La fonte originale del complotto deve rimanere segreta. La notizia non deve sembrare propaganda straniera o governativa, ma deve apparire come il frutto del lavoro di giornalisti indipendenti, attivisti locali o fughe di notizie (whistleblower) che sfruttino, ad esempio, quello "stile paranoico" cosi' bene definito dallo storico americano Richard Hofstadter nel suo celebre saggio "Lo stile paranoide nella politica americana" (pubblicato in Italia da Adelphi).
5. Trovati un "utile idiota" che propaghi il tutto. Questi processi di manipolazione molto spesso si basano sulla complicita' di giornalisti, i quali – per vicinanza politica o per interesse – avallano notizie false o screditanti basate su nessuna fonte o su fonti quantomeno discutibili. Ma non solo i giornalisti sono i principali obiettivi, puo' esserlo chiunque abbia un ruolo autorevole in ambito politico, legislativo, accademico o scientifico e sia vicino alla tesi propugnate. Reclutare o sfruttare inconsapevolmente persone influenti all'interno della societa' bersaglio (politici, celebrita', giornalisti, influencer). Queste persone diffonderanno la fake news amplificandone la portata e dandole legittimita', convinte in buona fede che sia vera.
6. Nega tutto sempre, anche se la verita' e' ovvia. Anche di fronte a prove schiaccianti, la strategia prevede di negare costantemente l'evidenza, seminare dubbi, attaccare la credibilita' di chi smentisce la notizia o deviare l'attenzione su altri argomenti (pratica nota come whataboutism).
7. Gioca sul lungo periodo; serve tempo affincha' si diffonda la notizia, ma tu continua a ripetere e ripetere la stessa idea in piu' contesti. La ripetizione, e' dimostrato, vuole dire familiarita' e quindi maggiore probabilita' di accettazione dell'argomentazione veicolata. La disinformazione non cerca un successo immediato. Si tratta di campagne che durano mesi, anni o decenni, volte a logorare lentamente la fiducia dei cittadini nelle istituzioni, nei media tradizionali e nella democrazia stessa.

#figure(
  image("photos/COMMANDAMENTSOFFAKENEWS.jpg", width: 100%),
)

Le misure attive funzionano in generale come un incendio doloso in una foresta colpita dalla siccita': gli agenti della disinformazione non creano le tensioni (il legname secco), ma si limitano a gettare il fiammifero nel punto giusto affinche' il fuoco divampi da solo e diventi incontrollabile, distruggendo la fiducia sociale anche molto tempo dopo che chi ha appiccato le fiamme se n'e' andato.

Si veda:

- (https://web.archive.org/web/20230223211213/https://inventory.adt.ac/wiki/The_5D%27s_(dismiss,_distort,_distract,_dismay,_divide))
- (https://www.stopfake.org/it/all-origine-delle-fake-news-virus-politico-per-distruggere-l-occidente/)

= Alcuni esempi reali di “Misure Attive”

Una delle “Misure Attive” piu' riuscita e dalle tragiche conseguenze e' sicuramente l’*Operation Denver* (conosciuta erroneamente come Operation Infektion) del KGB di cui ho scritto articoli e dato una piccolissima mano al Prof. Douglas Selvage (esperto americano su questa affascinante e terribile "Misura Attiva"):

- (https://www.laputa.it/operazione-infektion-virus-disinformazione/)
- (https://storieinmovimento.org/wp-content/uploads/2024/03/06_ZAP60-Scheggia2.pdf)
- (https://www.youtube.com/watch?v=x9L7ExLL2KA)
- (https://www.istitutogermani.org/2025/06/23/la-misura-attiva-piu-efficace-e-devastante-del-kgb-loperation-denver/)

L’*Operation Swastika* (nome ipotetico), ovvero il tentativo complesso di provocare tra gli anni 50-60 amplificando l’odio razziale e politico attraverso simboli neonazisti soprattutto a Berlino Est descritto dall’analista Thomas Rid nel suo libro “Active Measures” ed in una conferenza online:

(https://youtu.be/XEYc7VnTFSc?si=OS4PpcU1N7WcwfbP)

Infine l’*Operation Neptune*, creata dalla Intelligence Cecoslovacca nascondendo ipotetici documenti nazisti falsificati in un lago per poi essere “casualmente” scoperta dalla stampa locale e nazionale.

Si veda:

- (https://www.wired.com/story/uncovering-operation-neptun-the-cold-wars-most-daring-disinformation-campaign/)
- (https://www.wilsoncenter.org/blog-post/cold-war-disinformation-new-revelations-about-operation-neptune-czech-archives)

Lo scenario specifico del LARP che seguiremo da un punto di vista storico e' quello relativo all'Operation Infektion/Denver.

L'Operazione "Farisei" (Pharisees, anni '80). Con l'avvicinarsi del 50° anniversario della tragedia (1983) e la crescente mobilitazione della diaspora ucraina in Occidente per far riconoscere il genocidio, il KGB avviò l'Operazione "Farisei":
- Contrasto alla diaspora: Gli archivi declassificati della SBU (i servizi di sicurezza ucraini) hanno rivelato direttive specifiche approvate dal KGB della RSS Ucraina per intercettare e neutralizzare le campagne informative estere.
- Contro-narrative accademiche: Furono finanziati e pubblicati libri, articoli e studi storici ad hoc per dimostrare che le tesi sul carattere artificiale della carestia fossero falsità create dai "nazionalisti ucraini" in combutta con la CIA.

- Controllo degli stranieri: Venne incrementato il monitoraggio dei turisti stranieri in visita e dei cittadini sovietici che rientravano dall'estero per impedire il passaggio di materiale documentale sensibile.

Si veda: 

- https://www.szru.gov.ua/en/history/stories/prevent-information-about-the-famine-in-ukraine-from-leaking-abroad
- https://www.researchgate.net/publication/400146533_Operazione_Farisei_Misure_attive_del_KGB_contro_il_riconoscimento_dell'Holodomor_1982-1990

= Lo scenario giocato nel LARP: Operation Infektion/Denver

Storicamente l’inizio della “misura attiva” e' identificato con la pubblicazione sul giornale indiano “Patriot” il 17 Luglio 1983 di un articolo dal titolo: “AIDS may invade India: Mystery disease caused by US experiments”. L’”Operazione Denver” inizia con una presunta lettera anonima “di un famoso antropologo e scienziato americano” . Nella classica rubrica delle lettere al giornale veniva ventilata l’ipotesi che il virus dell’HIV causa dell’AIDS (acronimo di “Acquired ImmunoDeficiency Syndrome”) fosse stato creato in laboratorio negli Stati Uniti per essere accidentalmente o volutamente messo in circolazione con l’obiettivo di sterminare la popolazione come arma biologica di massa contro gli omosessuali e tossicodipendenti.

#figure(
  image("/photos/1983-07-patriot-0001.png", width: 40%),
  caption: [“Patriot” il 17 Luglio 1983 ],
) <fig:1983-07-patriot-0001>

Un’attenta analisi delle fonti attraverso le pubblicazioni del Dipartimento della Difesa Americano (Soviet Influence Activities: A Report on Active Measures and Propaganda, 1986 – 87) descrivono il giornale come: “*Il New Delhi Patriot e' un quotidiano filo-sovietico con una tiratura di circa 35.000. Ha servito a lungo come veicolo per la disinformazione sovietica. Secondo Ilya Dzhirkvelov, un ex Ufficiale del KGB che disertò in Occidente nel 1980, il Patriot era stato istituito dal KGB nel 1962 con lo scopo di pubblicare disinformazione*”.

Il nome “Denver” a differenza del più noto e conosciuto “Operation Infektion” e' stato tratto da fonti certe che lo storico Douglas Selvage in collaborazione con l’esperto storico ed archivista Christopher Nehring hanno rintracciato nell’archivio dell’ex Agenzia per lo spionaggio Bulgaro: “*Alll’inizio del settembre 1986, la Stasi della Germania dell’Est ha cercato di indurre la Sicurezza di Stato bulgara a collaborare con essa – cioe' non solo con il KGB – nella campagna di disinformazione sull’AIDS. La divisione per le misure attive (numero romano “X”) della Direzione capo dell’intelligence (Hauptverwaltung Aufklärung, HVA) della Stasi ha scritto in un progetto di piano di cooperazione sulle misure attive quanto segue:*

*Con l’obiettivo di esporre i pericoli per l’umanità derivanti dalla ricerca, produzione e uso di armi biologiche, e anche al fine di rafforzare i sentimenti antiamericani nel mondo e suscitare controversie politiche interne negli Stati Uniti, la RDT [Repubblica Democratica Tedesca] consegnerà uno studio scientifico e altro materiale che dimostrerà che l’AIDS ha avuto origine negli Stati Uniti, non in Africa, e che l’AIDS e' un prodotto della ricerca statunitense sulle armi biologiche.”*

In un precedente documento, sempre individuato dai ricercatori Selvage-Nehring, del 6 Settembre 1985 negli archivi Bulgari, il KGB comunica al Servizio Segreto Bulgaro:

“*Stiamo conducendo una serie di misure [attive] in connessione con la comparsa negli ultimi anni negli Stati Uniti di una nuova e pericolosa malattia, la “Sindrome da immunodeficienza acquisita – AIDS”…, e la sua successiva diffusione su larga scala in altri paesi, compresi quelli dell’Europa occidentale. L’obiettivo di queste misure e' creare un’opinione favorevole per noi all’estero sul fatto che questa malattia sia il risultato di esperimenti segreti con un nuovo tipo di arma biologica da parte dei servizi segreti degli Stati Uniti e del Pentagono che sono andati fuori controllo*”.

La “lettera” apparsa sul Patriot anche se non ebbe l’eco mediatica sperata, costitui' in ogni caso un importante precedente citato in numerose occasioni dagli articoli successivi. In quest’ottica la campagna raggiunse un più ampio pubblico attraverso la pubblicazione il 30 ottobre 1985 di un nuovo pezzo su Literaturnaya Gazeta dal titolo “Panico ad occidente: ovvero, chi si nasconde dietro le voci sull’AIDS” riportando in buona parte ed integrando quanto già apparso sul “Patriot”. Lo stesso articolo riportava parte delle immagini della copertina della rivista Life del Luglio 1985 che titolava in caratteri rossi: “Now No One Is Safe From AIDS” oltre ad una foto di Fort Detrick[1](https://www.istitutogermani.org/2025/06/23/la-misura-attiva-piu-efficace-e-devastante-del-kgb-loperation-denver/#sdfootnote1sym) dimostrando il mutato interesse e preoccupazione dell’opinione pubblica mondiale e soprattutto occidentale. Va in ogni caso sottolineato che anche per il settimanale Literaturnaya Gazeta vi erano prove che fosse uno dei mezzi preferiti dal KGB come riporta nel suo libro l’ex Generale del KGB Oleg Kalugin: *“Literaturnaya Gazeta era il nostro principale canale nella stampa sovietica per la propaganda e la disinformazione. Ogni volta che chiamavamo l’editore, Alexander Chakovsky, e gli chiedevamo di stampare un articolo, lui rispettava. A volte scrivevamo storie sotto il nome di autori inesistenti. A volte giornalisti come Borovik o Iona Andronov hanno scritto le storie, utilizzando le informazioni fornite dal KGB. Ma qualunque sia il metodo, Literaturnaya Gazeta, che stranamente e' diventata una delle pubblicazioni principali durante la Glasnost, era una delle nostre pubblicazioni preferite”.* A questo punto la “fake news” esplose e fu ripresa da numerose testate estere anche grazie all’ulteriore lancio da parte di diverse agenzie e media sovietici.

#figure(
  image("/photos/Obraz1-2.jpg"),
  caption: ['Panic in the West, or What Is behind the AIDS Sensation': an article in the Soviet weekly Litieraturnaja gazieta of 30 October 1985, featuring photos of people with HIV/AIDS and a biological weapons laboratory in Fort Dietrich, Maryland.],
) <fig:obraz1-2>

La domanda da porsi riguarda principalmente quali siano state le basi che hanno contribuito alla creazione di questi articoli: gli agenti del KGB e degli altri Servizi satelliti da quale materiale sono partiti su cui ideare la diffusione e l’organizzazione della loro campagna? Se ci rifacciamo al pensiero politico delineato nell’introduzione potremmo avanzare l’ipotesi che tali campagne di disinformazione abbiano tratto forte ispirazione dalle teorie del complotto che “naturalmente” si stavano diffondendo all’interno delle minoranze gay ed afroamericane proprio negli Stati Uniti. Se e' vero infatti, come testimoniano cronache storiche di ogni epoca, che le epidemie sono state sempre accompagnate da “teorie del complotto” utili ad affrontare psicologicamente un evento catastrofico ed imprevedibile come le epidemie, non possiamo escludere che una forte componente derivi anche da quello che il noto politologo Richard Hofstadter definisce come “Lo stile paranoide nella politica americana”. La profonda sfiducia verso le istituzioni governative era nata dopo lo “scandalo Watergate”. Si era ulteriormente incrinata soprattutto dopo la rivelazioni degli incredibili esperimenti del progetto MK-Ultra[2](https://www.istitutogermani.org/2025/06/23/la-misura-attiva-piu-efficace-e-devastante-del-kgb-loperation-denver/#sdfootnote2sym) e del famigerato studio medico sulla sifilide di Tuskegee[3](https://www.istitutogermani.org/2025/06/23/la-misura-attiva-piu-efficace-e-devastante-del-kgb-loperation-denver/#sdfootnote3sym). Questo clima aveva condotto l’opinione pubblica statunitense ed alcune sue minoranze alla creazione di diverse “teorie del complotto”. L’idea stessa di un presunto “stato nello stato”, oggi cosi' presente nella narrativa americana contemporanea, era al suo inizio ma già permeava profondamente tutte le classi sociali soprattutto quelle più povere ed emarginate. E’ quasi scontato osservare che quanto riportato negli articoli del Patriot e della Literaturnaya Gazeta era già presente in un articolo del 9 Luglio 1983 sul Boston Gay Community News a firma dell’attivista gay Charlie Shively.

L’autore aveva avanzato questa inquietante ipotesi parlando apertamente di un’ “arma etnica” sviluppata dal Pentagono sull’onda delle sempre più evidenti morti tra gli omosessuali e dell’ormai sfiducia prossima alla paranoia di uno Stato ritenuto assente o poco interessato alle sorti dell’allora additata communità gay.

Non e' possibile creare un collegamento causale diretto con quanto riportato negli scritti degli agenti della disinformazione, tuttavia anche gli ufficiali della Stasi Gunther Bonsach ed H. Brehemer commentano nel loro saggio (“Auftrag Irrefuhrung: Wie die Stasi Politik im Westen machte”) la stretta concordanza e conseguenza logica delle diffuse argomentazioni complottiste: *“La diffusione a valanga di questa terribile malattia a milioni di persone negli anni ’80, soprattutto in Africa, ha fatto riaccendere la discussione sull’origine del virus. Allo stesso tempo, proliferano storie e teorie secondo cui la ricerca genetica, soprattutto negli Stati Uniti, poteva produrre nuove aberrazioni che minacciano l’umanità. In questo contesto, il concetto di campagna e' venuto quasi naturalmente”.* Un ragionamento che collima perfettamente nell’ottica della filosofia politica alla base delle “misure attive” russe e che forse spiega in parte il suo meccanismo di creazione e diffusione.

Stupisce in ogni caso constatare che l’approccio politico/ideologico, e soprattutto il pragmatismo sperimentativo nato dall’esperienza diretta basata su vari tentativi e fallimenti, abbiano condotto i suoi ideatori a forme di penetrazione strategica disinformativa particolarmente efficaci senza la profonda conoscenza dei complessi meccanismi di psicologia cognitivi che oggigiorno possediamo. Tali forme di disinformazione non possono ritenersi quindi innocue, simbolici colpi sparati nella tanto attuale “Guerra dell’Informazione” e dunque forieri di conseguenze reali. L’impatto di tali massicce campagne di disinformazione internazionale possono essere rilevate, ad esempio, in atteggiamenti che conducono a comportamenti ad alto rischio come riporta la Prof.ssa Nicoli Nattrass nel suo libro “The AIDS Conspiracy”:

“*Un numero crescente di ricerche mostra che le convinzioni sulla cospirazione dell’AIDS negli Stati Uniti e in Sud Africa sono associate a comportamenti sessuali a rischio, alla mancata adesione al trattamento antiretrovirale e al mancato test per l’HIV”– tutti comportamenti associati a tassi di infezione da HIV più elevati e quindi ad un numero maggiore di vittime*”.

Come lo storico militare Thomas Boghardt ha scritto, in uno dei primi articoli riguardanti questa complessa vicenda, il lascito di questa misura attiva ha travalicato le aspettative dei suoi stessi ideatori e conclude la sua tesi affermando:

“*Dotati* *di una comprensione* intuitiva della psiche umana, gli specialisti di disinformazione sovietici e della Germania dell’Est applicarono le tecniche che stimolano la crescita e la diffusione di voci e teorie del complotto: la ricerca semplicistica di capri espiatori, la ripetizione infinita e l’abile mescolanza di bugie e mezze verità con fatti innegabili. Una volta che la teoria del complotto sull’AIDS si fu radicata nel subconscio globale, divenne una pandemia a pieno titolo. Come ogni buona storia, si diffuse principalmente tramite il passaparola, soprattutto all’interno dei sottogruppi più colpiti. Avendo sfruttato efficacemente le dinamiche delle voci e delle teorie del complotto, l’intelligence del blocco sovietico ha creato un mostro che e' sopravvissuto ai suoi creatori.”

= Bibliografia

Ladislav Bittman, Roy Godson, The KGB and Soviet Disinformation: An Insider’s View, 1983

United States Department of State, [Soviet Influence Activities: A Report on Active Measures and Propaganda, 1986 – 87](https://www.globalsecurity.org/intell/library/reports/1987/soviet-influence-activities-1987.pdf), 1987

Günter Bohnsack, H. Brehmer, Auftrag Irreführung: Wie die Stasi Politik im Westen machte, Hamburg 1992

Thomas Boghardt, [Soviet Bloc Intelligence and Its AIDS Disinformation Campaign](https://web.archive.org/web/20201227170847/https://www.cia.gov/library/center-for-the-study-of-intelligence/csi-publications/csi-studies/studies/vol53no4/pdf/U- Boghardt-AIDS-Made in the USA-17Dec.pdf). 2009

Fletcher Schoen, Christopher J. Lamb. [Deception, Disinformation, and Strategic. Communications: How One Interagency Group. Made a Major Difference](https://ndupress.ndu.edu/Portals/68/Documents/stratperspective/inss/Strategic-Perspectives-11.pdf). 2012

Geissler E, Sprinkle RH. [Disinformation squared: was the HIV-from-Fort-Detrick myth a Stasi success?](https://www.ncbi.nlm.nih.gov/pubmed/24697634). 2013 [(PDF)](https://clinmedjournals.org/articles/ijva/international-journal-of-virology-and-aids-ijva-3-017.pdf)

Nicoli Nattrass, The AIDS Conspiracy – Science Fights Back, Novembre 2013

Selvage, Douglas; Nehring, Christopher. [Die AIDS-Verschwörung – Das Ministerium für Staatssicherheit und die AIDS-Desinformationskampagne des KGB](https://www.bstu.de/assets/bstu/de/Publikationen/BFi33_Selvage_AIDS.pdf). 2014

Selvage, Douglas. [Memetic engineering: conspiracies, viruses and historical agency](https://www.opendemocracy.net/en/memetic-engineering-conspiracies-viruses-and-historical-agency/). Open Democracy UK. 2015.

Erhard Geissler, [The AIDS Myth at 30](http://dx.doi.org/10.23937/2469-567X/1510017). 2016

Fingerprints of Russian Disinformation: From AIDS to Fake News, https://www.nytimes.com/2017/12/12/us/politics/russian-disinformation-aids-fake-news.html, New York times, 2017

Anders Jeppsson, [How East Germany Fabricated the Myth of HIV Being Man-Made](http://journals.sagepub.com/doi/10.1177/2325957417724203). 2017

Selvage, Douglas. [Operation “Denver”: The East German Ministry of State Security and the KGB’s AIDS Disinformation Campaign, 1985–1986 (Part 1)](https://www.mitpressjournals.org/doi/full/10.1162/jcws_a_00907). 2019

Selvage, Douglas; Nehring, Christopher.[ Operation “Denver”: The East German Ministry for State Security and the KGB’s AIDS Disinformation Campaign, 1986–1989 (Part 2)](https://direct.mit.edu/jcws/article-abstract/23/3/4/106859/Operation-Denver-The-East-German-Ministry-for). 2021

Selvage, Douglas; Nehring, Christopher. [Operation “Denver”: KGB and Stasi Disinformation regarding AIDS](https://www.wilsoncenter.org/blog-post/operation-denver-kgb-and-stasi-disinformation-regarding-aids). 2019

[Opinion video series ‘Operation Infektion’ by The New York Times](https://www.nytimes.com/2018/11/12/opinion/russia-meddling-disinformation-fake-news-elections.html)

China revives conspiracy theory blaming U.S. for COVID-19, https://medium.com/dfrlab/china-revives-conspiracy-theory-blaming-u-s-for-covid-19-4526d316abf3, Febbraio 2021

Wuhan lab leak theory: How Fort Detrick became a center for Chinese conspiracies, https://www.bbc.com/news/world-us-canada-58273322, 23 Agosto 2021

Misure attive, Storia segreta della disinformazione, Thomas Rid, Gennaio 2022

Moscow, “Bioweapons,” and Ukraine: From Cold War “Active Measures” to Putin’s War Propaganda,https://www.wilsoncenter.org/blog-post/moscow-bioweapons-and-ukraine-cold-war-active-measures-putins-war-propaganda, Marzo 2022

MK-Ultra: https://info.publicintelligence.net/SSCI-MKULTRA-1977.pdf

Project Mind Control: Sidney Gottlieb, the CIA, and the Tragedy of MKULTRA, John Lisle, MacMillan, 2025

Articoli sul tema scritti dall’autore o a cui ha collaborato:

- (https://www.researchgate.net/profile/Douglas-Selvage/publication/336654901_Operation_Denver_The_East_German_Ministry_of_State_Security_and_the_KGB's_AIDS_Disinformation_Campaign_1985-1986_Part_1/links/6094f5e2299bf1ad8d81d488/Operation-Denver-The-East-German-Ministry-of-State-Security-and-the-KGBs-AIDS-Disinformation-Campaign-1985-1986-Part-1.pdf) (Nota 16 pagina 75)

- https://enrico-speranza.medium.com/operation-infektion-disinformation-virus-706c67373cc6 (Prima Versione)

- https://www.laputa.it/operazione-infektion-virus-disinformazione/ (Seconda Versione con correzioni ed immagini)

- https://www.youtube.com/watch?v=x9L7ExLL2KA

- https://storieinmovimento.org/wp-content/uploads/2024/03/06_ZAP60-Scheggia2.pdf

- (https://independent.academia.edu/EnricoSperanza)

- https://www.istitutogermani.org/2025/06/23/la-misura-attiva-piu-efficace-e-devastante-del-kgb-loperation-denver/

Link sull'argomento:

- [https://en.wikipedia.org/wiki/Active\_measures](https://en.wikipedia.org/wiki/Active_measures)  
- [https://engelsbergideas.com/essays/inside-the-disinformation-forever-war/](https://engelsbergideas.com/essays/inside-the-disinformation-forever-war/)  
- Dezinformatsia: Active Measures in Soviet Strategy: [https://en.wikipedia.org/wiki/Dezinformatsia\_(book)](https://en.wikipedia.org/wiki/Dezinformatsia_\(book\))  
- The KGB and Soviet Disinformation: [https://en.wikipedia.org/wiki/The\_KGB\_and\_Soviet\_Disinformation](https://en.wikipedia.org/wiki/The_KGB_and_Soviet_Disinformation)  
- Misure attive: Storia segreta della disinformazione: [https://luissuniversitypress.it/pubblicazioni/misure-attive/](https://luissuniversitypress.it/pubblicazioni/misure-attive/)  
- ACTIVE MEASURES (PAPERBACK) The Secret History of Disinformation and Political Warfare: [https://profilebooks.com/work/active-measures/](https://profilebooks.com/work/active-measures/)
- https://www.mis-translating-deceit.com/project-blog/visual-disinformation-and-hiv-aids-in-the-1980s-the-cases-of-the-soviet-union-and-the-two-germanies
- [https://www.stopfake.org/it/all-origine-delle-fake-news-virus-politico-per-distruggere-l-occidente/](https://www.stopfake.org/it/all-origine-delle-fake-news-virus-politico-per-distruggere-l-occidente/)  
- [https://en.wikipedia.org/wiki/Operation\_Neptune\_(espionage)](https://en.wikipedia.org/wiki/Operation_Neptune_\(espionage\))  
- [https://en.wikipedia.org/wiki/Operation\_Denver](https://en.wikipedia.org/wiki/Operation_Denver)  
- [https://www.globalsecurity.org/intell/library/reports/1987/soviet-influence-activities-1987.pdf](https://www.globalsecurity.org/intell/library/reports/1987/soviet-influence-activities-1987.pdf)  
- [https://www.c-span.org/video/?3002-1/soviet-influence](https://www.c-span.org/video/?3002-1/soviet-influence)  
- [https://ndupress.ndu.edu/portals/68/documents/stratperspective/inss/strategic-perspectives-11.pdf](https://ndupress.ndu.edu/portals/68/documents/stratperspective/inss/strategic-perspectives-11.pdf)  
- [https://www.cia.gov/readingroom/docs/CIA-RDP11M01338R000400470089-2.pdf](https://www.cia.gov/readingroom/docs/CIA-RDP11M01338R000400470089-2.pdf)  
- [https://www.govinfo.gov/content/pkg/GOVPUB-S-PURL-gpo90452/pdf/GOVPUB-S-PURL-gpo90452.pdf](https://www.govinfo.gov/content/pkg/GOVPUB-S-PURL-gpo90452/pdf/GOVPUB-S-PURL-gpo90452.pdf)  
- Soviet Active Measures: [https://www.youtube.com/watch?v=ALfDhs-\_ce4](https://www.youtube.com/watch?v=ALfDhs-_ce4)  
- Yuri Bezmenov (ex agente KGB) e la sovversione ideologica: [https://www.youtube.com/watch?v=bmlTAbd-ECo](https://www.youtube.com/watch?v=bmlTAbd-ECo)  
- Operation InfeKtion: How Russia Perfected the Art of War | NYT Opinion:  [https://www.youtube.com/watch?v=tR\_6dibpDfo](https://www.youtube.com/watch?v=tR_6dibpDfo)  
- Active Measures Playlist: [https://youtube.com/playlist?list=PLRBd6GzvW2x5OHzvobXuXSKN\_9zQ7NC8k\&si=sqLuSlOEPM6wRgtE](https://youtube.com/playlist?list=PLRBd6GzvW2x5OHzvobXuXSKN_9zQ7NC8k&si=sqLuSlOEPM6wRgtE)  
- Active Measures Working Group: [https://en.wikipedia.org/wiki/Active\_Measures\_Working\_Group](https://en.wikipedia.org/wiki/Active_Measures_Working_Group)  
- Come si diventa una spia (ilPost): [https://www.ilpost.it/2021/09/05/come-si-diventa-spia/](https://www.ilpost.it/2021/09/05/come-si-diventa-spia/)  
- [Former CIA agent: The truth about manipulation | Andrew Bustamante](https://www.youtube.com/watch?v=iJFIzE3i0X0) 
- https://www.academia.edu/37855944/An_Alternative_Framework_for_Agent_Recruitment_From_MICE_to_RASCLS 
  - https://www.cia.gov/resources/csi/static/Studies-57-1-Extracts-Book-PrintFile.pdf


[^3]:  Lenin, von Clausewitz e la formazione della cultura militare sovietica: [https://web.archive.org/web/20181130113529/http://www.warfare.it/storie/lenin\_clausewitz\_p1.html](https://web.archive.org/web/20181130113529/http://www.warfare.it/storie/lenin_clausewitz_p1.html)

[^4]:  Una dottrina inapplicata: la Guerra russo-finlandese: [https://web.archive.org/web/20181205143207/http://www.warfare.it/storie/lenin\_clausewitz\_p2.html](https://web.archive.org/web/20181205143207/http://www.warfare.it/storie/lenin_clausewitz_p2.html)

[^5]:  [https://www.marx-karl.com/2014/11/le-glosse-gli-estratti-lo-studio-di-lenin-del-libro-di-clausewitz/](https://www.marx-karl.com/2014/11/le-glosse-gli-estratti-lo-studio-di-lenin-del-libro-di-clausewitz/)

[^6]:  CIA FOIA: ACTIVE MEASURES, QUIET WAR AND TWO SOCIALIST REVOLUTIONS. [https://www.cia.gov/readingroom/document/cia-rdp90-00806r000200720008-2](https://www.cia.gov/readingroom/document/cia-rdp90-00806r000200720008-2)

[^7]:  Dezinformatsia: Active Measures in Soviet Strategy: [https://en.wikipedia.org/wiki/Dezinformatsia\_(book)](https://en.wikipedia.org/wiki/Dezinformatsia_\(book\))

[^8]:  MICE: [https://www.cia.gov/resources/csi/studies-in-intelligence/volume-57-no-1/an-alternative-framework-for-agent-recruitment-from-mice-to-rascls/](https://www.cia.gov/resources/csi/studies-in-intelligence/volume-57-no-1/an-alternative-framework-for-agent-recruitment-from-mice-to-rascls/)

[^9]:  [https://www.stopfake.org/it/all-origine-delle-fake-news-virus-politico-per-distruggere-l-occidente](https://www.stopfake.org/it/all-origine-delle-fake-news-virus-politico-per-distruggere-l-occidente)/
