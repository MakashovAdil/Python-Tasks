use autosdb;
-- 1. Все поля
select * from autos;

-- 2. Определенные поля (любые поля на выбор студента)
select make, model, series from autos;

-- 3. Поля "make", "model", "cylinder_layout", "boost_type" и переименовать их 
-- в "марка", "модель", "положениецилиндров" и "наличие турбины" соответственно
select make as "марка", model as "модель", cylinder_layout as "положение цилиндров", 
boost_type as "наличие турбины" from autos;

-- 4. Только те автомобили, у которых V-образное расположение цилиндров
select * from autos where cylinder_layout = "V-type";

-- 5. Автомобили, выпускавшиеся после 1999 года включительно
select * from autos where year_from > 1999;

-- 6. Автомобили, выпускавшиеся после 2001 года включительно и 
-- до 2009 года включительно. Показать 2 способа: через два условия, 
-- соединенных оператором AND и через BETWEEN
select * from autos where year_from >= 2001 and year_to <= 2009;
select * from autos where year_from between 2001 AND 2009;-- не понимаю почему выводит авто после 2009 года

-- 7. Автомобили не седаны и не кроссоверы. Показать 2 способа: 
-- через два условия, соединенных оператором AND и через NOT IN
select * from autos where series != "Sedan" and series != "Crossover";
select * from autos where NOT series in ("Sedan", "Crossover");

-- 8. Показать марку, модель, тип кузова, ведущие колёса и коробку передач 
-- автомобилей, выпущенных после 2014 года и не имеющих турбины
select make, model, drive_wheels, trim, transmission from autos
where year_from > 2014 and boost_type = null;

-- 9. Автомобили, у которых в названии производителя или в названии модели 
-- присутствует английская буква T (независимо от регистра)
select * from autos where make like '%t%' or model like '%t%';

-- 10. Показать 20 полноприводных автомобилей, отсортированных по марке. 
-- Выбрать марку, модель, год выпуска, тип кузова, тип трансмиссии
-- В таблице только 9 полноприводных авто, по крайней мере в моей
select make, model, year_from, trim, transmission from autos
where drive_wheels = 'Four wheel drive (4WD)'or drive_wheels = 'All wheel drive (AWD)'
order by make;

