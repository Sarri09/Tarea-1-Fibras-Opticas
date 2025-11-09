EbNo_vec = 4:2:22;          
ber_sim  = zeros(size(EbNo_vec));

for k = 1:length(EbNo_vec)
    EbNo_dB = EbNo_vec(k);  

    sim('Fase3');

    errores = ErrorVec(2);
    total   = ErrorVec(3);
    ber_sim(k) = errores / total;

    fprintf('Eb/N0 = %2d dB -> BER = %.3g\n', EbNo_dB, ber_sim(k));
end