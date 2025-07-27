/*

console.log(data yang mau dimasukkin) ----> nyimpen data di console
let ------> variabel
var ----- > variabel yang digunakan di browser jadul (kalo let ga bisa)
const -----> variabel yang tidak bisa diubah
window.alert -----> window prompt keluar buat alert
document..getElementById("id yg dipilih dari html").textContent = 'text yang mau ditulis'

function NamaFungsi(variable yang dimasukkin) {} ----- > kayak void bisa manggil function
NamaFungsi(nilai variabel) ------ > manggil functionnya

CARA MENYIMPAN INPUT DI CONSOLE LOG 

let username;
username = document.getElementById(idnyainputbox).value;
console.log(username); ----> kalo mau di function button jangan lupa dimasukkin function

CARA MEMBERIKAN BUTTON FUNCTION

document.getElementById(idsibutton).onclick = function(){

nanti dikasih function di dalem sini

}

CARA TEXTCONTENT

idyangdipilih.textContent = "ubahkata"

PRINT VARIABLES DI STRING
console.log(`Hello ${username}`); ----> menggunakan template literal untuk memasukkan variabel ke dalam string

PRINT VARIABLES DI LUAR STRING
console.log("Hello " + username); ----> menggunakan operator + untuk menggabungkan string dan variabel

RANDOM NUM

let NumberNum = Math.floor (Math.random() * 6); -------> random Num 0-5
let NumberNum = Math.floor (Math.random() * 6) + 1; -------> random Num 1-5

CHECKEDBOX FUNCTION
if(checkbox.checked){}

STRING METHODS
let username = "dclsth";

username.charAt(0) ----> mengambil karakter pertama dari string
userame.indexOf("c") ----> mengambil index dari karakter "c" di string
username.length ----> mengambil panjang dari string
username.toUpperCase() ----> mengubah string menjadi huruf kapital
username.toLowerCase() ----> mengubah string menjadi huruf kecil    
username.repeat(2) ----> mengulang string sebanyak 2 kali
username.startsWith("dc") ----> mengecek apakah string dimulai dengan "dc"
username.endsWith("th") ----> mengecek apakah string diakhiri dengan "th"
username.includes("cl") ----> mengecek apakah string mengandung "cl"
username.replace("d", "D") ----> mengganti karakter "d" dengan "D" di string
username.trim() ----> menghapus spasi di awal dan akhir string

STRING SPLIT AND SLICE
username.split("") ----> memecah string menjadi array karakter ---> hanya berlaku untuk string == ["d", "c", "l", "s", "t", "h"]
username slice(0, 2) ----> mengambil substring dari index 0 sampai 2 (tidak termasuk index 2) ---> bisa untuk arrays dan string
username slice(-1) ----> mengambil 1 huruf terakhir dari string

let fullname = "dara calistha putri kindy";

let firstname = fullname.slice(0, fullname.indexOf(" "));
let lastname = fullname.slice(fullname.lastIndexOf(" ") + 1);


NUMBER METHODS
let number = 111000001010

number.replaceAll("0", "1") ----> mengganti semua angka 0 dengan 1 di string
number.toString() ----> mengubah number menjadi string
number.parseFloat() ----> mengubah string menjadi number
number.toFixed(2) ----> mengubah number menjadi string dengan 2 angka di belakang koma
number.toPrecision(3) ----> mengubah number menjadi string dengan 3 angka signifikan
number.padStart(5, "0") ----> menambahkan angka 0 di depan string sampai panjangnya 5 karakter
number.padEnd(5, "0") ----> menambahkan angka 0 di belakang string sampai panjangnya 5 karakter

STRICT EQUALITY
=== ----> strict equality (memeriksa tipe data dan nilai)
!== ----> strict inequality (memeriksa tipe data dan nilai)
== ----> loose equality (hanya memeriksa nilai, tidak memeriksa tipe data)

CARA UNTUK MEWAJIBKAN UNTUK MENGISI INPUT
if (input.value === "" || input.value === null) {
    alert("Input tidak boleh kosong");
} else {
    // lanjutkan proses
}

DO LOOPS ---> tidak perlu menyertakan hasil dari varible di awal (mengeksekusi dari akhir)

format :

do {
    // kode yang akan dijalankan
} while (kondisi);
// kode yang dijalankan untuk escape dari loop

ARRAY ------> contain: string, number, object, boolean, array, 
function, operation, and variable inside  the operation

let arr = ["a", 1+1, 9];
arr.push("dara"); -----> memasukkan data baru di akhir ---> ["a", 1+1, 9, "dara"]
arr.pop(); ------> menghilangkan data paling terakhir ----> ["a", 1+1]
arr.unshift("dara") ----> memasukkan data baru di awal ---> ["dara", "a", 1+1, 9]
arr.shift() -----> menghilangkan data awal ----> [1+1, 9]

arr.length; ----> jumlah data dalam array ----> 3
arr.indexOf("a"); -----> untuk mencari index data tertentu ---> 0 (kalo output -1, artinya gaada data tsb di arraynya)
arr.sort()  -----> sortir angka lalu huruf
.reserve() -----> sortir kebalik

for(let data of array) {console.log(data);} ----> array bakal misah

ARRAY 2D ,
let arr = [[1,2,3],
          [4,5,6]
          [7,8,9]]

for (let row of array){             =====> buat ngeprint per row
const rowstring = row.join (' ')}   =====> buat ngasih space pernumb sama ngubah array menjadi 1 string


SORT ARRAY NUMBER ONLY
let numb = [1, 5, 4, 2, 3];
numb sort((a,b) => a - b);

SPREAD OPERATOR = ...  ((UNPACK FROM THE ARRAY AND WE CAN COMBINE ANOTHER ARRAY WITH THESE))

let max = Math.max(...numb);  ----> untuk mencari nilai max dari array

let nama = "dara";
let spelling = [...nama] ----> dipisah jadi array per huruf
let spelling = [...nama].join("-"); ----> *** d-a-r-a ***

CARA MENGUBAH BBRP STRING MENJADI ARRAY  ((REST PARAMETERS))

function book (...alphabet) {
    console.log(...alphabet);
}

let alpha1 = "a";
let alpha2 = "b";
let alpha3 = "c";
let alpha4 = "d";

book (alpha1,alpha2);



function book (...alphabet) {
    for (let alpha of alphabet) {
        console.log(alpha); 
    }
}

let alpha1 = "a";
let alpha2 = "b";
let alpha3 = "c";
let alpha4 = "d";

book (alpha1,alpha2,alpha3,alpha4);

======> print per row jadinya

function sum(...numbers){
    let result = 0;
    for (let number of numbers){   ----> LET INI MAKSUDNYA KALAU DI SETIAP NUMBER YANG DIMASUKKIN DI DALAM ARRAY NUMBERS AKAN MELAKUKAN SESUATU
        result += number;
    }
    return result;      --->  / numbers.length   ---->  untuk menghitung rata2
}

let total = sum(50,100);
console.log(`your total is $${total}`)

===> INI TOTALAN

HOW TO CHANGE INPUT STRING TO A NUMBER

let numArr = input.split(",").map(n => Number(n.trim()));

==> dari string diubah jadi array di setiap ","
==> .map untuk mengubah array string menjadi number
==> trim untuk menghapus space di awal dan di akhir

CREATE ELEMENT ---> nambah img baru di js only
let img = doucment.createElement("img");
img.src = "imgofdice/1.png"
document.getElementBy Id("imgresult").appendChild(img);   ---> buat dimunculin di page

CALLBACK    ----->   ngelakuin 2 fungsi dalam 1 line

function hello (callback) {
    console.log("hello");
    callback();
}

function bye (){
    console.log("bye");    
}

hello(bye);  ------>   ngelakuin hello lalu bye


atau 


function sum (callback, x, y){
    result = x + y;
    callback(result);

}

function showresult (result) {
    console.log(result)
}

sum (showresult);


PART OF ARRAY

1. Element ---> Data di dalam array
2. Index ----> urutan data
3. array ----> array itu sendiri

FOR EACH  ----> untuk memisahkan setiap data di array

let arr = [1, 2, 3];
arr.ForEach(display);

funtion display (element) {
    console.log(element);
}


.MAP()    ---> sama kayak for each tapi map ke print ttp dalam bentuk array

.FILTRER()     ----> Buat ngasih syarat dalam array di dalam frungsi

.REDUCE()   -----> mengubah array menjadi 1 element saja dengan mencari max atau mentotal semua ((pake accumulator dan element))

TIMER

setTimeout (function(){
    console.log()
    }, 3000)

    or

setTimeout (functionName, 3000);

ARROW FUNCTION

const hello = (name, age) => {console.log('hello ${name})
                              console.log(`youre ${age} years old)} 
                              
hello ("dara", 18);


OBJECT

const person {
    name: Dara
    age: 18
    hello : function(){console.log("hello aku ${this.name}")};   ---->  kalo mau pake this ngga bisa pake arrow function
    bye : () => console.log("bye!");
}

console.log(person.name)
person.hello();

CONSTRUCTION ----> A bunch of data object

function person(name, age, foodfav){

    this.name = name,
    this.age = age,
    this.foodfav = foodfav,
    this.hello = funtion(){console.log("hi! im ${this.name}")}

}
    const person1 = new person("dara", 18, "nasgor");

    person1.hello();

class product {

    constructor(productname, price){  --->  constructor sebagai parameter
    this.productname: productname
    this.price: price
}
    display() {
    console.log(this.productname);
    console.log(this.price,toFixed(2));
    }

    displaytax {
    return.thisprice + (this.price * tax);
    }

}

const tax = 0.1;

const product 1 = new product ("rinso", 25) 
--->  new untuk menambahkan object ke dalam class

product1.display();
product1.displaytax();

STATIC ----> Buat deklarasiin variabel atau fungsi yang khusus punya classnya. kalo dipanggil harus pake nama class

INHERITANCE  ----> kalo mau manak class, + nya dia bisaa ngasih funvction khusu di class tertentu

class animal {

    alive = true;

    eat(){
    console.log(`The ${this.name} is eating)}

}

class rabbit extends animal {   ----> + nya bisa kita tambahin function yang dikhususin untuk subclass ini
   name = "Rabbit"   ----> kalo udah dikasih nama per subclassnya, ga perlu pakai super
}

SUPER ----> kalo di subclass ga dikasih variable maka dikasih super biar dia bisa akses data yang di constructon

class animal {

    constructor(name,age,speed){
    this.name = name
    this.age = age
    this.speed = speed
    }

    moves(speed){
    console.log(`The ${this.name} is moves at ${speed} mph`);
    }

}
class Rabbit extends animal {

    constructor(name,age,speed){
    super(name,age,speed);

    }

    move(){
    super.moves(this.speed);
    }

}

const rabbit = new Rabbit("rabbit", 12,50);

rabbit.move();



*/




