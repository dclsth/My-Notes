/*




############## variable #############

int = variabel angka/kata
char = variabel karakter
string = variabel kalimat
boolean = true or false only
double = decimal number




############# math function #########

#include <cmath>
max (x,y)
min (x,y)
pow (absis, pangkat)
sqrt  -------> akar
abs -------> it will give you positive number
round ------> dibulatkan
ceil ------> bulat ke atas
floor ------> bulat ke bawah 




######### if statement ###########

if (syarat) {perintah}   ----------> perintah yang dilakuin kalo ada syarat tertentu

switch (variabel)     ----->  if tapi lebih singkat tapi harus pakai nomor
 {
    case 0 :
    perintah
    break;
    case 1 : 
    perintah
    break;
    dst...
 }
    
ternary operation ?: -------->  if else tapi hanya pakai 1 kondisi
syarat ?: perintah : perintah else 




################# input #####################

cin >> = input user;
getline (cin, variable) = input user tapi string




#################### Loop ##############################

while (syarat) {perintah} ------> pengulangan kode yang dilakukan kalo belum menemukan syarat yang diberikan
loops for -----> while versi singkat 

for (vaeriabel, syarat, ++ or --)  {perintah}

do -----> pengulangan kode tapi dia eksekusi kode sekali sebelum diliat syaratnya
do (syarat){perintah}




############ Break / Continue ###############

break : berhentiin kodenya

continue : ngeskip  



#################### Generate Random Number ########################

#include <ctime>
srand(time(NULL))     ---->    GENERATE RANDOM NUMBER
int num1 = (rand()) % 6 + 1   -----> 0 - 6


#################### Void Function ##################

void function -----> untuk memanggil fungsi 
void NamaFungsi () { perintah }

kalau misal mau ada variable yang dimasukkan jadi

void NamaFungsi (string NamaVariable, int NamaVariable2) { perintah NamaVariable }

panggil fungsi dengan kode

NamaFungsi (NamaVariable1 , NamaVariable2) || NamaFungsi ()








*/