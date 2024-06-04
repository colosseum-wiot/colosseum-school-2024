#!/bin/bash

# Rx
/usr/local/lib/uhd/examples/rx_ascii_art_dft --freq 1.010e9 --rate 1e6 --gain 20 --ref-lvl 0 --dyn-rng 120 --frame-rate 15

# Tx
/usr/local/lib/uhd/examples/tx_waveforms --freq 1.010e9 --rate 1e6 --gain 20
