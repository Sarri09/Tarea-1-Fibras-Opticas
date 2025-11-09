figure;
semilogy(EbNo_vec, ber_sim, 'o-');  % puntos + línea en escala log
grid on;
xlabel('E_b/N_0 (dB)');
ylabel('BER simulada');
title('32-QAM sobre canal AWGN');