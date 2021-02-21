---
title: "Inductor Design"
date: 2020-12-20T15:02:03+01:00
draft: false
katex: true
markup: "mmark"
---

## Electromagnetics

$$ P = \frac{1}{2} \oint_S \mathbf{E} \times \mathbf{H}^* = \cdot d\mathbf{s} = P_l + 2 j \omega ~ (W_m - W_e) $$

## Lumped Model Design

![Lumped Pi Model](../lumped_model.png)


#### Inductance 

$$ L_S = \beta ~ d^{\alpha_1}_{out} ~ w^{\alpha_2} ~ d^{\alpha_3}_{avg} ~ n^{\alpha_4} ~ s^{\alpha_5} ~~~ [nH]$$
#### Series Resistance 

$$ R_s = l / ( \sigma ~ w ~ \delta ~ (1 - e^{-t/\delta})) = k_1 ~ l/w $$

$$ \delta = \sqrt{ 2 / (w ~ \mu ~ \sigma) } $$

#### Substrate Oxide Capacitance

$$ C_{ox} = (\epsilon_{ox} ~ l ~ w) / 2~ t_{ox} = k_2 ~ l ~ w $$


#### Series Capacitance

$$ C_s = (\epsilon_{ox} ~ n ~ w^2) / (t_{ox,M1-M2}) = k_3 ~ n ~ w^2  $$


#### Substrate Capacitance

$$ C_{sub} = (C_{sub,specifc} ~ l ~ w) / 2 = k_4 ~ l ~ w  $$


#### Substrate Resistance

$$ R_{sub} = 2 / (G_{sub,specifc} ~ l ~ w) / 2 = k_5 / (l ~ w)  $$



## Integration into Oscillators

Considering an inductor used in a tank circuit of an LC oscillator the Noise to Carrier Ratio can be expressed as:

$$ \frac{\left< v_n^2 \right>}{V_{tank}^2} \propto  \begin{cases}
 L_{g^2_L} / I^2_{bias} ~~~(L~limited) \\
 L ~~~~~~~~~~~~~~~~ (V~limited) \\
 \end{cases} $$

In the voltage limited regime increasing the inductance beyond the value that puts the oscillator at the edge of the voltage-limited regime will create a waste of inductance. The current also should not be increased beyond the limit of voltage and inductance limited regions to avoid the waste of power.