---
layout: post
title: "The analysis of ERMAC 2.0"
date: 2023-05-06
tags: Android Malware
description: The post shows the details about the capabilities of ERMAC android bank trojan version 2.0
---

# Intro
- **ERMAC** is a well-known Android bank trojan, developed based on another Android bank trojan called **Cerberus**. Its first version was detected targeting Poland in 2021 with the capability of stealing credentials. In This post, I will present the details of my analysis of the second version of the ERMAC trojan that is sold on darknet sites.   

# Check for interesting victims
- Before the malware proceeds to do any initialization or registration, it checks whether the victim device is interesting based on the following two factors: 
 
  ## Countries of interest 
  - For this factor, The malware tries to retrieve a country code string equivalent of the **Mobile Country Code (MCC)** to identify the country of the device by calling the API function `getNetworkCountryIso` as appears in the below screenshot. 
  
    ![img]({{ '/assets/images/ermac_1.png' | relative_url }}){: .center-image }*(**Getting country code for MCC**)*
  
  - In case This function returns an empty string, the malware will try to get the country code of the default locale as appear in the below screenshot.
     
     ![img]({{ '/assets/images/ermac_2.png' | relative_url }}){: .center-image }*(**Getting default locale's country**)*
     
  - The malware will consider the infected device as **interesting** if it's located out of the the countries with the country codes in the below screenshot.
     
     ![img]({{ '/assets/images/ermac_3.png' | relative_url }}){: .center-image }*(**Non-interesting country codes**)*     
  - These countries are the following:
    - Ukraine
    - Russian Federation
    - Belarus 
    - Tajikistan
    - Uzbekistan
    - Turkmenistan
    - Azerbaijan
    - Armenia
    - Kazakhstan
    - Kyrgyzstan
    - Moldova
     <br/>
   
  ## Existence of emulation
  - Regarding this factor, The malware will try to find whether it's executing in an emulator or a real device.
  - As appear the below screenshot, The emulator will get detected if the following Android build properties contain values that usually set in the emulating environment. 
    - `Build.FINGERPRINT` contains any strings like **"generic"** or **"unknown"**.
    - `Build.Model` contains any strings like **"google_sdk"**,  **"Emulator"** or **"Android SDK built for x86"**.
    - `Build.MANUFACTURER` contains string **"Genymotion"**.
    - `Build.BRAND` contains string **"generic"**.
    - `Build.DEVICE` contains string **"generic"**.
    - `Build.PRODUCT` equals string **"google_sdk"**.
    
       ![img]({{ '/assets/images/ermac_4.png' | relative_url }}){: .center-image }*(**Emulation detection**)*
   
- Therefore, The victim device is an **interesting** if it's not an emulator beside being located out of the previously mentioned countries. 


# Perform initialization

- If the victim device is interesting, the malware will start initializing certain keys of shared preference called **settings**.
- First, it generated bot id that matches the regex **[a-z0-9]{17}** then save it under key named **idbot** in shared preferences as appear in the below screenshot.
  
  ![img]({{ '/assets/images/ermac_5.png' | relative_url }}){: .center-image }*(**Bot ID generation**)*

- After that, it initializes the shared preference with the following as appears in the below screenshot:
   
  - Set key **urlAdminPanel** which is default C2 url, with string value **hxxp://185[.]215[.]113[.]59:3434**.
  - Set key **initialization** with value **good**.
  - Set key **events** which hold the logs, with empty string.
  - Set key **datakeylogger** which later will hold keylogging data, with empty string.      
   
 ![img]({{ '/assets/images/ermac_6.png' | relative_url }}){: .center-image }*(**Bot's initialization**)*
 <br/>

# Enable the accessibility service

- So that the malware performs its functionalities and enables the needed permissions, it needs the user to enable its accessibility service.
- In order to achieve that, The malware disguises itself as a **Google Chrome** and requires the user to enable accessibility service.
- First, it performs base-64 decoding for encoded html code, then loads it in web view as appears in the below screenshots.
 
  ![img]({{ '/assets/images/ermac_7.png' | relative_url }}){: .center-image }*(**Decoding and loading html to web view**)*
   
  ![img]({{ '/assets/images/ermac_8.png' | relative_url }}){: .center-image }*(**The screen appears to user**)*
 
 
# Granting the needed permissions



 
