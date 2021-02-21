---
title: "PLL Systems"
draft: false
katex: true
markup: "mmark"
---

## Transfer Functions

![Basic PLL System](../pll_system_basic.png)
_[1]_

Considering the system above, the transfer functions of the loop are:

**Open Loop Transfer Function**:

$$ G(s) = \frac{ \theta_o (s) }{ \theta_o (e) } = \frac{K_d ~ K_o ~ F(s)}{s} $$


**System Transfer Function**:

$$ H(s) = \frac{ \theta_o (s) }{ \theta_i (e) } = \frac{G(s)}{1 + G(s)} = \frac{K_d ~ K_o ~ F(s)}{s + K_d ~ K_o ~ F(s)} $$


**Error Transfer Function**:

$$ E(s) = \frac{ \theta_e (s) }{ \theta_i (e) } = \frac{1}{1 + G(s)} = 1 - H(s) = \frac{s}{s + K_d ~ K_o ~ F(s)} $$


## Loop Filter

Consider an idealied first order loop filter with equations:

$$ \tau_1 = R_1 C $$

$$ \tau_2 = R_2 C $$

$$ F(s) \approx -\frac{s \tau_2 + 1}{s \tau_1} = - \left( \frac{\tau_2}{\tau_1} + \frac{1}{s \tau_1} \right)$$

This can also be represented as PI (Proportional Integral) gains:

$$ F(s)  = K_1 + \frac{K_2}{s} $$

## Second Order PLL

Once the loop filter (or better named loop controller) above is combined with the system transfer function the system becomes second order:

$$ H(s) = \frac{ K_d~K_o (s \tau_2 + 1) / \tau_1 }{ s^2 + s~K_d~K_o~\tau_2/\tau_1 + K_d~K_o/\tau_1 } = \frac{K_d~K_o (K_1 s + K_2)}{s^2  + s~K_d~K_o~K_1 + K_d~K_o~K_2} $$

The two roots of the denomintor for the poles of the transfer function. The zero is the root of the numerator and lies at $$ s = -1 / \tau_2 = -K_2/K_1 $$. 

More important than the order of the PLL is the type. The type is the number of poles at zero, this is the number of integrators in the system. Most PLLs are type 2.

#### Natural Frequency and Damping

The second-order system can be described using the _undamped natural frequency_ $$ \omega_n $$ and the damping ratio, $$ \zeta $$. These are defined as:

$$ \omega_n = \sqrt{\frac{K_d K_o}{\tau_1}} = \sqrt{K_d K_o K_2} $$

$$ \zeta  = \frac{\tau_2}{2} \sqrt{\frac{K_d K_o}{\tau_1}} = \frac{\tau_2 \omega_2}{2} = \frac{K_1}{2} \sqrt{\frac{K_d K_o}{K_2}} $$

Note that the natural frequency is a function of the oscillator and detector gain and also the integral gain but not the proportional gain.

A higher ration of proportional gain to integral gain will increase the damping ratio.

Which allows the system transfer function to be represented as:

$$ H(s) = \frac{ 2 \zeta \omega_n s + \omega_n^2 }{ s^2  + 2 \zeta \omega_n s + \omega_n^2 } $$

#### Loop Gain

For a second-order type 2 PLL the loop gain is:

$$ K = K_d K_o K_1 = \frac{K_d K_o \tau_2}{\tau_1} $$

Which is also the open-loop gain through the proportional path. 

#### Bandwidth

The natural frequency, $$ \omega_n $$, is a bad description of the bandwidth of a PLL due to the effect the damping factor has on the frequency response. A better measure of bandwidth is the loop gain, $$ K $$. Natural frequency also has no meaning for non-second-order systems whereas K is still a good measure of bandwidth in these systems. 

The natural frequency is a good predictor of the error response corner frequency though.


--------

[1] Floyd M. Gardner, "Phaselock Techniques, 3rd Edition"