---
title: "Common Source"
---

## Ideal Current Source

![Common Source Amplifier with Ideal Current Source](/Analogue/Design/AlgorithmicDesign/common-source/common_source_circuit_ideal.svg#center)

To design the amplifier we will start with two design specifications: the DC gain and the gain-bandwidth product (GBW).

These described as:

$$ A_{DC} = g_m \cdot r_o$$

$$ GBW = \frac{ g_m }{ 2 \pi C_L }$$

Let's use an example spec:

| Parameter    | Specification |
| :----------- | :------------ |
| $$ A_{DC} $$ | 40 dB         |
| $$ GBW $$    | 1 MHz         |
| $$ C_L $$    | 10 pF         |

Let's rearrange using $$ \frac{g_m}{I_d} $$ as a parameter:

$$ g_m = GBW \cdot 2 \pi C_L $$
$$ I_d = \frac{g_m}{ \left( \frac{g_m}{I_d} \right) } $$
$$ I_d = \frac{GBW \cdot 2 \pi C_L}{ \left( \frac{g_m}{I_d} \right) } $$

Let's select $$ \frac{g_m}{I_d} = 18 $$ this equates to an inversion coefficient of 1 [[Gm/ID versus IC](https://everynanocounts.com/2016/08/26/gmid-versus-ic/)]

Therefore:

$$ I_d = \frac{ 10~MHz \cdot 2 \pi \cdot 10~pF }{18} = 35~\mu A $$