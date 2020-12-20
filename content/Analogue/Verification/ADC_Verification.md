---
title: "ADC Verification Techniques"
date: 2020-12-20T15:02:03+01:00
draft: false
---

# ADC Verification Techniques

## ADC DNL/INL Measurement

From https://www.reddit.com/r/chipdesign/comments/g9fsyg/dnlinl_of_adc_in_cadence:

> I never use the DNL & INL calculator. It is so easy to get garbage answers with it. I've never figured out how to do it reliably. Luckily, it is trivial to do this in Python. First, strobe the output codes of the ADC at the sampling rate and then save them to a file. Just a list. So, the list would look like: ``0 0 0 0 0 0 0 ... 0 1 1 1 1 1 1 ... 1 2 2 2 2 2... 2`` and so on.
>
> Then in Python, MATLAB, or whatever, read in the file and find the average number of samples per code (this is easy, just divide the total number of samples you have by the 2^N of your ADC where N is the resolution). This is your expected value of samples in each code bin.
>
> Then, do a loop over each code (from 0 to (2^N - 1)). The DNL for each code is simply the difference between the number of codes for that code divided by the average number of samples per code (the expected value). The INL is simply the previous INL plus the current DNL value (i.e the running sum for all previous DNLs value plus the current DNL value). Make sure to initialize INL to 0.
>
> That's all there is to it. Just be sure to use an ideal voltage source for the ramp.
>
> If you want to do a sine test, it is more involved, but still pretty easy.
>
> So, one more thing, how many points do you need? The DNL resolution is 1/(Number of samples per code).
>
> So, if you want to know your DNL to 0.1 LSB accuracy, you need 10 samples per code. So if you have a 12-bit ADC, you need 10*2^10 = 10,240 samples minimum.
>
> Usually you probably want more like 0.01 LSB accuracy so you would need 102,400 samples. If you do a sine test you need WAY more.


