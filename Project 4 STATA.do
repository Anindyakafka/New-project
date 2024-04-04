cd "H:/ECStata"

use "data/replicate", clear

rename peeps m_peeps
rename targets m_targets
ren operations m_operations
ren monitoring m_monitoring

order *, alpha

merge 1:1 company_code year using "data/additional.dta"

regress ly lemp

ereturn list

display _b[lemp]
display _se[lemp]

regress ly lemp

test lemp = .05
test lemp = _cons
test lemp _cons

regress ly lmat lemp lcap
predict double res, residual
replace res = res^2

reg res c.lmat##c.lemp##c.lcap##c.lmat##c.lemp##c.lcap

bysort company_code (year): gen lcap_lag = lcap[_n-1]
xtset company_code year
regress ly lmat lemp lcap l.ly l2.ly

ivregress 2sls ly lmat (lemp lcap = wages_a l.lcap), cluster(company_code)

set matsize 2000
reg ly lmat lemp lcap i.company_code
reg ly lmat lemp lcap management 
reg ly lmat lemp lcap management i.company_code
reg ly lmat lemp lcap i.company_code management

reg ly lmat lemp lcap management [pw=surveywgt]


// weights
clear all
set obs 500
gen double x1 = rnormal()
gen double x2 = rnormal()
gen double y = x1 + x2 + rnormal()/2
gen weight = floor(1/uniform())
replace weight = 16 if weight > 100

reg y x1 x2 [w=weight]
reg y x1 x2 [aw=weight]
reg y x1 x2 [pw=weight]
