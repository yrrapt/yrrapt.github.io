---
title: "LC VCO Design"
draft: false
katex: true
markup: "mmark"
---

The impedance for a parallel RLC for $$ \Delta \omega << \omega_0 $$ is:

$$ Z(\omega_0 + \Delta \omega) \approx \frac{1}{G_L} \cdot \frac{1}{1 + j 2 Q_L \frac{\Delta \omega}{\omega_0} } $$

where $$ G_L $$ is the parallel parasitic conductance of the tank. For steady-state oscillation $$ G_m R_L = \frac{G_m}{G_L} = 1 $$.

In an oscillator the active device provides energy to compensate for losses in the tank circuit and sustain oscillation. It supplies DC energy to the tank but also injects noise which becomes phase noise.

## Differential Colpitts

![Differential Colpitts](../diff_colpitts.png)
_Differential Colpitts[2]_




--------

[1] A. Hajimiri and T. H. Lee, "A general theory of phase noise in electrical oscillators," in _IEEE Journal of Solid-State Circuits_, vol. 33, no. 2, pp. 179-194, Feb. 1998, doi: 10.1109/4.658619.

[2] R. Aparicio and A. Hajimiri, "A noise-shifting differential Colpitts VCO" in _IEEE Journal of Solid-State Circuits_, vol. 37, no. 12, pp. 1728-1736, Dec. 2002, doi: 10.1109/JSSC.2002.804354.