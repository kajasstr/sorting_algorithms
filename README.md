# Porovnání řadicích algoritmů: Bubble Sort vs. Quick Sort

Tento projekt byl vytvořen v rámci předmětu Procedurální programování. Zaměřuje se na implementaci, analýzu a reálné porovnání výkonnosti dvou odlišných řadicích algoritmů v prostředí MATLAB.

## Cíle projektu
* **Implementace:** Vytvoření vlastních funkcí pro řazení pole pomocí algoritmů Bubble Sort a Quick Sort.
* **Analýza výkonu:** Měření času běhu obou algoritmů na polích o různé velikosti (od 1 000 do 50 000 prvků).
* **Vizualizace:** Grafické znázornění naměřených časů pro názornou ukázku rozdílu v časové složitosti ($O(n^2)$ vs $O(n \log n)$).
* **Dokumentace:** Algoritmizace Bubble Sortu pomocí přehledného vývojového diagramu.

## Použité technologie
* **Jazyk:** MATLAB
* **Koncepty:** Procedurální programování, rekurze (u Quick Sortu), měření výkonu (`tic`, `toc`), vizualizace dat (`plot`).

## Struktura souborů
* `bubbleSort.m` - Funkce implementující jednoduchý, ale na velkých datech pomalý algoritmus Bubble Sort.
* `quickSort.m` - Funkce implementující rychlý algoritmus Quick Sort na principu "rozděl a panuj" (divide-and-conquer).
* `compareSorts.m` - Hlavní testovací skript. Generuje náhodná pole dat, volá oba řadicí algoritmy, měří jejich časovou náročnost a na závěr vykreslí porovnávací graf.
* `Bubble Sort diagram.pdf` - Vývojový diagram detailně popisující logiku algoritmu Bubble Sort.

## Jak skript spustit
1. Otevři prostředí MATLAB.
2. Ujisti se, že máš všechny `.m` soubory ve stejném pracovním adresáři.
3. Spusť skript `compareSorts.m`.
4. Výsledné časy se vypíšou do konzole (Command Window) a automaticky se otevře okno s grafem porovnávajícím rychlost obou algoritmů.