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

<h2>Peer-Reviewed Conferences</h2>
{% bibliography -f papers -q @*[type=inproceedings]* %}

<h2>Other Talks</h2>
{% bibliography -f papers -q @*[type=misc]* %}

</div>