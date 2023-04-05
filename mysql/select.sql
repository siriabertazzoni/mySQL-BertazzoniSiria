-- select p.nome, f.nome
-- select *
-- from prodotti p
-- join fioristi_prodotti fp on p.id = fp.prodotto_id
-- join fioristi f on fp.fioristi_id = f.id;

select p.nome, f.nome
from fioristi f
left join fioristi_prodotti fp on f.id = fp.fioristi_id
left join prodotti p on fp.prodotto_id = p.id;