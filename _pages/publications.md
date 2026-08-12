---
layout: page
permalink: /publications/
title: Publications
description: 
nav: true
nav_order: 1
---

<style>
/* small scoped call-out that links to the standalone Selected Work page */
.selected-work-cta{
  display:flex;align-items:center;gap:18px;flex-wrap:wrap;
  margin:8px 0 36px;padding:20px 24px;
  border:1px solid #c4d2e2;border-left:4px solid #2f6fc0;border-radius:10px;
  background:rgba(168,209,255,.14);
}
.selected-work-cta .swc-text{flex:1;min-width:220px;}
.selected-work-cta .swc-kicker{
  font-family:"JetBrains Mono",ui-monospace,monospace;
  font-size:11px;letter-spacing:.22em;text-transform:uppercase;color:#2f6fc0;
  margin-bottom:4px;
}
.selected-work-cta .swc-title{font-weight:200;font-size:18px;line-height:1.3;}
.selected-work-cta a.swc-btn{
  font-family:"JetBrains Mono",ui-monospace,monospace;font-size:12px;
  letter-spacing:.08em;text-transform:uppercase;text-decoration:none;
  padding:10px 18px;border-radius:100px;background:#2f6fc0;color:#fff;
  white-space:nowrap;transition:.2s;
}
.selected-work-cta a.swc-btn:hover{background:#3f82d8;}


.publications h2 {
  font-family: 'Georgia', cursive;
  font-size: 28px;    /* Larger font size */
  color: #4C96B6;       /* Purple color */
  font-weight: bold;   /* Bold for better visibility */
  margin-top: 30px;    /* Add some spacing between sections */
}
</style>


<div class="publications">

<div class="selected-work-cta">
  <div class="swc-text">
    <div class="swc-kicker">Start Here</div>
    <div class="swc-title">New to temporal logic? A plain-language overview of what I work on and why it matters.</div>
  </div>
  <a class="swc-btn" href="/research-goal/">Research Overview →</a>
</div>

<div class="selected-work-cta">
  <div class="swc-text">
    <div class="swc-kicker">Research Arc</div>
    <div class="swc-title">Read the story behind papers [J1,J2,J3] — from tractable logic to a trustworthy architecture.</div>
  </div>
  <a class="swc-btn" href="/selected-work2/">Selected Work →</a>
</div>
<h2>Preprints</h2>
{% bibliography -f papers -q @*[type=preprint]* %}

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

