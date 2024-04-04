clear all
set mem 500m
set more off
cd "H:\ECStata"
cap log close
log using "Export/class2.txt", text replace

// do file for class 2 

insheet using "Data\additional.csv", clear

save "Data\additional.dta", replace

lab var net "Establishment has a network"
lab var totserver "total servers using site file info"

sum net

graph twoway histogram totserver if year == 2003 | year == 2004
graph twoway histogram totserver if year == 2003 & company_code < 500

use "Data/replicate", clear
merge 1:1 company_code year using "Data/additional.dta"

drop _merge

duplicates report company_code

rename peeps m_peeps

// order

generate newvariable = 1
replace newvariable = ln(m_peeps)
replace newvariable = newvariable/100
egen weirdstuff = fill(1 1 2 2 3 3)
li weirdstuff in 1/20

gen obsnum = _n

drop weirdstuff newvariable

gen tot_hrs = hours_t * employees_a

gen union_d = 1 if union > 0 & union < .
replace union_d = 0 if union == 0
