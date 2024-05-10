
[Managementul-Sarcinilor-Angajaților]
Proiect Cloud Computeing SIMPRE ASE 2024 

Autor: Sergiu Andrei Costan
Aplicatie: Work Task App

Video:
Repo GitHub: 
Aplicatie live:

Cloud aplicatie:
Cloud baza de date:

==========================================

[Despre-Aplicație]

Aceasta este o aplicație web destinată gestionării sarcinilor pentru angajații unei firme. Aplicația oferă două interfețe de logare: una pentru administratori și una pentru angajați. Administratorii pot atribui sarcini angajaților, iar angajații pot actualiza stadiul realizării acestor sarcini. De asemenea, aplicația permite generarea de rapoarte pe anumite perioade de timp dorite despre sarcinile completate, facilitând astfel monitorizarea performanței angajaților. 

Aplicatia Web ruleaza live pe doua servicii de cloud diferite gratuite. Serverul Apache pe care ruleaza aplicatia este hostat pe cloud-ul oferit de 000webhost.com si baza de date MYSQL este gazduita pe cloud-ul infinityfree.com


[Limbajele-si-resursele-utilizate-in-realizarea-aplicatiei]

Limbajul principal de programare utilizat este PHP. Este folosit pentru logica de server și gestionarea datelor. 
Utilizarea HTML, CSS și JavaScript pentru front-end. 
Folosirea MYSQL pentru baza de date.
Utilizarea resurselor vizuale și a stilurilor de fonturi pentru îmbunătățirea aspectului aplicației.
Bootstrap folosit pentru a oferi stiluri consistente și responsive design pentru interfața web.
Font Awesome folosit pentru a adăuga icoane stilizate și scalabile în aplicație.
Bootstrap JavaScript utilizat împreună cu fișierul CSS Bootstrap pentru a adăuga funcționalități interactive elementelor UI, cum ar fi meniuri, butoane, componente etc.
jQuery folosit pentru manipularea DOM-ului, gestionarea evenimentelor și alte funcții utilitare în JavaScript, facilitând interactivitatea pe partea de client.

==========================================

[Instalare-și-Configurare]

Pentru a rula aplicația local, urmați pașii de mai jos:
1) Clonați repository-ul: (git clone [URL_REPOSITORY]).
2) Configurați serverul web și PHP conform indicațiilor din secțiunea anterioară pentru a putea utiliza aplicatia (wamp/xamp local server).
3) Importati baza de date din fisierul etmsdb.sql cu ajutorul phpmyadmin.

==========================================

[Structură-de-Directoare]

admin: Pagini și scripturi specifice pentru dashboard-ul administratorului.
employee: Pagini și scripturi specifice pentru dashboard-ul angajatului.
css, js, images, fonts: Resurse statice utilizate pentru interfața aplicației.
includes: Fișiere PHP reutilizabile și scripturi de configurare.
index.php: Punctul de intrare în aplicație.


[Utilizare]

Logare: Accesați pagina principală și alegeți interfața de logare corespunzătoare (administrator sau angajat).
Administratori: După autentificare, puteți crea și atribui noi sarcini angajaților.
Angajați: După autentificare, puteți vizualiza sarcinile atribuite și le puteți marca ca fiind completate.
Generarea Rapoartelor
Administratorii pot genera rapoarte pentru a analiza performanța angajaților pe baza sarcinilor completate într-o anumită perioadă de timp.