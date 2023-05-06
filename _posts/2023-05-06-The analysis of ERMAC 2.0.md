---
layout: post
title: "The analysis of ERMAC 2.0"
date: 2023-05-06
tags: Android Malware
description: The post shows the details about the capabilities of ERMAC android bank trojan version 2.0
---

# Intro
- **ERMAC** is a well-known Android bank trojan, developed based on another Android bank trojan called **Cerberus**. Its first version was detected targeting Poland in 2021 with the capability of stealing credentials. In This post, I will present the details of my analysis of the second version of the ERMAC trojan that is sold on darknet sites.   

# Check for valid victims
- Before the malware proceeds to do any initialization or registration, it checks whether the victim device is interesting based on the following two factors: 
 
  ## Countries of interest 
  - For this factor, The malware tries to retrieve a country code string equivalent of the **Mobile Country Code (MCC)** to identify the country of the device by calling the API function `getNetworkCountryIso` as appears in the below screenshot. 
  
    ![img]({{ '/assets/images/ermac_1.png' | relative_url }}){: .center-image }*(**Getting country code for MCC**)*
  
  - In case This function returns an empty string, the malware will try to get the country code of the default locale as appear in the below screenshot.
     
     ![img]({{ '/assets/images/ermac_2.png' | relative_url }}){: .center-image }*(**Getting default locale's country**)*
     
  - The malware will consider the infected device as **interesting** if it's located out of the the countries with the country codes in the below screenshot.
     
     ![img]({{ '/assets/images/ermac_3.png' | relative_url }}){: .center-image }*(**Non-interesting country codes**)*
  
  - These countries are the following: 
     1. hello &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. hello2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  3. hello3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  4.hello4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  5.hello5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  6.hello6 <br />  7.hello7 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  8.hello8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  9.hello9 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  10.hello10 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 11.hello11\

   
   
  ## Existence of emulation
  - For this factor, The malware tried to find whether it's executing in real device or in emulator and achieve goal by.


# Perform initialization

# Granting the needed permissions

# Enable the accessibility service

 
