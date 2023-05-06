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
  - Firstly, The malware tries to retrieve **Mobile Country Code (MCC)** to identify the country of the device by call API function `getNetworkCountryIso` as appear in the below screen shot.  
  
    ![img]({{ '/assets/images/ermac_1.png' | relative_url }}){: .center-image }*(**Getting MCC**)*
  
  ## Existence of emulation
  - here2


# Perform initialization

# Granting the needed permissions

# Enable the accessibility service

 
