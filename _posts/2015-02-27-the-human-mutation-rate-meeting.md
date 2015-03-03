---
layout: post
title: "The human mutation rate meeting"
description: ""
category: Meetings
tags: [meetings,mutation]
---
{% include JB/setup %}

I just got back from the human mutation rate meeting in Leipzig ([THMR2015](http://www.eva.mpg.de/genetics/conferences/THMR2015)), and thought I would write down some of my thoughts. This is entirely my subjective opinion, any good ideas here come from the other meeting participants, and any mistakes are mine. When I say "mutation rate", I mean "average autosomal SNP mutation rate" and I write the mutation rate per-base per-generation as $$\mu$$ and the mutation rate per-base per-year as $$\nu$$. 

Outside the autosomes, the mitochondrial rate seems to be well understood and the Y chromosome rate to be quite well understood. The X chromosome seems to have rather a lot going on (that's for another post), but most people agreed that $$\alpha \approx 3$$. I don't think anyone even mentioned indel or structural variation rates, and my impression is that, really, no one has any idea about those. 

###The state of the mutation rate

Basically, the point of the meeting was to discuss the discrepancy between the human mutation rate calibrated using the fossil record and human-chimp divergence and that from pedigree studies, for example Kong et al., which are lower by a factor of about 2. I won't describe that here, but it's well reviewed by Scally & Durbin and Ségurel et al.,  Overall, I realised that this particular discrepancy wasn't as big an issue as I previously thought. In fact, the very high ($$\mu\gt 2\times10^{-8}$$, say) rates were never that convincing in the first place,  and split times based on "slower" rates are not particularly inconsistent with the fossil record  (at least within the African apes). However, there are at least two remaining issues: 

1. The two recombination-based methods presented agreed that $$\mu \approx 1.65\times10^{-8}$$. However, many pedigree and trio based studies seem to converge on $$\mu=1.2\times10^{-8}$$. Most people seemed to think that the pedigree studies are undercalling mutations, but there was no clear explanation or evidence for that. On the other hand, calibration using ancient DNA from the directly dated Ust'-Ishim sample presented by Qiaomei Fu suggested a lower rate of around $$\nu=0.4\times10^{-9}$$, consistent with the pedigree estimates. This leaves us with something like a 25% discrepancy which needs to be explained. 

2. The lower mutation rate leads to a date that's possibly too old for the orang-utan split, probably too old for the gibbon-ape split, and certainly too old for the old world monkey (OWM) split. But the more recent ape splits are fine. Therefore, a lower mutation rate only requires a slowdown on one lineage, sometime between the split of OWM and the split between ape and orang-utan, rather the parallel slowdowns on multiple lineages which were a rather uncomfortable requirement of the Scally & Durbin model. 



As well as these two issues, there were a number of additional questions that people seemed to agree would be important in the future:

3. Gene conversion might be important in two main ways. First, it might affect coalescent-based estimators, like those based on the recombination clock of the sequential Markovian coalescent. Everyone seemed to agree that gene conversion needed to be built into such models. Second, biased gene conversion might have a measurable effect on the rate, and provides at least one mechanism by which the long-term rate could conceivably be higher than the de novo rate.

4. Everyone seemed to agree that there was a paternal age effect, but there was a lot of discussion about its form and magnitude and particularly, to what extent it could be assumed to be clock-like. It's clear that a number of people are working hard on modelling this, and hopefully there will be some empirical validation in the near future. 

5. There was a lot of interest in whether different mutational signatures could be distinguished, and related to specific mutational or repair processes. Mike Stratton talked about some of the work that's been done in cancer on this question, and Kelley Harris presented her remarkable observation that the mutation CTT->CCT appears to be more common in Europeans than other populations. Getting a better understanding of the biochemistry first might be more productive than trying to solve the inverse problem. 



