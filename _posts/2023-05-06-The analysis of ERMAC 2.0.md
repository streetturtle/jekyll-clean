---
layout: post
title: "The analysis of ERMAC 2.0"
date: 2023-05-06
tags: android malware
description: The post shows the details about the capabilities of ERMAC android bank trojan version 2.0
---

# Intro
- **ERMAC** is a well-known Android bank trojan, developed based on another Android bank trojan called **Cerberus**. Its first version was detected targeting Poland in 2021 with the capability of stealing credentials. In This post, I will present the details of my analysis of the second version of the ERMAC trojan that is sold on darknet sites.   

# Check for valid victims
- Before the malware proceeds to do any initialization or registration, it checks whether the victim device is interesting based on the following two factors: 
 
  ## Countries of interest 
  - Firstly, The malware tries to retrieve a country code string equivalent of the MCC **Mobile Country Code (MCC)** to identify the country of the device by calling the API function `getNetworkCountryIso` as appears in the below screenshot. 
  
    ![img]({{ '/assets/images/ermac_1.png' | relative_url }}){: .center-image }*(**Getting country code for MCC**)*
  
  - In case This function returns an empty string, the malware will try to get the country code of the default locale as appear in the below screenshot.
     
     ![img]({{ '/assets/images/ermac_2.png' | relative_url }}){: .center-image }*(**Getting default locale's country**)*
     
  - The malware will consider the infected device as **interesting** if it's located out of the the countries with the country codes in the below screenshot.
     
     ![img]({{ '/assets/images/ermac_3.png' | relative_url }}){: .center-image }*(**non-interesting country codes**)*
  
  - These countries are the following:
   
     |-----------------+------------+-----------------+----------------+----------+----------|
     |-----------------|:-----------|:---------------:|---------------:|----------|:---------|
     | 1.Ukraine       |            | 2.Russian Federation |           | 3.Belarus|   | 4.Tajikistan|
     |-----------------+------------+-----------------+----------------+----------------------
     | 7. Azerbaijan   |  8. Armenia|  9. Kazakhstan  |  10. Kazakhstan | 11. Moldova|       |
     |=================+============+=================+================+==========+==========|

    
     
   
    
  
  
  
  ## Existence of emulation
  - here2


# Perform initialization

# Granting the needed permissions

# Enable the accessibility service

 
