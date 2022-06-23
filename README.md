# **Zadání pro pohovor**

Pokuste se vypracovat oba níže popsané úkoly a řešení commitnout do větve **zimmermann**.

## **První úkol (.NET: C# nebo VB):**
-  Napište funkci pro dohledání specifických souborů ve filesystému viz předpis:
   -  C#
        ```csharp
        public string[] GetAllSuitableFilePaths(string searchRoot, string ext, string subStr = ""){}
        ```
   - VB
        ```vb
        public function GetAllSuitableFilePaths(searchRoot as string, ext as string, optional subStr as string = "") as String()
        ```
- Můžete programovat buď v C# nebo VB. 
- Není nutné odevzdávat celý projekt, stačí funkce (případně i všechny související) v souboru solution.cs / solution.vb
- Požadovaná funkcionalita:
  - Funkce vyhledá všechny soubory splňující podmínky a vratí jejich plné cesty v jednom poli. 
  - **Parametry**:
    - **searchRoot**: 
      - Cesta k počátku vyhledávání, prohledávat se bude tato složka a všechny její podsložky.
      - case-insensitive
      - Může obsahovat lomítko na konci, ale nemusí. (C:\dir-a i C:\dir-a\ jsou platné hodnoty) 
      - Nebude-li předán, měla by být vyvolána odpovídající vyjímka.
      - Nebude-li předaná cesta k existující složce měla by být vyvolána odpovídající vyjímka.
    - **ext**: 
      - Přípona souboru. 
      - Vyhledávat se budou pouze soubory s touto příponou.
      - case-insensitive
      - Může, ale nemusí obsahovat tečku. (.txt i TXT jsou platné hodnoty)
      - Nebude-li předán, měla by být vyvolána odpovídající vyjímka.
    - **subStr**:
      - Nepovinný parametr, nebude-li předán bude ignorován.
      - Pokud bude předán bude sloužit jako dodatečný filtr.
      - Pouze soubory obsahující tento řetězec budou vyhledány.
      - case-sensitive
      - Soubor odpovídá tomuto filtru, pokud je tento řetězec obsažen v části před příponou. 
        - Pokud subStr = "tx" 
          - soubor rtx345.txt splňuje podmínku
          - soubor rx123.txt nesplňuje podmínku  

## **Druhý úkol (SQL):**

- Napište SQL script do souboru solution.sql, který bude splňovat následující požadavky:
- Vyhledejte **všechny nesmazané dokumenty** s duplicitním názvem ve složce '\other\Data\' a všech podsložkách. 
  - Složka == Project, 
  - všechny cesty jsou u vedeny jako relativní k rootu a ten je nepodstatný. 
- Při vypracování uvažujte databázi jejíž definici najdete ve složce **Interview\db\\**
- Můžete použí libovolnou syntaxi (MSSQL,Oracle,MySQL, ...). Neočekáváme 100% přesnost syntaxe, jde předevšímm o orientaci v uvažované databázi.

