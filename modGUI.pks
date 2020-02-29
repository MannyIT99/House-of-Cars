create or replace package modGUI as
  procedure apriPagina(titolo varchar2 default 'Senza titolo', id_Sessione int default 0, nome varchar2 default '', ruolo varchar2 default '');
  procedure apriBody(id_Sessione int, nome varchar2, ruolo varchar2);

 /**MENU*/
  procedure creaMenuPrincipale(id_Sessione int, nome varchar2, ruolo varchar2 default 'C');
  procedure creaMenuPrincipaleAMM(id_Sessione int, nome varchar2, ruolo varchar2 default 'A');
  procedure creaMenuPrincipaleRES(id_Sessione int, nome varchar2, ruolo varchar2 default 'R');
  procedure creaMenuPrincipaleSUSER(id_Sessione int, nome varchar2, ruolo varchar2 default 'S');
  procedure creaMenuPrincipaleOPE(id_Sessione int, nome varchar2, ruolo varchar2 default 'O');
  /*****/


  procedure creaLogin(id_Sessione int default 0);
  procedure apriIntestazione(tipo int, classe varchar2 default 'defHeader');
  procedure chiudiIntestazione(tipo int);
  procedure apriParagrafo(classe varchar2 default 'defParag', ident varchar2 default 'None');
  procedure chiudiParagrafo;
  procedure aCapo;
  procedure inserisciInputHidden(nome varchar2, valore varchar2);
  procedure inserisciInput(nome varchar2, etichetta varchar2 default 'Text', tipo varchar2 default 'text', richiesto boolean default false, valore varchar2 default '', classe varchar2 default 'defInput');
  procedure inserisciInputPassword(classe varchar2 default 'defInput', nome varchar2 default 'pswd');
  procedure apriDiv(centrato boolean default false, classe varchar2 default 'defDiv');
  procedure chiudiDiv;
  procedure inserisciTesto(testo varchar2 default 'Testo');
  procedure chiudiPagina;
  procedure inserisciBottone(id_Sessione varchar2, nome varchar2, ruolo varchar2, testo varchar2 default 'Bottone', nomeProc varchar2, parametri varchar2 default '', classe varchar2 default 'defFormButton');
  procedure inserisciBottoneReset(testo varchar2 default 'RESET', classe varchar2 default 'defResetButton');
  procedure apriForm(azione varchar2, nome varchar2 default 'myForm', classe varchar2 default 'defForm');
  procedure chiudiForm;
  procedure Collegamento(testo varchar2,indirizzo varchar2);
  procedure inserisciCestino(nomeProc varchar2, id_Sessione varchar2, nome varchar2, ruolo varchar2, idRiga varchar2, parametri varchar2 default '');
  procedure inserisciPenna(nomeProc varchar2, id_Sessione varchar2, nome varchar2, ruolo varchar2, idRiga varchar2, parametri varchar2 default '');
  procedure inserisciLente(nomeProc varchar2, id_Sessione varchar2, nome varchar2, ruolo varchar2, idRiga varchar2, parametri varchar2 default '');
  procedure areaDiTesto(nome varchar2, etichetta varchar2 default 'Area di testo', valore varchar2 default '', classe varchar2 default 'defTextArea');
  procedure inserisciBottoneForm(testo varchar2 default 'Submit', classe varchar2 default 'defFormButton');
  procedure inserisciCheckBox(etichetta varchar2, nome varchar2, valore varchar2, selezionato boolean default false);
  procedure inserisciRadioButton(etichetta varchar2, nome varchar2, valore varchar2, selezionato boolean default false);
  procedure apriSelect(nome varchar2, etichetta varchar2, richiesto boolean default false, classe varchar2 default 'defSelect');
  procedure chiudiSelect;
  procedure inserisciOpzioneSelect(valore varchar2, etichetta varchar2, selezionato boolean default false);
  procedure apriTabella(classe varchar2 default 'defTable');
  procedure chiudiTabella;
  procedure apriRigaTabella(classe varchar2 default 'defRowTable');
  procedure chiudiRigaTabella;
  procedure apriElementoTabella(classe varchar2 default 'defElementoTabella');
  procedure chiudiElementoTabella;
  procedure elementoTabella(testo varchar2);
  procedure intestazioneTabella(testo varchar2, classe varchar2 default 'defHeaderTable');
  procedure esitoOperazione(tipoMessaggio varchar2, descrizioneMessaggio varchar2);
  procedure creaHome(id_Sessione int, nome varchar2, ruolo varchar2);
end modGUI;
