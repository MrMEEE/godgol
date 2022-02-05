# Good Old Danish Games On Linux

Dette projekt forsøger at samle tekniske informationer om 90'ernes og 00'ernes fantastiske danske computerspil som fx:

  * Magnus og Myggen
  * Pixeline
  * Flunkerne
  * Hugo
  * og mange flere

Jeg vil forsøge at få så mange af dem som muligt til at køre på Linux (under Wine, dosbox eller lignende)..

Fokus er at det skal være nemt for alle at installere og køre disse klassikere, så også den nye generation kan få glæde af dem..

## Teknologier

### Virtuelle CD'er
Generelt har jeg lavet images af alle mine gamle cd'er, og den bedste måde
jeg har fundet at oprette disse images er med Alcohol 52%
(http://shop.alcohol-soft.com/buynow_52.php)

Alcohol 52% er desværre kun til Windows :(.. men tilgengæld får den
kopibeskyttelsen med på langt de fleste cd'er..

På Linux bruger jeg så cdemu (https://cdemu.sourceforge.io/) til at oprette
de virtuelle cdrom drev, fra Alcohol 52%'s MDF/MDS filer..

På et tidspunkt skal jeg nok laver en dybere guide, men den hurtige er her
(til Ubuntu)

```
sudo add-apt-repository ppa:cdemu/ppa

sudo apt -y install cdemu

cdemu load 0 <*.mds fil>

```

## Spil

Kig i mapperne :)

## Generelle Bugs

Pixeline-spillene (og måske flere) kan jeg ikke få til at printe (malebøger mm.)

Jeg har forfulgt problemet så langt at jeg kan se at der kommer en fejl (c0000005, vist noget adgang), når printet skal fra Wine til Linux.. 

Det ser ud til at Spool-filen bliver lavet af spillet, men derefter fejler med at kunne blive transportet over til Linux udskrivningssystem (CUPS)...

Hvis der er nogen der har gode forslag, så sig endelig til.. Fejlen kan ses her: [Pixeline Print Fejl](Bugs/Pixeline-Wine-Print)


## Licenser

Spillene kræver som udgangspunkt en licens, og det forventes at DU selv er ansvarlig for at overholde licenskrav. 
Fokus her er at få spillene til at køre.

Jeg vil løbende forsøge at kontakte Licensholderne, og spørge om:

  * Kildekode til spillene (I stil med hvad fx ID Software gør: https://github.com/id-Software)
  * Kopier af så mange spil som muligt, til at få opbygget en så komplet database over spillene og deres status som muligt
  * Udviklerassistance .. Hvis der er nogen tilbage der ved noget om spillene og kan lave rettelse, så vil dette selvfølgelig være en kæmpe hjælp, men ved godt at det er et long-shot
  * Dokumentation på udviklingen af spillene
  * Frigivelse af nogle af spillene til freeware, så flere kan hente og bruge spillene
  * Patch til fjernelse af copy protection, så spillene kan køres uden cd (som de fleste moderne maskiner ikke har)

Foreløbig har jeg taget kontakt til:
  * Egmont, der tidligere har opkøbt Pixeline, Flunkerne mfl af KREA Medie.
    - [Se svar fra Egmont her](Kommunikation/Egmont)
    - [Se svar om kopibeskyttelse fra Egmont her](Kommunikation/Egmont2)


Om brud af kopibeskyttelse:

Fra [Kulturministeriets hjemmeside](https://kum.dk/kulturomraader/ophavsret/computerspil-og-edb-programmer)

  - Et edb-program er ofte belagt med en kopispærring. Kopispærringer kaldes også DRM – Digital Rights Management. Der tilladt at bryde en kopispærring i det omfang, det er nødvendigt for at kunne bruge et program. Personer, der har købt et edb-program, som ikke kan bruges f.eks. på grund af styresystemet på deres computer, er derfor ikke forhindret i at bryde kopispærringen, da det er nødvendigt for at kunne bruge programmet.

Det er altså tilladt at bryde kopibeskyttelsen, hvis den er i vejen for Wine..


## Hjælp

Jeg vil MEGET gerne have hjælp, så hvis der er nogen derude som vil hjælpe, så sig endelig til, eller send et pull request afsted.

## Referencer

Stor tak til Christian Arvai, der for år tilbage lavede dokumentation om hvordan man kunne afvikle Pixelinespillene, denne dokumentation vil være til stort inspiration, omend jeg nok vil ændre en del.

  - [Christan Arvai's Pixeline Guide](Referencer/Pixelineguide)

## Interessante Links

* https://wiki.winehq.org/Useful_Registry_Keys
* https://ubuntudanmark.dk/forum/viewtopic.php?f=32&t=2759&start=1 
  - Reference til: [Christan Arvai's Pixeline Guide](Referencer/Pixelineguide) 

* https://www.scummvm.org/news/20210817/
  - På sigt vil Pixeline og sikkert flere andre kunne køre native (uden WINE) på Linux

* https://bugs.winehq.org/show_bug.cgi?id=51296
  - WINE bug der rammer mange af de gamle spil, den er for nyligt fixet. Dette betyder dog at de fleste af spillene kræver WINE 7.0

## Downloads

Jeg er ikke klar over følgende er officielt frigivet, men der ligger mange
af Pixeline og andre på Archive.org.. På sigt vil jeg grave ned i
licensbetingelser på disse..

* https://archive.org/details/fav-connorworksarchive
* https://archive.org/details/@jamesoft?tab=uploads
* https://archive.org/details/@duffadash_gmail_com
