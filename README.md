# Modelling the Ebola outbreak in Sierra-Leone

Modelling work presented in a recent Nature Comment by [Whitty et al.](http://www.nature.com/news/infectious-disease-tough-choices-to-reduce-ebola-transmission-1.16298) suggests that, without any intervention, the Ebola outbreak in Sierra Leone could peak early December, reaching a maximum of 1600 weekly cases.

Here, we show that this figure is misleading and provide a fully transparent and reproducible analysis of the same data-set.

All data, models, outputs and figures are provided in this repository (see for instance [here](SSM/forecast/no_improvement/figures) for the baseline model). 

Alternatively you can re-run our analysis using the instructions below.

A detailed step-by-step description of our analysis can be found [here](R/analysis.html).

# Run our analysis

At the core of our analysis is the [SSM](https://github.com/JDureau/ssm) (for State Space Models) library, which allows us to 

* implement a transmission model
* fit this model to time-series data and estimate key parameters
* forecast this fitted model by integrating the uncertainty of parameter estimates

To re-run our analysis:

1. Install [SSM](https://github.com/JDureau/ssm)
2. Clone or [download](https://github.com/ntncmch/ebola_sierra_leone/archive/master.zip) this repository 
```
git clone https://github.com/ntncmch/ebola_sierra_leone.git
```    
3. Compile the model
```
cd ebola_sierra_leone/SSM
ssm
```
4. Fit the data
```
cd bin
cat ../theta.json | ./simplex --iter 10000 --prior | ./pmcmc --iter 10000 --eps_switch 20 --switch 500 --cooling 0.99 | ./pmcmc --iter 100000 --eps_switch 20 --trace --acc --traj --n_traj 1000 -v
```
5. Forecast the fitted model
```
ssm-predict mcmc_0.json X_0.csv trace_0.csv 2014-09-28 | ./simul --traj --start 2014-09-28 --end 2016-08-01 --freq 7 --id 1
```

All outputs were processed using [R](http://cran.r-project.org).
