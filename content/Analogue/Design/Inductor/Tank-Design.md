---
title: "Tank Design"
date: 2020-12-20T15:02:03+01:00
draft: false
katex: true
markup: "mmark"
---

![LC Circuit](../tankdesign_lc.png)



#### Tank Inductance

$$ L_{tank} = \left[ 1 + {(R_s / (L_s \omega))}^2 \right] L_s $$


#### Tank Capacitance

$$ C_{tank} = C_{ad} + C_{tot} = C_{load} + C_{tot} $$


#### Tank Resistance

$$ R_{tank} = R_p \parallel R_{s,p} = {(1/R_p + 1/R_{s,p} )}^{-1} $$

For $$ Q_{tank} > 1.5 $$:

$$ R_{s,p} = \left[ (1 + {(L_s \omega / R_s)}^2  \right] R_s \approx {(L_s \omega)}^2 / R_s $$


#### Geometric Program

$$ maximise ~~~~ R_{tank} $$

$$ subject~to ~~~ L_{tank} ( C_{tank} + C_{tot} + C_{min} ) \leq  1/\omega^2_{max}$$

$$ (r-1)(C_{tot} + C_{load})/C_{max} + r C_{min} / C_{max} \leq 1 $$

$$ C_{min} \geq  \alpha C_{max} $$

$$ Q_{tank} \geq  Q_{tank,min} $$

$$ ... $$