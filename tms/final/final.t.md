# Final Exam Test

```Hodnotenie:```

Snazte sa spravit riesenie v takom tvare, aby aj clovek neznaly robot frameworku vedel,
akym sposobom ma testy pustit a co bude treba (readme, requirements,....)

Doporucujem si vyrobit aj cisto `novy GitHub repository` iba a len s riesenim zadania ale nieje to povinne.


- hodnoti sa ci Vase riesenie `funguje a je opakovatelne`
- hodnoti sa uprava `kodu a struktura testu`
- hodnotia sa `pridane informacie`, napr Readme  subor, kde je popis instalacie a spustania


## Cart functionality

* 100 Adding and removing items from cart
  * otvor: `https://www.heureka.sk`
  * click  `Tipy na darceky`
  * zvolit lubovolnu kategoriu (zena, muz, dieta, par, maznacik)
    - volba je na Vas, nemusi to byt 'random' v ramci robot scriptu
  * subpolozka  `vianoce`
  * vlavo vo filtri zvolit -> cena - `40 - 100 eur`
  * vybrat lubovolnu sekciu (je to na Vas, nemusi to byt random)
    - pozor na nove taby 
  * zvolit lubovolne 3 produkty v kategorii
    - pozor, zvolte take produkty, ktore sa daju `kupit na heureke` (nie kazdy produkt to obsahuje!)
    - napr: https://stavebnice-lego.heureka.sk/lego-classic-10698-velky-kreativni-box/#prehlad/
  * kupit tieto 3 produkty
  * prejst do kosika
    - overit ci su v kosiku 3 produkty
    - overit ci kazdy produkt je v rozmedzi `40 - 100e` (to bol filter)
  * odstranit produkt
    - overit, ci sa tam produkt nenachadza
  * odstranit ostatne produkty
    - overit, ci je kosik prazdny
    - hlaska: `Váš košík zíva prázdnotou`
