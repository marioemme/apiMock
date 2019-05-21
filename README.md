# API Mock
Questa app espone un servzio web che permette di leggere, inserire, modificare ed eliminare i dati presenti nella tabella "API Mock Entry".

## Installazione e utilizzo
* pubblicare l'app su un'istanza di Business Central (o tenant)
* Per l'utilizzo invocare l'url http://{{server}}:{{apiPort}}/{{istance}}/api/mario/demos/beta/companies({{company}})/apiMockEntries
* * {{server}}: server dove risiede l'istanza di BC
* * {{apiPort}}: porta odata (tipicamente 7048)
* * {{istance}}: istanza BC (esempio: BC140)
* * {{company}}: Id della company di riferimenti. Invocare il servizio http://{{server}}:{{apiPort}}/{{istance}}/api/mario/demos/beta/companies per la lista completa.