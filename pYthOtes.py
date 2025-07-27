print("hi")


"""
VARIABLE ---> langsung tanpa apa apa

PRINT TYPE OF VARIABLE
age = 21
print(type(age))   ---> print tipe variable (int)

MENGUBAH TYPE VARIABLE SECARA EKSPLISIT
nama = "dara"
nama = bool(nama)   --->  kalo stringnya tidak kosong maka output true
age = float(age)   ---> hasilnya nanti decimal

SACARA IMPLISIT ---> ada operasi
x = 2
y = 2.0
x = x / y 
----->  output = 1.0  (jadi float secara implisit)

INPUT  ---> hasil input itu selalu dalam string,
            kalo mau diubah harus dikasih di awal sebelum input

age = int(input("Enter ur age: "))
print(f"Ure {age} years old!")     ---> harus ada f nya untuk print variable

OPERATION MATH
ROUND(MENGURANGI DECIMAL)
{round(total,2)}   ---->  jadi cuma ada 2 angka di belakang koma
x = 2
x = abs(x)   ---->  jarak antara x dengan 0

IF STATEMENT
if name == "dara":
    kode....
elif name == "":
    kode....


CONDITION EXPERESSION   ---> mirip ternary (if else versi lebih singkat)

num = 4
print("EVEN" if num % 2 == 0 else "ODD")

or

result = "EVEN" if num % 2 == 0 else "ODD"
print(result)

STRING METHOD

Case Conversion

capitalize() ---> kalimatnya di kasih kapital di awal
casefold() --->	output non latin bakal dijadiin latin
lower()	---> semua string di lower
swapcase()	---> yang kapital jadi kecil dan sebaliknya
title()	---> 1 kalimat di setiap kata dikapitalin huruf pertama
upper()	---> semua di akpitalin


Searching and Counting
 
count()	---> menghitung total char
endswith("e")	---> ngecek dia terakhirnya e atau bukan
find("e")	--->  nyari index huruf e paling awal, kalo gaada output -1
index("e")	--->  nyari index huruf e paling awal, kalo gaada output error gitu deh
rfind("e") ---> nyari index huruf e paling akhir, kalo gaada output -1	
rindex("e") ---> nyari index huruf e paling akhir, kalo gaada output error
startswith("e")	---> ngecek apakah huruf awalnya e


Checking and Validation

isalnum()	
isalpha()	
isascii()	---> non ACIIS (emoji, non latin)
isdecimal()	
isdigit()	
isidentifier()	---> depannya harus huruf, boleh contain angka sama _
islower()	
isnumeric()	---> number tapi string
isprintable()	---> false kalo ada kayak \n dkk
isspace()	
istitle()	
isupper()	

FORMATTING AND MANIPULATING

.center(20, '-')	--->  variable ditaruh di tengah di antara 20 - 
expandtabs()	---> 
.format("hi", name="hii")	---> kalo misal dikasih madlibs, bagian rumpang dikasih {0} atau {name}
                                  ((nanti otomatis masuk ke madlibs))
format_map()	---> sama aja tapi 2 2 nya ditarih di dua variable yang berbeda
.join(array)	---> menggabungkan array menjadi string 
ljust(10,"-")	 ---> filling di kiri variable aja
lstrip()        --->  di kiri variable kalo ada kayak --- atau   bakal keapus	
.partition("@")	  ---> bakal misah jadi array dan pemisahnya jadi 1 elemen 
.replace(from, to))	 
rjust()	
rpartition()	
rsplit()	
rstrip()	
.split(",")	---> ngubah jadi array sesuai tanda
splitlines()	---> ngubah array di sela sela perintah \n dkk
strip()   ---> ngapus spam simbol kanan kiri
text.translate(variable maketrans)	---->  nanti di execute 
.maketrans("from", "to", yang mau delete) ---> replace trus string yang mau diapus  
zfill(5)   ---> fill up 0 sebanyak 5 kali


INDEXING
indexing = string[start:  end:  step]
ex: ((email slicer))

email = input(enter your email: )
index = email.index("@")   ---> mencari index @

username = email[:index]  ----> 5 huruf awal (0-5)  
domain = email[index:]  ---> start index @ sampai selesai
domain = email[index + 1:] ---> startnya setelah @

FORMAT SPECIFIER

# .(number)f = -> .2f ---> 2 angka di belakang koma yang ditunjukkin
# :(number) = -> 10 --> ada 10 space untuk num dan jadi right justify
# :0(number) = -> 010 --> 10 space yang kosong dikasih 0 di kiri
# :< = ---> left justify
# :> = ---> right justify (defaultnya nomer 2)
# :^ = ---> di center in
# :+ = ---> + untuk nilai positif
# := ----> kalo = dipake sendirian ga akan ngaruh, tapi kalo sama + dan angka jadinya antara + dan
            angka akan dikasih spasi sebanyak jumlah space yang kurang
# :  = --->  kalo positif num dikasih spasi di awal
# :, = ---> dikasih koma untuk memisah ribuan -> 1,000
# :% = ---> dijadiin nilai persen

WHILE

while nama == ""
    print("ga bole kosong")
    nama = input("enter your name")

print (f"hi {name}")

FOR LOOPS

for x in a range (1,10): 
print(x)                  ----> print 1-10

for x in phonenumber: 
print(x)              ------> nanti jadi ngeprintnya satuan

for x in (1,20):
    if x == 13
    break           ----> di break di 13

    else:
    print(x)



LIST/ARRAY  --->  []

print(list[::2]) ---> even only
print(list[::-1]) ---> print backwards

for list in listarray:
    print(list)   --> print in one by one

print("pineapple" in fruits) ----> jadinya true or false

print(dir(array))    ---->  ke print list perintah
print(help(array))   ---> info tentang array
print(len(array))   ---> jumlah elemen
array.append("elemen")  --->  add elemen

SET ---> {}   ---> kayak array tapi acak dan cuma bisa add sama remove aja

TUPLE  -->  () --> ga bisa diubah cuma bisa diitung isi dari array


"""