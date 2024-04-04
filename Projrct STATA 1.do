////////////////////////////////
clear all
set mem 500m

cd "H:/ECStata"
set more off

capture log close
log using "Export/mylog.txt", text replace

/////////////////////////////////

use "data/replicate", clear

describe

// mean peeps
// ignore me
summarize peeps // ignore me

/*

ignore me

*/

tabulate cty

tabulate year

tabulate cty year

correlate peeps management

scatter peeps target

graph twoway (scatter peeps target) (scatter monitoring target)

tab cty du_oth_mu, sum(employees_a)

bysort cty du_oth_mu du_usa_mu: sum employees_a

sum employees_a if cty == "uk" & du_oth_mu == 0 & du_usa_mu == 0
sum employees_a if cty == "uk" | cty == "fr"

list in 1/10

bysort cty: correlate peeps target monitoring operations

graph hbar peeps if du_usa_mu == 1, over(cty)
