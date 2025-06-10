SELECT * FROM dbms2.`large cars dataset`;

##1. List all distinct car brands in the dataset.
select distinct Brand from dbms2.`large cars dataset`;

#2. Find all cars with an MSRP above \$40,000.
select * from dbms2.`large cars dataset` 
where `MSRP($)` > 35000;

#3. Show the top 10 most expensive cars by MSRP.
select Brand, Model, VehicleClass, `MSRP($)`
from dbms2.`large cars dataset`
order by `MSRP($)` desc
limit 10;

#4. Retrieve all sedans manufactured in the Asia region.
select * from dbms2.`large cars dataset`
where VehicleClass = 'Sedan' and Region = 'Asia';


#5. What is the average MSRP of cars in the dataset?
select avg(`MSRP($)`) as average_msrp from dbms2.`large cars dataset`;

#6. List cars with more than 6 cylinders and horsepower greater than 300.
select * from dbms2.`large cars dataset` 
where Cylinders > 6 and HorsePower > 300;

#7. Show all cars with a city MPG below 20 and highway MPG above 25.
select * from dbms2.`large cars dataset` 
where MPG_City < 20 and MPG_Highway > 25;

#8. Find all models that use rear-wheel drive.
select * from dbms2.`large cars dataset` 
where DriveTrain = 'Rear';

#9. Display all cars whose weight is between 3,000 and 4,000 pounds.
select * from dbms2.`large cars dataset` 
where Weight between 3000 and 4000;

#10. Show all models with an engine size greater than 3.0 liters and a dealer cost under \$30,000.
select * from dbms2.`large cars dataset` 
where enginesize > 3 and `DealerCost($)` < 30000;

#11. What is the average horsepower for each car brand?
select Brand, Avg(HorsePower) as Average_Horsepower from dbms2.`large cars dataset` 
group by Brand;

#12. How many models are available for each vehicle class?
select VehicleClass, Count(Model) as Number_of_models from dbms2.`large cars dataset` 
group by VehicleClass;

#13. What is the total number of cars from each region?
select Region, count(*) as No_of_vehicles from dbms2.`large cars dataset` 
group by Region;

#14. What is the minimum and maximum MSRP for each drivetrain?
select DriveTrain, Min(`MSRP($)`) as Min_Msrp, Max(`MSRP($)`) as Max_Msrp
from dbms2.`large cars dataset` 
group by DriveTrain;


#15. Which brand has the highest average dealer cost?
select Brand, Avg(`DealerCost($)`) as Average_Dealer_cost 
from dbms2.`large cars dataset` 
group by Brand
order by Average_Dealer_cost desc
limit 1 ;

#16. Rank the top 5 cars with the best highway MPG.
select * from dbms2.`large cars dataset`
order by MPG_Highway desc
limit 5;

#17. List the top 3 heaviest cars per brand.
select Brand, avg(Weight) as Average_weight from dbms2.`large cars dataset`
group By Brand 
order by Average_weight desc
limit 3;

#18. Show the top 5 most fuel-efficient cars (based on combined city and highway MPG).
select *  from dbms2.`large cars dataset`
order by MPG_City desc, MPG_Highway desc
limit 5;

#19. Rank vehicle classes by their average weight.
select VehicleClass, Avg(Weight) as Average_Weight from dbms2.`large cars dataset`
group by VehicleClass
order by Average_weight desc;

#20. Which models have the best power-to-weight ratio?
select Model, avg(HorsePower/Weight) as Power_to_weight_ratio
from dbms2.`large cars dataset`
group by Model
order by Power_to_weight_ratio desc;

#21. Which drivetrain is most common among high-end vehicles (MSRP > \$40,000)?

with tempt as (
select * from dbms2.`large cars dataset`
where `MSRP($)` > 40000)
select DriveTrain, count(*) as count 
from tempt
group by DriveTrain
order by count desc
limit 1;

#22. Are Asian region cars more fuel-efficient on average than others?
select Region, avg((0.55*MPG_City) +(0.45*MPG_Highway)) as Average_fuel_efficiency from dbms2.`large cars dataset`
group by Region;
#"Yes they're more fuel efficieny" 

#23. Is there a correlation between engine size and MSRP?
select 
    (count(*) * sum(enginesize * `msrp($)`) - sum(enginesize) * sum(`msrp($)`)) /
    (sqrt(count(*) * sum(enginesize * enginesize) - sum(enginesize) * sum(enginesize)) *
     sqrt(count(*) * sum(`msrp($)` * `msrp($)`) - sum(`msrp($)`) * sum(`msrp($)`)))
as correlation 
from dbms2.`large cars dataset`;

#24. Which combination of vehicle class and region yields the highest average horsepower?
select VehicleClass, Region, Avg(HorsePower) as Average_horse_power
from dbms2.`large cars dataset`
group by VehicleClass, Region
order by Average_horse_power desc ;

#25. Find models where the difference between MSRP and dealer cost is the highest.
Select Model, abs(`MSRP($)` - `DealerCost($)`) as Absolute_difference
from dbms2.`large cars dataset`
group by Model, `MSRP($)`, `DealerCost($)`
order by Absolute_difference desc
limit 10;