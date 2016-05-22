///Score Calculations

//Max Score is 99K or 99999
//Time Taken is also worth 99K
//Death Amount is also worth 99K in penalties
//Take in account that the Time Taken should be marked for the highest rank (S Rank) and completely unreachable
//While the inverse is the same for deaths, and should be marked for the lowest rank (F Rank)

//X Legend:
//(0) Name, Act, Difficulty
//(1) Benchmark Time (measured in seconds)
//(2) Benchmark Deaths

//Y Legend:
//Act Number

//Ranks
//M is Master, usually for the hardest difficult setting
//S Rank, A Rank, B Rank, C Rank, D Rank, F Rank

//global.grade_benchmarks = ds_grid_create(3, global.acts_total);

global.grade_benchmarks = ds_grid_create(1000, 1000);


//Add Benchmarks here

ds_grid_add(global.grade_benchmarks, 0, 1, "Test Room Act 1 NM");
ds_grid_add(global.grade_benchmarks, 1, 1, 45);
ds_grid_add(global.grade_benchmarks, 2, 1, 10);
