---
layout: page
permalink: /publications/
title: Publications
description: 
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->
<style>
.publications h2 {
  font-family: 'Georgia', cursive;
  font-size: 28px;    /* Larger font size */
  color: #4C96B6;       /* Purple color */
  font-weight: bold;   /* Bold for better visibility */
  margin-top: 30px;    /* Add some spacing between sections */
}
</style>

<div class="publications">

<h2>Preprints</h2>
{% bibliography -f papers -q @*[type=preprint]* %}
No preprints at the moment

<h2>Peer-Reviewed Journal Papers</h2>
{% bibliography -f papers -q @*[type=article]* %}

<h2>Peer-Reviewed Conference Proceedings</h2>
{% bibliography -f papers -q @*[type=inproceedings]* %}

<h2>Other Talks</h2>
</div>
- **Towards Hierarchical Control of Power Systems with Temporal Logic Specifications** at *Systems, Control and Optimization (SCO) Colloquium, Bernoulli Institute, University of Groningen, Netherlands*, 2025

- [**Predictive Control for Congestion Management in Sub-Transmission Areas: A Parameter-Varying Model-Based Approach**](https://doi.org/10.1016/j.ifacol.2024.07.518) at *IFAC Symposium on Control of Power & Energy Systems (CPES)*, 2024

- [**Power Management via STL Specifications of DC Microgrids**](https://www.linkedin.com/posts/green-energy-park_gep-um6p-iresen-activity-7212502911937900545-a7F1?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAADgIg2QBIe8FhKUZ24cRTVQdcngPRWcfIak) at *UM6P College of Computing, Marocco*, 2024

- [**Structure-Exploiting Optimization for Control with Signal Temporal Logic Specifications**](https://csrte23.sciencesconf.org/) at *3rd Workshop of the RTE Chair, CentraleSupélec, France*