---
title: "Jitter and Phase Noise Principles"
draft: false
katex: true
markup: "mmark"
---

## Jitter

Considering the jitter from a white noise source on a sinusoidal signal described by:

$$ v(t) = A sin( \omega_0 t) + n(t) $$

Given the assumption that the amplitude of the signal is much greater than the noise the transition times are only slightly modified. The small signal approximation can be made where:

$$ v(t) \approx A \omega_0 t + n(t) $$

Find when the signal equals zero at time moment _k_.

$$ 0 \approx A \omega_0 t_k + n_k $$

Thus,

$$ t_k \approx \frac{n_k}{A \omega_0} $$

Therefore, the jitter increases with larger noise amplitude, smaller signal amplitude or lower frequency.

The discrete-time noise process $$ n_k $$ is white with variance $$ \sigma^2_n $$. Hence absolute jitter is also a discrete-time white noise process with variance:

$$ \sigma^2_\tau = \frac{\sigma^2_n}{A^2 \omega^2_0} $$

The sequence $$ \tau_k $$ is the _absolute jitter_ of the clock in time units. It can be normalised to radians:

$$ \phi_k = \tau_k \frac{2 \pi}{T_0} = \frac{\sigma^2_n}{A^2}$$

The noise in radians is expressed as:

$$ \sigma^2_\phi = \sigma^2_\tau \cdot {\left( \frac{2 \pi}{T_0} \right)}^2  = \frac{\sigma^2_n}{A^2} $$


## Phase Noise

Phase noise is the frequency-domain representation of absolute jitter. The phase noise, $$ S_\phi(f) $$, of a clock signal with random jitter is the power spectral density of the sequence $$ \phi_k $$. It specifies the power of $$ \phi_k $$ in $$ rad^2 $$ within any 1 Hz wide bin of frequency spectrum and has units $$ rad^2 / Hz $$.

The variance of $$ \phi_k $$ is given by the integral of $$ S_\phi(f) $$ over all frequencies:

$$ \sigma^2_\tau = {\left ( \frac{T_0}{2 \pi} \right)}^2 \int^{1/2T_0}_0 S_\phi (f) \cdot df $$

## Normalised Power Spectral Density

Below an ideal oscillator is shown with a single frequency component. A realistic representation is also shown jitter with power around the ideal single tone. The greater the jitter the more the power will be spread around the ideal frequency. The power in the tails is also proportional to the squared amplitude of the oscillating waveform. To obtain a measure of jitter $$ S_v (f) $$ may be normalised with respect to the total power in the signal. for a sinusoid this is $$ A^2/2 $$. 

<script type="text/tikz">
  \begin{tikzpicture}
    \draw[thick,->] (-6,0) -- (6,0) node[anchor=north west] {$f$};
    \draw[thick,->] (-6,0) -- (-6,6) node[anchor=south east] {$ S_{~v} ~~(f)$};
    \draw[->] (0,0) -- (0,5.5) node[anchor=north west] {no~~~~jitter};
    \node[] at (0,-0.5) {$1/T_{~~0}$};
    \draw (0,5) .. controls (1,5) and (0,0) .. (3,0);
    \draw (0,5) .. controls (-1,5) and (0,0) .. (-3,0);
  \end{tikzpicture}
</script>

The normalised power can also be shifted to DC giving the alternative representation of jitter:

$$ \mathcal{L} \Delta = \frac{S_v \left( \frac{1}{T_0} + \Delta f \right) }{A^2 / 2} $$

<script type="text/tikz">
  \begin{tikzpicture}[]
    \draw[thick,->] (0,0) -- (6,0) node[anchor=north west] {$\mathnormal{f}$};
    \draw[thick,->] (0,0) -- (0,6) node[anchor=south east] {$\mathcal{L}(\mathrm{\Delta} f)$};
    \draw (0,5) .. controls (1,5) and (0,0) .. (3,0);
  \end{tikzpicture}
</script>

The units of $$ \mathcal{L} \Delta $$ are $$ Hz^{-1} $$ but it is common to plot it's logartihm $$ 10 log_{10} \left( \mathcal{L} \Delta \right) $$

--------

[1] Carusone, T. C., Johns, D., Martin, K. W., & Johns, D. (2012). _Analog integrated circuit design._ Hoboken, NJ: John Wiley & Sons.