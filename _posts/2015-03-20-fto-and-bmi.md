---
layout: post
title: "FTO and BMI"
description: ""
category: Review
tags: [GWAS, Genes, FTO ]
---
{% include JB/setup %}

The association of markers in *FTO* ("Fat mass and obesity associated") with BMI and related phenotypes is one of the most secure GWAS results. The association seems solid, there's a mouse model, and a plausible functional story. Even the name sounds pretty convincing. On the other hand, there's lots of uncertainty about the function of *FTO*, and the details of the association. In fact, Smemo *et al* (2014) suggested that in fact *FTO* was not functionally involved at all. From the reaction of people in the community[^community], it seemed like many of them had been sceptical of *FTO* for a while. In general it seems like a good case study for difficulties of interpreting associations and translating GWAS results into biologically relevant information. I must confess I was a bit confused about the whole thing, so I thought I would try and organise my thoughts. 

###History of the name
The symbol FTO originally comes from the *Ft* locus in mouse. A large deletion at this locus leads to a variety of developmental phenotypes including fused toes, hence the symbol. The deletion actually involves six genes. The first of these genes to be cloned was given the name Fatso (*Fto*) not because of any bodyweight phenotype, but because the gene itself is relatively large (~250kb; Peters *et al.* 1999). The other five genes at the locus are *Ftl*, *Ftm* and the Iroqois[^IRX] B cluster *Irx3* (more about this later), *Irx4* and *Irx5*. 

Through a rather amazing coincidence, in the first generation of large GWAS, the human *FTO* locus showed up as the strongest signal of association for BMI, as well as type 2 diabetes (Frayling *et al* 2007, WTCCC 2007). Apparently the people involved realised that you probably shouldn't have an obesity gene called "Fatso" and renamed it to "Fat mass and obesity associated", which is currently the official name in both [human](http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=HGNC:24678) and [mouse](http://www.informatics.jax.org/marker/key/43476) (Fischer *et al.* 2008). 

###Mouse phenotypes

The original mouse *Ft* deletion is recessive lethal. Heterozygotes have the eponymous fused toe phenotype, as well as thyroid hyperplasy, left-right asymmetry and a number of other developmental phenotypes. Targeted deletion of *Fto* showed that *Fto-/-* mice show postnatal growth retardation and reduced body mass although there was no clear effect of *Fto-/+* genotype (Fisher *et al.* 2009).

###Association results

Many follow up studies have confirmed the association between SNPs in the first intron of *FTO* and BMI. In populations with European ancestry the effect seems to be to increase BMI by around 0.39kg/m^2. It explains about 0.34% of the variance in the trait, which is pretty good for a single locus. The effect seems to replicate in populations with Asian ancestry, but possibly not in those with African ancestry (see Loos and Yeo 2014 for a review of the association results). Overall the association seems to be about as robust as any I've seen. It seems that the association with BMI (Again, reviewed by Loos & Yeo 2014) works by increasing calorific intake, not by decreasing physical activity. It seems to be the case therefore, that the association operates by changing behaviour rather than, say, some metabolic pathway. Some support for this comes from the observation that in adult mice, *Fto* is largely brain expressed (Gerken *et al.* 2007). 

###Is it really *FTO*?

However, it turns out that obesity associated SNPs are not eQTLs for *FTO* expression in humans. Of course, this doesn't mean that they aren't doing something else to the protein but Smemo *et al.* (2014) make a convincing case that in fact, these SNPs are influencing BMI through *IRX3* and not *FTO*. Briefly: 

- Obesity associated SNPs are associated with *IRX3* expression in the human brain. BMI-increasing SNPs increase expression of *IRX3*.
- *Irx3* interacts physically with the *Fto* locus in mouse brains (using 4C).
-  *Irx3* KO mice have reduced adiposity and have less weight gain than wild type on a high fat diet. This seems much closer to the human phenotype than the *Fto* KO mice. As Smemo *et al.* observe, 20% of gene knockouts in mice lead to alterations in body size, mass or growth. 

###Summary

This seems like a pretty good case study for the difficulty of interpreting association results.

- The association looks  good and, unlike many GWAS hits, the most associated SNPs are actually inside a gene! However, it turns out to be quite likely that the effect is mediated through another gene entirely. Let's be very careful in assigning gene names to associations[^DISC1]. 
- eQTL work was very helpful in suggesting an answer here. Perhaps we should try and do some (very) large eQTL studies, from different tissues, in well-phenotyped cohorts. 
- Mouse phenotypes can be quite misleading, particularly for things like growth and development traits, and particularly when we know what we are looking for in advance. We should be very careful when we link mouse and human phenotypes. 
- Should we accept that *IRX3* is the answer? Maybe we should stay sceptical (once bitten...). What about humans with LOF mutations in *IRX3*? This model suggests that they (but not those with LOF mutations in *FTO*) should be protected against obesity.  


###References
Boissel S *et al.* [Loss-of-function mutation in the dioxygenase-encoding FTO gene causes severe growth retardation and multiple malformations.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2706958/) *Am J Hum Genet* 2009

Fischer J *et al.* [On the history of Fto.](http://www.ncbi.nlm.nih.gov/pubmed/20054161), *Obes Facts* 2008. 

Fischer J, *et al.* [Inactivation of the Fto gene protects from obesity.](http://www.ncbi.nlm.nih.gov/pubmed/19234441) *Nature* 2009

Frayling T *et al.* [A Common Variant in the FTO Gene Is Associated with Body Mass Index and Predisposes to Childhood and Adult Obesity](http://www.ncbi.nlm.nih.gov/pubmed/17434869), *Science* 2007. 

Gerken T *et al* [The Obesity-Associated FTO Gene Encodes a 2-Oxoglutarate-Dependent Nucleic Acid Demethylase](http://www.ncbi.nlm.nih.gov/pubmed/17991826) *Science* 2007

Loos R & Yeo G [The bigger picture of FTO: the first GWAS-identified obesity gene.](http://www.ncbi.nlm.nih.gov/pubmed/24247219), *Nat Rev Gen* 2014.

Peters T *et al.* [Cloning of Fatso (Fto), a novel gene deleted by the Fused toes (Ft) mouse mutation.](http://www.ncbi.nlm.nih.gov/pubmed/10501967) *Mamm Genome* 1999

Smemo S *et al.* [Obesity-associated variants within FTO form long-range functional connections with IRX3](http://www.ncbi.nlm.nih.gov/pubmed/24646999) *Nature* 2014

Wellcome Trust Case Control Consortium [Genome-wide association study of 14,000 cases of seven common diseases and 3,000 shared controls](http://www.ncbi.nlm.nih.gov/pubmed/17554300) *Nature* 2007

###Notes

[^IRX]: Itself one of those silly *drosophila* gene names
[^DISC1]: See [DISC1](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3967792/), for example
[^community]: The Obesity/anthropometric GWAS community, that is 