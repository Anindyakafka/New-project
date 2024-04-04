cd "H:/ECStata"

use "data/replicate", clear

rename peeps m_peeps
rename targets m_targets
ren operations m_operations
ren monitoring m_monitoring

order *, alpha

gen total_hrs = employees_a * hours_t

list total_hrs employees_a hours_t in 1/10

drop total_hrs

preserve
//drop if cty == "uk"
keep if cty == "uk"
//sum
restore

gen union_d = 1 if union > 0 
replace union_d = 0 if union == 0
replace union_d = . if union >= .

gen union_d1 = (union > 0)
gen union_d2 = (union > 0) if union < .
gen union_d3 = (union > 0 & union < .)

// 1st union missing = 1
// 2nd union missing = missing
// 3rd union missing = 0
sum union*
compare union_d union

gen m_total = m_peeps + m_targets + m_operations + m_monitoring
sum m_total management
d management
replace m_total = m_total / 4
sum m_total
return list
replace m_total = m_total / r(sd)
sum m_total management
//collapse (mean) du_usa_mu (sd) hours_t, by(cty year)
merge 1:1 company_code year using "data/additional.dta"
preserve
collapse (mean) ly, by(totserver)
graph twoway scatter ly totserver
restore
egen mean_ly = mean(ly), by(totserver)
//bysort totserver: egen mean_ly = mean(ly)
graph twoway (scatter ly totserver) ///
			(scatter mean_ly totserver)
encode analyst, generate(analyst_byte)
compress
drop test
// running sum:
gen test1 = sum(totserver)
// total sum:
egen test2 = sum(totserver)
// but better syntax:
egen test3 = total(totserver)
li totserver test* in 1/20
compare test2 test3

tabulate cty, gen(cty_d)
