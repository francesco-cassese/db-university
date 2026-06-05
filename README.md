# Esercizio Database Università (`db-university`)

## 🏗️ Fase 1: Modellazione Database (Giorno 1)
In questa fase ho definito lo schema del database per gestire le attività di un'università, sviluppato seguendo le specifiche richieste.

## Obiettivi raggiunti 

Ho modellato il database per soddisfare i seguenti requisiti:

- [x] Gestione dei **Dipartimenti**.
    
- [x] Collegamento tra **Dipartimenti e Corsi di Laurea**.
    
- [x] Struttura dei **Corsi** all'interno dei Corsi di Laurea.
    
- [x] Relazione molti-a-molti tra **Corsi e Insegnanti**. (gestita tramite tabella **ponte**)
    
- [x] Gestione degli **appelli d'Esame** per ogni corso.
    
- [x] Associazione degli **Studenti** a un solo Corso di Laurea.
    
- [x] Iscrizione degli **Studenti a più appelli** d'esame. (gestita tramite tabella **ponte**)
    
- [x] Memorizzazione del **voto** (anche insufficiente) per ogni esame.
    

## Schema del Database
![schemaDatabase](./imgs/drawSQL-image-export.jpg)


### Note sulle scelte tecniche

- **Tabelle ponte:** Ho usato tabelle di supporto per collegare docenti/corsi e studenti/esami, mantenendo lo schema pulito e facile da leggere.
    
- **Voti:** I campi `grade` e `status` sono opzionali (`nullable`) per gestire correttamente l'iscrizione all'esame prima che venga dato il voto.
    
- **Integrità Dati:** Ho utilizzato vincoli `NOT NULL` per garantire la completezza delle informazioni e `UNIQUE` per evitare duplicati su email (studenti/docenti) e Codice Fiscale (studenti).

## 🔍 Fase 2: Query SQL (Giorno 2)

In questa sessione ho sviluppato le query per interrogare il database e gestire l'estrazione dei dati.

Le soluzioni sono organizzate nel file [soluzioni1.sql](soluzioni1.sql) e coprono:

- **Filtri temporali:** Estrazione dati basata su anni e date specifiche.
    
- **Logica condizionale:** Gestione di query complesse tramite operatori logici (`AND`, `OR`) e raggruppamento con parentesi.
    
- **Ricerca e pulizia:** Utilizzo di `LIKE` per la ricerca testuale e gestione dei campi `NULL`.

## 🚀 Fase 3: Query SQL (Giorno 3)

In questa sessione ho sviluppato le query per interrogare il database per ottenere risposte più complesse, organizzando le informazioni in gruppi logici.

Le soluzioni sono organizzate nei file [soluzioni-join.sql](soluzioni-join.sql) e [soluzioni-groupby.sql](soluzioni-groupby.sql) e coprono:

- **Calcoli Statistici:** Utilizzo di funzioni per contare elementi (es. quanti studenti ci sono) o calcolare medie (es. il voto medio di un esame).
    
- **Raggruppamento:** Utilizzo di comandi per raggruppare i dati per categoria (es. dividere gli studenti per anno di corso).
    
- **Pulizia e Chiarezza:** Gestione delle impostazioni del database per garantire che i risultati siano precisi e utilizzo di nomi personalizzati (alias) per rendere i dati più leggibili.