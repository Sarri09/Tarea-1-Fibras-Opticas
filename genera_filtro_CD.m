lambda = 1550e-9;          
c      = 3e8;              
D_ps   = 17;               
D      = D_ps * 1e-12 / (1e-9*1e3);   

beta2  = -(lambda^2 / (2*pi*c)) * D;  
L      = 50e3;                       

Rs  = 1;      
SPS = 8;      
Fs  = Rs * SPS;
Ts  = 1/Fs;

M = 101;                         
n = -(M-1)/2:(M-1)/2;           

f = n * (Fs/M);                 

Hcd = exp(-1j * 2*pi^2 * beta2 * L .* (f.^2));

h_temp = ifft(ifftshift(Hcd));  
h_cd   = real(h_temp);           

h_cd = h_cd / sum(h_cd);        

