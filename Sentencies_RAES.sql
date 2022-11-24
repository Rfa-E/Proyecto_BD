use proyecto_raes;
-- SENTENCIES -------------------------------------------------------------------------------------------------------------------------------------------
-- Muestra el nombre, el pais y su posicion en el ranking de los Millonarios que tengan una fortuna igual a la mas pequeña.
select top, nombre, country from milionari m join pais p on p.idcountry=m.idcountry
where  TotalNetWorth <= all ( select avg(TotalNetWorth) from milionari);
-- Muestra las industrias en las que haya mas de 50 Millonarios.
select industry from industria i join milionari m on m.cod_indu=i.cod_indu
group by m.cod_indu having count(*)>=50;

