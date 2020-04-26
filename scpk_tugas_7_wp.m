%Studi Kasus Pemilihan karyawan Terbaik
%Alternatif : Fahmi, Faisal, Abel, Arsyal, Arief, Naufal, Akbar, Ian
%Kriteria : Disiplin,Loyalitas,Hasil kerja,Kerja sama,Kehadiran,
%           Pengetahuan pekerjaan,Kepribadian,Inisiatif

%Data     C1     C2     C3     C4     C5     C6     C7     C8
%Fahmi    90     90     90     80     100    90     85     100
%Faisal   85     80     85     90     100    100    100    100
%Abel     70     90     80     80     90     100    100    100
%Arsyal   85     85     90     80     100    80     90     100
%Arief    90     85     90     90     90     90     100    100
%Naufal   90     85     95     80     100    90     80     100
%Akbar    60     90     60     90     70     80     80     100
%Ian      80     90     70     90     100    100    85     100

%Kriteria     Sifat     Bobot
%   C1        max 1       5
%   C2        max 1       5
%   C3        max 1       4
%   C4        max 1       3
%   C5        max 1       5
%   C6        max 0       2
%   C7        max 1       5
%   C8        max 1       4

m = input('Masukkan jumlah alternatif : ');
n = input('Masukkan jumlah kriteria   : ');

for i=1:m
   for j=1:n
      x(i,j) = input('Masukkan rating kecocokan alternatif dengan kriteria : '); 
   end
end

x=reshape(x,m,n);

for j=1:n
   k(j) = input('Masukkan atribut kriteria    : ');
   w(j) = input('Masukkan bobot tiap kriteria : ');
end

[m n]=size(x);
w=w./sum(w);

for j=1:n
    if k(j) == 0
       w(j) = -1*w(j);
    end
end

for i=1:m
    S(i) = prod(x(i,:).^w);
end

V=S/sum(S);
disp(V);