<?

/*

variable use =  $

const use = define("parameter", nilaiconstnya)

INCLUDE - menyimpan script di dalem folder lain dan bisa digunakan ulang untuk folder laim
di file yang mau menggunakan scriptnya diberi - include_once("namafilenya.php")

GET POST ----> buat ngambil variabel dari input
$_GET ----> bakal muncul di url. char limit. tidak secure (buat search bar)
$_POST ----> lebih secure. char unlimited. (buat data penting)

ARRAY
foreach($foods as $food) {
    echo $food . <br>;
}

ARRAY REVERSE ----> harus dijadiin variabel dulu
$reversed = array_reverse($namaarr);     ----> nanti di echo in manual baru bisa muncul

ARRAY COUNT ----> jumlah array
echo count($namaarr);

ARRAY ASOSIATIF (KEY DAN VALUE)

$capitals = array_flip($capitals);    --------> value -> key(dibalik)

$capitals = array("Indonesia" => "Jakarta", 
            "USA" => "Washington",  
            "Turkey" => "Ankara");

foreach($capitals as $key => $value) {
    echo"{$key} = {$value} <br>";
}                 ---------------> buat ngeprint arraynya harus pake ini


$keys = array_keys($capitals);

foreach($keys as $key){
    echo $key . "<br>";
}                -------------> buat ngeprint keys only (kalo mau value tinggal ganti value aja)

ISSET  ----->  nngecek kalo data terisi maka printout akan 1 (true)
EMPTY  ----->  ngecek kalo data masih null maka printout akan 1 (true)
((harus pake if kalo mau echo lain))
bisa buat button clicked juga kayak ((buat nambahin function kalo button clicked))

****Your code will always print "hello {username}" if both fields are set, even if they are empty strings ("").
The isset() function only checks if the variable exists, not if it has a value.*** (((kalo mau ngecek dia punya value apa ngga pake empty)))

if(isset($_POST["idbutton"])){
    functionnya
}

RADIO BUTTON ((sama aja kayak button biasa))

SANITIZE DAN VALIDATE INPUT 

$username = filter_input(INPUT_POST/GET, "idinput", FILTER_SANTIZE_SPECIAL_CHARS);   ----> special chars diapus
$age = filter_input(INPUT_POST/GET, "idinput, FILTER_SANITIZE_NUMBER_INT); ----> ngapus selain angka
$email = filter_input(INPUT_POST, "idinput", FILTER_SANITIZE_EMAIL);  -----> ngapus yang selain email

$age = filter_input(INPUT_POST/GET, "idinput, FILTER_VALIDATE_INT); ----> kalo misal bukan angka bakal dianggap empty
$email = filter_input(INPUT_POST, "idinput", FILTER_VALIDATE_EMAIL);  -----> kalo bukan email bakal dianggap empty
((nanti validate bakal dilanjutin dengan if empty buat echo))

COOKIE -----> menyimpan data di inspect, application, cookie.

setcookie("favfood", "pizza", time() + (86400 * 2), "/")  ----> (key, value, expirednya kapan(2 hari), path(?))
bisa di if isset, kalo masa data tersimpan abis maka dianggap empty

SESSION   ----> buat mempertahankan data meskipun pindah page (((biasanya dipakai untuk akun di sosmed)))

$_SESSION["username"] = $_POST["username"]    ------>   cara menaruh variable di page awal

echo $_SESSION["username"]   ----->  cara manggil variable di page kedua


HEADER    ------> untuk mengarahkan user ke page selanjutnya

header("location = alamatpage.php");

SERVER

foreach($_SERVER as $key => $value){
    echo"{$key} = {$value} <br>";
}    -----> ini untuk ngeprint alamat2 server

if($_SERVER["REQUEST_METHOD"] == "POST"){   
    echo"hello";
}      ----> ini untuk submit button yang lebih efisien (katanya)

HASHING PASSWORD    ----> enkripsi password

$password = "dara090906";

$hash = password_hash($password, PASSWORD_DEFAULT);    ---->  untuk hashing passwordnya

    if(password_verify("dara090906", $hash)){    --->   untuk membandingkan password
        echo"youre logged in!)    
    }
    else {
        echo"incorrect password!"
    }

?>






*/