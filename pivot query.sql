use [June-25]

select * from Data_A

select * from Dataset

	select age,count ([employee number]) as countnumber from Data_A
	Where age > 30
	group by age
	----pivot query--------------
	select * from  (select age,CitizenDesc,[Gender] from Data_A Where age > 30) as sourcetable 
	pivot(count(age) for [Gender] in ([Male],[Female])
	) as pvt
	----unpivot query--------------
	
	select * from  (select age,CitizenDesc,[Gender] from Data_A Where age > 30) as sourcetable 
	pivot(count(age) for [Gender] in ([Male],[Female])
	) as pvt
	unpivot(age for [Gender] in ([Male],[Female])
	) as unpvt
