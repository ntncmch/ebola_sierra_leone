# Comment on Whitty et al.

A modelling work presented in a recent Nature Comment [1] suggests that, without any intervention, the Ebola outbreak in Sierra Leone could peak early December, reaching a maximum of 1600 weekly cases. We argue that this figure is misleading and call for better practice in publishing modelling results.

The authors report an average reproduction number (R) between 1.2 and 1.5 up-to early-October. Assuming that R will remain of the same order due to a lack of drastic interventions to reduce community transmission, it can actually be shown that the epidemic will not peak before July 2015, reaching tens of thousand cases per week [2]. In face of such a nightmare scenario, the necessity to scale-up the international response as advocated by Whitty et al. appear even more critical.

Error in presenting model results can be difficult to detect even for expert readers. The only way to assess what a model is doing is by making it available to the community. Web based technologies made this feasible and have been used to efficiently build and share databases on the current Ebola outbreak [3]. We call for a similar effort to support published modelling results and provide our re-analysis of the data presented by Whitty et al in such an open format [2].

Mathematical modelling is critical to track the spread of Ebola in real time and forecast the effectiveness of different intervention strategies. However, as a proper decision tool they need to be open, transparent and reproducible.

## Ref 
[1]: The nature paper of [Whitty et al](http://www.nature.com/news/infectious-disease-tough-choices-to-reduce-ebola-transmission-1.16298)
[2]: our github repository, not sure they will like this.
[3]: humanitarian data share [website](https://data.hdx.rwlabs.org/dataset/rowca-ebola-cases)

# Sandox

In the current Ebola outbreak, mathematical models have been criticized for not being accurate enough (ref nature). 

until the epidemic burn itself due to depletion of the susceptible pool, 

With more than 300 cases reported every week for the past two months, the Ebola outbreak in Sierra Leone is far from being under control. In their Comment, Whitty et al. explain why the construction of community isolation centres represent the best chance to reduce the reproduction number (R) below 1 and turn down the epidemic curve. 

The authors illustrate the impact of this intervention using a mathematical model. In a first step, a transmission model is fitted to the incidence data counts to estimate key parameters like R (between 1.2 and 1.5 for Sierra Leone for the time period considered). In a second step, the model is projected forward and the intervention is 

parameters to account for the impact of new interventions. 

# Other stuff (we don't have much space to put all in the comment)

* Confidence interval: reflect uncertainty in parameter estimates.
* The term _Not intervention_ is misleading. There has been a lot of effort to contain this outbreak since XX (ETUs in Kenema, Kailaihun). Although the epidemic curve suggests that these effort haven't been able to turn down the outbreak in SL yet, there are nontheless reflected in the data the model was fitted to. Accordingly, the model can only estimate an effective reproduction number (R) and any projection from that model with the same R, actually assume that the intervention with scale up to maintain R at the same level.
* We fitted our model to the WHO data for the same period (Not clear where the data come from (double-check article)) and obtained a R=1.3 (CI=XX). Assuming no improvement in the intervention, our model predict that the epidemic would continue long after December, and would peak between XX and XX with between XX and XX cases per week.
* These models assume constant R over time, this ignore the effect of potential intervention during the fit and in the forecast. Athough the situation in SL seems to be still increasing badly, the case of Liberia call for more flexible models.
* data sharing (cmrivers, humanitarian exchange) and now model sharing and openness

