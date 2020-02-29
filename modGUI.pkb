create or replace package body modGUI as

  procedure apriPagina(titolo varchar2 default 'Senza titolo', id_Sessione int default 0, nome varchar2 default '', ruolo varchar2 default '') is
    begin
      htp.htmlOpen;
        htp.headOpen;
          htp.title(titolo);
          htp.print('<meta charset="utf-8"/>');
          htp.print('<meta name="viewport" content="width=device-width, initial-scale=1.0"/>');
          htp.print('<link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet"/>');
          htp.print('<link href="https://fonts.googleapis.com/css?family=Fjalla+One&display=swap" rel="stylesheet"/>');
          htp.print('<style> ' || Costanti.stile || ' </style>');
          htp.print('<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>');
          htp.print('<script> ' || Costanti.jscript || ' </script>');
        htp.headClose;
        modGUI.apriBody(id_Sessione, nome, ruolo);
    end apriPagina;

    procedure apriBody(id_Sessione int, nome varchar2, ruolo varchar2) is --Dovremmo distinguere per Admin ecc.
    begin
      if(id_Sessione > 0) then
        htp.print('<body>');
        if(ruolo='C') then
            modGUI.creaMenuPrincipale(id_Sessione, nome, ruolo);
        end if;
        if(ruolo='A') then
             modGUI.creaMenuPrincipaleAMM(id_Sessione, nome, ruolo);
             end if;
        if(ruolo='R') then
            modGUI.creaMenuPrincipaleRES(id_Sessione, nome, ruolo);
             end if;
        if(ruolo='S') then
             modGUI.creaMenuPrincipaleSUSER(id_Sessione, nome, ruolo);
             end if;
        if(ruolo='O') then
             modGUI.creaMenuPrincipaleOPE(id_Sessione, nome, ruolo);
             end if;
      else --Guest session
        htp.print('<body class="' || 'bodyLogin' || '">');
        modGUI.creaLogin(id_Sessione);
      end if;
    end apriBody;




  procedure creaMenuPrincipale(id_Sessione int, nome varchar2, ruolo varchar2 default 'C') is
    begin
      modGUI.apriDiv(classe=>'mainMenu');
      modGUI.apriIntestazione(1,'header1');
      modGUI.Collegamento('HOUSE OF CARS','modGUI.creaHome?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.chiudiIntestazione(1);


      htp.print('<ul class=titles>');
      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO1</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile',  'formRicercaArea?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO2</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

     modGUI.apriDiv(classe=>'dropdown');

htp.print('<button class=dropbtn>GRUPPO3</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

  htp.print('<button class=dropbtn>GRUPPO4</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

       modGUI.Collegamento('Visualizza profilo', 'stampaProfilo?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
       modGUI.Collegamento('Visualizza lista dipendenti', 'stampaDipendenti?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

   htp.print('<button class=dropbtn>GRUPPO5</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();
      htp.print('</ul>');
      modGUI.apriDiv(classe=>'logout');
      modGUI.collegamento('LOGOUT', 'accesso.logout?CurrentSession=' || id_Sessione);
      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


    end creaMenuPrincipale;

  procedure creaMenuPrincipaleAMM(id_Sessione int, nome varchar2, ruolo varchar2 default 'A') is
    begin
      modGUI.apriDiv(classe=>'mainMenu');
      modGUI.apriIntestazione(1,'header1');
      modGUI.Collegamento('HOUSE OF CARS','modGUI.creaHome?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.chiudiIntestazione(1);


      htp.print('<ul class=titles>');
      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO1</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO2</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

     modGUI.apriDiv(classe=>'dropdown');

htp.print('<button class=dropbtn>GRUPPO3</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('Tipo Abbonamento','visualizzaTipiAbb?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

  htp.print('<button class=dropbtn>GRUPPO4</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

   htp.print('<button class=dropbtn>GRUPPO5</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();
      htp.print('</ul>');
      modGUI.apriDiv(classe=>'logout');
      modGUI.collegamento('LOGOUT', 'accesso.logout?CurrentSession=' || id_Sessione);
      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


    end creaMenuPrincipaleAMM;

  procedure creaMenuPrincipaleRES(id_Sessione int, nome varchar2, ruolo varchar2 default 'R') is
    begin
      modGUI.apriDiv(classe=>'mainMenu');
      modGUI.apriIntestazione(1,'header1');
      modGUI.Collegamento('HOUSE OF CARS','modGUI.creaHome?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.chiudiIntestazione(1);


      htp.print('<ul class=titles>');
      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO1</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO2</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

     modGUI.apriDiv(classe=>'dropdown');

htp.print('<button class=dropbtn>GRUPPO3</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

  htp.print('<button class=dropbtn>GRUPPO4</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

       modGUI.Collegamento('Visualizza profilo', 'stampaProfilo?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
       modGUI.Collegamento('Visualizza lista dipendenti', 'stampaDipendenti?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

   htp.print('<button class=dropbtn>GRUPPO5</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();
      htp.print('</ul>');
      modGUI.apriDiv(classe=>'logout');
      modGUI.collegamento('LOGOUT', 'accesso.logout?CurrentSession=' || id_Sessione);
      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


    end creaMenuPrincipaleRES;

  procedure creaMenuPrincipaleSUSER(id_Sessione int, nome varchar2, ruolo varchar2 default 'S') is
    begin
      modGUI.apriDiv(classe=>'mainMenu');
      modGUI.apriIntestazione(1,'header1');
      modGUI.Collegamento('HOUSE OF CARS','modGUI.creaHome?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.chiudiIntestazione(1);


      htp.print('<ul class=titles>');
      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO1</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO2</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

     modGUI.apriDiv(classe=>'dropdown');

htp.print('<button class=dropbtn>GRUPPO3</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

  htp.print('<button class=dropbtn>GRUPPO4</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

       modGUI.Collegamento('Visualizza profilo', 'stampaProfilo?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
       modGUI.Collegamento('Visualizza lista dipendenti', 'stampaDipendenti?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

   htp.print('<button class=dropbtn>GRUPPO5</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();
      htp.print('</ul>');
      modGUI.apriDiv(classe=>'logout');
      modGUI.collegamento('LOGOUT', 'accesso.logout?CurrentSession=' || id_Sessione);
      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


    end creaMenuPrincipaleSUSER;

  procedure creaMenuPrincipaleOPE(id_Sessione int, nome varchar2, ruolo varchar2 default 'O') is
    begin
      modGUI.apriDiv(classe=>'mainMenu');
      modGUI.apriIntestazione(1,'header1');
      modGUI.Collegamento('HOUSE OF CARS','modGUI.creaHome?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.chiudiIntestazione(1);


      htp.print('<ul class=titles>');
      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO1</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile',  '##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


      modGUI.apriDiv(classe=>'dropdown');

      htp.print('<button class=dropbtn>GRUPPO2</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

     modGUI.apriDiv(classe=>'dropdown');

htp.print('<button class=dropbtn>GRUPPO3</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

  htp.print('<button class=dropbtn>GRUPPO4</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

       modGUI.Collegamento('Visualizza profilo', 'stampaProfilo?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
       modGUI.Collegamento('Visualizza lista dipendenti', 'stampaDipendenti?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();

      modGUI.apriDiv(classe=>'dropdown');

   htp.print('<button class=dropbtn>GRUPPO5</button>');
      modGUI.apriDiv(classe=>'dropdown-content');

      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);
      modGUI.Collegamento('inserisci automobile','##NOMEPROCEDURA##?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo);


      modGUI.chiudiDiv();
      modGUI.chiudiDiv();
      htp.print('</ul>');
      modGUI.apriDiv(classe=>'logout');
      modGUI.collegamento('LOGOUT', 'accesso.logout?CurrentSession=' || id_Sessione);
      modGUI.chiudiDiv();
      modGUI.chiudiDiv();


    end creaMenuPrincipaleOPE;

  procedure creaLogin(id_Sessione int default 0) is
    begin
      modGUI.apriDiv(classe=>'intestazioneHomeLogin');
        modGUI.apriIntestazione(1, 'header1Login');
          modGUI.inserisciTesto('HOUSE OF CARS');
        modGUI.chiudiIntestazione(1);
        modGUI.apriParagrafo('rela');
          modGUI.inserisciTesto('House Of Cars ti permette di parcheggiare i tuoi veicoli in maniera completamente automatizzata e sicura, grazie al servizio di sorveglianza sempre attivo.');
          modGUI.aCapo;
          modGUI.inserisciTesto('Inoltre, l''azienda vanta molte sedi dislocate su tutto il territorio, aperte 24/7.');
          modGUI.aCapo;
          modGUI.inserisciTesto('House Of Cars rappresenta il posto ideale in cui parcheggiare i tuoi veicoli.');
        modGUI.chiudiParagrafo;
      modGUI.chiudiDiv;
      modGUI.apriDiv(classe=>'myLogin');
        modGUI.apriIntestazione(2);
          modGUI.inserisciTesto('BENVENUTO');
        modGUI.chiudiIntestazione(2);
        modGUI.apriParagrafo('rela');
          modGUI.inserisciTesto('Accedi alla tua area personale per usufruire subito dei nostri servizi');
        modGUI.chiudiParagrafo;
        if(id_Sessione=-1) then
            modGUI.apriParagrafo('relaErr');
                modGUI.inserisciTesto('Username e/o Password errati');
            modGUI.chiudiParagrafo;
        end if;
        modGUI.apriForm('accesso.login', classe=>'defFormLogin'); --Modificare action con procedura PL/SQL che fa query in DB
          modGUI.apriDiv(classe=>'myDivInputLogin');
            if(id_Sessione=-1) then
                modGUI.inserisciInput('username', 'Username', 'text', true, classe=>'myInputLoginErr');
            else
                modGUI.inserisciInput('username', 'Username', 'text', true, classe=>'myInputLogin');
            end if;
          modGUI.chiudiDiv;
          modGUI.apriDiv(classe=>'myDivInputLogin');
            if(id_Sessione=-1) then
                modGUI.inserisciInputPassword(classe=>'myInputLoginErr');
            else
                modGUI.inserisciInputPassword(classe=>'myInputLogin');
            end if;
          modGUI.chiudiDiv;
          modGUI.inserisciBottoneForm('Entra', 'myButtonLogin');
        modGUI.chiudiForm;
      modGUI.chiudiDiv;
      modGUI.apriDiv(classe=>'myFooterLogin');
          modGUI.apriParagrafo();
              modGUI.inserisciTesto('Designed by Gruppo Interfacce - Seconda Squadra');
          modGUI.chiudiParagrafo;
      modGUI.chiudiDiv;
    end creaLogin;

  procedure apriIntestazione(tipo int, classe varchar2 default 'defHeader') is
    begin
      htp.print('<h' || tipo || ' class="' || classe || '">');
    end apriIntestazione;

  procedure chiudiIntestazione(tipo int) is
    begin
      htp.print('</h' || tipo || '>');
    end chiudiIntestazione;

  procedure apriParagrafo(classe varchar2 default 'defParag', ident varchar2 default 'None') is
    begin
        htp.print('<p class="' || classe || '" id="' || ident || '">');
    end apriParagrafo;

  procedure chiudiParagrafo is
    begin
      htp.print('</p>');
    end chiudiParagrafo;

  procedure aCapo is
    begin
      htp.br;
    end aCapo;

  procedure apriDiv(centrato boolean default false, classe varchar2 default 'defDiv') is
    begin
      if(centrato) then
        htp.print('<div class="defCenteredDiv">');
      else
        htp.print('<div class="' || classe || '">');
      end if;
    end apriDiv;

  procedure chiudiDiv is
    begin
      htp.print('</div>');
    end chiudiDiv;

  procedure inserisciTesto(testo varchar2 default 'Testo') is
    begin
      htp.print(testo);
    end inserisciTesto;

  procedure chiudiPagina is
    begin
        htp.bodyClose;
      htp.htmlClose;
    end chiudiPagina;

  procedure inserisciBottone(id_Sessione varchar2, nome varchar2, ruolo varchar2, testo varchar2 default 'Bottone', nomeProc varchar2, parametri varchar2 default '', classe varchar2 default 'defFormButton') is
    begin
      htp.prn('<a class="' || classe || '" style="text-decoration: none; color:black; width:40%; margin: 3px;" href="' || Costanti.radice || nomeProc || '?id_Sessione=' || id_Sessione || '&nome=' || nome || '&ruolo=' || ruolo || parametri || '">' || testo || '</a>');
    end inserisciBottone;

  procedure inserisciBottoneReset(testo varchar2 default 'RESET', classe varchar2 default 'defResetButton') is
    begin
      htp.print('<button type="reset" class="' || classe || '">');
        htp.print(testo);
      htp.print('</button>');
    end inserisciBottoneReset;

  procedure apriForm(azione varchar2, nome varchar2 default 'myForm', classe varchar2 default 'defForm') is
    begin
      htp.print('<form name="'|| nome || '" action="'|| Costanti.radice || azione || '" method="GET" class="' || classe || '">');
      modGUI.aCapo;
    end apriForm;

  procedure chiudiForm is
    begin
        modGUI.aCapo;
        modGUI.aCapo;
      htp.print('</form>');
    end chiudiForm;

    procedure Collegamento(testo varchar2, indirizzo varchar2) is
    begin
      htp.prn('<a style="text-decoration: none;" href="' || Costanti.radice || indirizzo || '">' || testo || '</a>');

    end Collegamento;

    procedure inserisciCestino(nomeProc varchar2,id_Sessione varchar2, nome varchar2, ruolo varchar2, idRiga varchar2, parametri varchar2 default '') is
    begin
      htp.prn('<a class="cestino" href="'||Costanti.radice || nomeProc || '?id_Sessione=' || id_Sessione || '&nome=' || nome ||'&ruolo=' || ruolo || '&idRiga=' || idRiga || parametri || '"><ion-icon name="trash"></ion-icon></a>');

    end inserisciCestino;

    procedure inserisciPenna(nomeProc varchar2, id_Sessione varchar2, nome varchar2, ruolo varchar2, idRiga varchar2, parametri varchar2 default '') is
    begin
      htp.prn('<a class="cestino" href="'||Costanti.radice || nomeProc || '?id_Sessione=' || id_Sessione || '&nome=' || nome ||'&ruolo=' || ruolo || '&idRiga=' || idRiga || parametri ||'"><ion-icon name="create"></ion-icon></a>');

    end inserisciPenna;

    procedure inserisciLente(nomeProc varchar2, id_Sessione varchar2, nome varchar2, ruolo varchar2, idRiga varchar2, parametri varchar2 default '') is
    begin
      htp.prn('<a class="cestino" href="'||Costanti.radice || nomeProc || '?id_Sessione=' || id_Sessione || '&nome=' || nome ||'&ruolo=' || ruolo || '&idRiga=' || idRiga || parametri || '"><ion-icon name="search"></ion-icon></a>');

    end inserisciLente;


  procedure areaDiTesto(nome varchar2, etichetta varchar2 default 'Area di testo', valore varchar2 default '', classe varchar2 default 'defTextArea') is
    begin
      htp.print('<textarea class="' || classe || '" rows="3" name ="' || nome || '" placeholder="' || etichetta || '">' || valore || '</textarea>');
    end areaDiTesto;

  procedure inserisciBottoneForm(testo varchar2 default 'Submit', classe varchar2 default 'defFormButton') is
    begin
      htp.print('<button type="submit" class="' || classe || '">' || testo || '</button>');
    end inserisciBottoneForm;

  procedure inserisciCheckBox(etichetta varchar2, nome varchar2, valore varchar2, selezionato boolean default false) is
    begin
      modGUI.apriDiv(classe=>'mb');
        htp.prn('<label class="checkbox_container">'|| etichetta);
        htp.print('<input type="checkbox" name="' || nome || '" value="' || valore || '" ' );
        if(selezionato) then
            htp.print('checked');
        end if;
        htp.print('><span class="checkbox_checkmark"></span></label>');
      modGUI.chiudiDiv;
      modGUI.aCapo;
    end inserisciCheckBox;

  procedure inserisciRadioButton(etichetta varchar2, nome varchar2, valore varchar2, selezionato boolean default false) is
    begin
      modGUI.apriDiv(classe=>'mb');
        htp.prn('<label class="radio_container">'|| etichetta);
        htp.print('<input type="radio" name=' || nome || ' value=' || valore );
        if(selezionato) then
            htp.print('checked');
        end if;
        htp.print('><span class="radio_checkmark"></span></label>');
      modGUI.chiudiDiv;
      modGUI.aCapo;
    end inserisciRadioButton;

  procedure apriSelect(nome varchar2, etichetta varchar2, richiesto boolean default false, classe varchar2 default 'defSelect') is
    begin
      modGUI.inserisciTesto(etichetta);
      modGUI.aCapo;
      if(richiesto) then
        htp.print('<select class="' || classe || '" name="' || nome || '" required>');
      else
        htp.print('<select class="' || classe || '" name="' || nome || '">');
      end if;
    end apriSelect;

  procedure chiudiSelect is
    begin
      htp.print('</select>');
      modGUI.aCapo;
      modGUI.aCapo;
    end chiudiSelect;

  procedure inserisciOpzioneSelect(valore varchar2, etichetta varchar2, selezionato boolean default false) is
    begin
      if(selezionato) then
        htp.print('<option value="' || valore || '" selected');
      else
        htp.print('<option value="' || valore || '"');
      end if;
      htp.print('>' || etichetta || '</option>');
    end inserisciOpzioneSelect;

    procedure apriTabella(classe varchar2 default 'defTable') is
      begin
        htp.print('<table class="' || classe || '">');
      end apriTabella;

    procedure chiudiTabella is
      begin
        htp.print('</table>');
      end chiudiTabella;

    procedure apriRigaTabella(classe varchar2 default 'defRowTable') is
      begin
        htp.print('<tr class="' || classe || '">');
      end apriRigaTabella;

    procedure chiudiRigaTabella is
      begin
        htp.print('</tr>');
      end chiudiRigaTabella;

    procedure apriElementoTabella(classe varchar2 default 'defElementoTabella') is
      begin
        htp.print('<td class="' || classe || '">');
      end apriElementoTabella;

    procedure chiudiElementoTabella is
      begin
        htp.print('</td>');
      end chiudiElementoTabella;

    procedure ElementoTabella(testo varchar2) is
      begin
        htp.prn(testo);
      end elementoTabella;

    procedure intestazioneTabella(testo varchar2, classe varchar2 default 'defHeaderTable') is
      begin
        htp.print('<th class="' || classe || '">' || testo || '</th>');
      end intestazioneTabella;

    procedure inserisciInputHidden(nome varchar2, valore varchar2) is
    begin
        htp.print('<input type=hidden name="' || nome || '" value="' || valore || '"/>');
    end inserisciInputHidden;

    procedure inserisciInput(nome varchar2, etichetta varchar2 default 'Text', tipo varchar2 default 'text', richiesto boolean default false, valore varchar2 default '', classe varchar2 default 'defInput') is
    begin
      if(tipo='date' OR tipo='datetime-local' OR tipo='time') then
        modGUI.inserisciTesto(etichetta);
      end if;
      if(richiesto) then
        htp.print('<input type="' || tipo || '" required class="' || classe || '" placeholder="' || etichetta || '" value="' || valore || '" name="' || nome || '"/>');
      else
        htp.print('<input type="' || tipo || '" class="' || classe || '" placeholder="' || etichetta || '" value="' || valore || '" name="' || nome || '"/>');
      end if;
      modGUI.aCapo;
    end inserisciInput;

  procedure inserisciInputPassword(classe varchar2 default 'defInput', nome varchar2 default 'pswd') is
    begin
      htp.print('<input type=password class="' || classe || '" placeholder="Password" name="' || nome || '" required/>');
    end inserisciInputPassword;

	procedure esitoOperazione (tipoMessaggio varchar2, descrizioneMessaggio varchar2) is
      begin
        modGUI.aCapo();
        if(tipoMessaggio = 'KO') then
          modGUI.apriDiv(classe=>'displayKO');
          modGUI.inserisciTesto('Operazione fallita!');
        else
          modGUI.apriDiv(classe=>'displayOK');
          modGUI.inserisciTesto('Operazione avvenuta con successo!');
        end if;
        modGUI.aCapo();
        modGUI.inserisciTesto(''|| descrizioneMessaggio ||'');
        modGUI.chiudiDiv();
    end esitoOperazione;

    procedure creaHome(id_Sessione int, nome varchar2, ruolo varchar2) is
    genere Persone.Sesso%TYPE;
    begin
        modGUI.apriPagina('House Of Cars', id_Sessione, nome, ruolo);
        htp.print('<script>
            var i = 0;
            var txt = "Inizia a parcheggiare presso HoC !";
            var speed = 50;

            function typeWriter() {
                if (i < txt.length) {
                    document.getElementById("demo").innerHTML += txt.charAt(i);
                    i++;
                    setTimeout(typeWriter, speed);
                }
            }
        </script>');

        htp.print('<script>
            window.onload=typeWriter;
        </script>');
        modGUI.apriDiv(classe=>'gallery');
        modGUI.apriDiv(classe=>'gallery-text');
        modGUI.apriIntestazione('3');

        select persone.sesso
        into genere
        from persone, sessioni
        where sessioni.idsessione = id_Sessione and
              persone.idPersona = sessioni.idPersona;
        if(genere = 'F') then
            modGUI.inserisciTesto('Benvenuta '|| nome);
        else
            modGUI.inserisciTesto('Benvenuto '|| nome);
        end if;

        htp.print('<p id="demo"></p>');
        modGUI.chiudiIntestazione(3);
        modgui.chiudidiv;
        modgui.chiudidiv;

        modGUI.apriDiv(classe=>'bodyp');
        modGUI.apriDiv(classe=>'container');


        modGUI.apriDiv(classe=>'box');
            htp.print('<p class="txtbox">');
                modgui.inseriscitesto('PASSO 1');
                modgui.aCapo;
            htp.print('</p>');
            htp.print('<p class="txtbox2">');
                modgui.inseriscitesto('Acquista il tuo biglietto comodamente da casa');
            htp.print('</p>');
        modGUI.chiudiDiv;


        modGUI.apriDiv(classe=>'box');
            htp.print('<p class="txtbox">');
                modgui.inseriscitesto('PASSO 2');
                modgui.aCapo;
            htp.print('</p>');
            htp.print('<p class="txtbox2">');
                modgui.inseriscitesto('parcheggia nella area di HOFC');
            htp.print('</p>');
        modGUI.chiudiDiv;

        modGUI.apriDiv(classe=>'box');
            htp.print('<p class="txtbox">');
                modgui.inseriscitesto('PASSO 3');
                modgui.aCapo;
            htp.print('</p>');
            htp.print('<p class="txtbox2">');
                modgui.inseriscitesto('Ritira il veicolo a parcheggio terminato');
            htp.print('</p>');
        modGUI.chiudiDiv;

        modGUI.chiudiDiv;
        modGUI.chiudiDiv;
        modGUI.chiudiPagina;
    end creaHome;

    function string2date(data_da_convertire varchar2) return date is
    begin
        return to_date(data_da_convertire,'dd-Mon-yy');
    end string2date;
end modGUI;
