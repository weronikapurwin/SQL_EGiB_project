# OPIS ZADANIA

TWORZENIE SCHEMATU <br />
Korzystając z modelu pojęciowego bazy Ewidencji Gruntów i Budynków proszę wykonać schemat bazy w 
PostgreSQL zawierający klasy z grupy DzialkaKlasoUzytek oraz wszystkie klasy, do których referują, lub z których 
dziedziczą. Należy też utworzyć tabelę delta_konturklasyfikacyjny(id (serial) PK, 
czaszmiany(timestamp), delta(liczba)).
Należy zadbać o wszystkie elementy, które zapewnią integralność danych oraz możliwość efektywnego dostępu 
do danych (ograniczenia, indeksy itp.).
Należy zadbać o wszystkie cechy, które spowodują, że w powstałym schemacie będzie można przechowywać 
i wydajnie korzystać z danych przestrzennych (atrybuty przestrzenne o właściwych typach, indeksy 
przestrzenne)
