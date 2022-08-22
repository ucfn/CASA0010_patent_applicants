insheet using /Users/yyj/Desktop/SCUA/0010/stata/inventor_all_log_stata.csv
save /Users/yyj/Desktop/SCUA/0010/stata/inventor_all_log_stata.dta

* two-ways fixed effects
xtset city year

* model 1
*ols
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log unistu_log studentteacher_log docs_log green_log so2_log, cluster(city)

*city fixed
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log unistu_log studentteacher_log docs_log green_log so2_log i.city, cluster(city)

*time fixed
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log unistu_log studentteacher_log docs_log green_log so2_log i.year, cluster(city)

*both fixed
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log unistu_log studentteacher_log docs_log green_log so2_log i.year i.city, cluster(city)


* model 2
*ols
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log college_log studentteacher_log docs_log green_log so2_log, cluster(city)

*city fixed
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log college_log studentteacher_log docs_log green_log so2_log i.city, cluster(city)

*time fixed
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log college_log studentteacher_log docs_log green_log so2_log i.year, cluster(city)

*both fixed
reg inventor_log fdi_log scicost_log scipop_log wage_log unemp_log college_log studentteacher_log docs_log green_log so2_log i.year i.city, cluster(city)


* model 3
*both fixed
reg inventor_log fdi_log scicost_log scipop_log div_log unemp_log unistu_log docs_log green_log so2_log i.year i.city, cluster(city)


* model 4
*both fixed
reg inventor_log fdi_log scicost_log scipop_log div_log unemp_log unistu_log docs_log green_log so2_log fdidiv i.year i.city, cluster(city)


* model 5
*both fixed
reg inventor_log fdi_log scicost_log scipop_log div_log unemp_log unistu_log docs_log green_log so2_log scicostdiv i.year i.city, cluster(city)


* model 6
*both fixed
reg inventor_log fdi_log scicost_log scipop_log div_log unemp_log unistu_log docs_log green_log so2_log scipopdiv i.year i.city, cluster(city)









