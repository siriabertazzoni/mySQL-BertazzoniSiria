-- create database fiorista;

create TABLE prodotti (
    id bigint auto_increment primary key,
    nome varchar(100),
    descrizione varchar(1000),
    prezzo int check (prezzo > 0)
);

create table immagini (
    id bigint auto_increment primary key,
    tag varchar(100),
    url varchar(300) default 'http://aulab.it/images/aulab_logo.png',
    dimensione int default 100 check (dimensione > 0),
    prodotto_id bigint references prodotti(id)
);

create table fioristi(
    id bigint auto_increment primary key,
    nome varchar(100)
);

create table fioristi_prodotti(
    fioristi_id bigint references fioristi(id),
    prodotto_id bigint references prodotti(id)
);