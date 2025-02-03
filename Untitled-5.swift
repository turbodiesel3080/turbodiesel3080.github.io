let MaxUser = 32
var NumeroCompte:Int = 0
var Name = Array(repeating:"", count:(MaxUser + 1))
var PassWord = Array(repeating:"", count:(MaxUser + 1))
var NameTemporaire:String = ""
var PassWordTemporaire:String = ""
var Ecrire:String = ""
var CounterFunction:Int = 0
var Function1:Int = 0
var Function2:Int = 0
var Counter:Int = 0
var Prog:Int = 1
let MSG1:String = "Bonjour, que voulez-vous faire?"
let MSG2:String = "Entree invalide"
let MSG3:String = "Maximum d'utilisateur atteint"
let MSG4:String = "Choissez un nom d'utilisateur"
let MSG5:String = "Nom d'utilisateur deja pris"
let MSG6:String = "Votre compte a ete creer avec succes"
let MSG7:String = "Choissez votre mot de passe"
let MSG8:String = "tapez votre nom d'utilisateur"
let MSG9:String = "tapez votre mot de passe"
let MSG10:String = "Nom d'utilisateur ou mot de passe incorrecte!"
let MSG11:String = "Connexion reussi"


while Prog == 1 { 
while CounterFunction == 0 {   //0-------------------0------------------------0--------------------------0
NameTemporaire = ""
PassWordTemporaire = ""
print(MSG1)
print("Inscrire 1 pour se connecter")
print("Inscrire 2 pour s'inscrire")
print("Inscrire 3 pour quitter l'application")
if let Ecrire = readLine(){
if Ecrire == "1"      {
CounterFunction = 1   }   
else if Ecrire == "2" {
CounterFunction = 2   }
else if Ecrire == "3" {
CounterFunction = 666 }                   
else {
print(MSG2)
}}}


while CounterFunction == 2 {    //2------------2---------------------2-----------------2-----------------2----------------2-
NumeroCompte = 0
Counter = 0
Function2 = 0

while Function2 == 0 {   // function2 = 0 = verifier si max user atteint
if Name[Counter] != "" && Counter < MaxUser{
Counter += 1    }
else if Name[Counter] == "" {
Function2 = 1
NumeroCompte = Counter }                               // user dispo
else {
print(MSG3)
CounterFunction = 0
Function2 = 10                // max user atteint
}}

while Function2 == 1 { // verifier si la personne a creer un nom d'utilisateur
print(MSG4)
Counter = 0
if let Ecrire = readLine() {
if Ecrire != "" {
NameTemporaire = Ecrire
Function2 = 2 }
else {
print(MSG2)
}}}

while Function2 == 2 {  //verifier si le nom d'utilisateur est deja utilisé
if NameTemporaire != Name[Counter] && Counter < MaxUser {
Counter += 1 }  
else if NameTemporaire == Name[Counter] {
print(MSG5)
Function2 = 1 } // nom d'utilisateur deja pris
else {
Name[NumeroCompte] = NameTemporaire
Function2 = 3 // nom d'utilisateur OK
CounterFunction = 10
print(MSG7)  
}}

while Function2 == 3 { // creation du mot de passe (facultatif)
if let Ecrire = readLine(){
PassWord[NumeroCompte] = Ecrire
print(MSG6)
CounterFunction = 3 // fonction 3 = connectee dans l'appli
Function2 = 0
}}}


while CounterFunction == 1 { // 1------1--------1------1----------1---------1--------1-----------1-
NumeroCompte = 0
Counter = 0
Function1 = 0

while Function1 == 0 {         // entrer nom d'utilisateur
print(MSG8)           
if let Ecrire = readLine() {
if Ecrire != "" {
NameTemporaire = Ecrire
print(MSG9)
if let Ecrire = readLine() {  // entrer mot de passe
PassWordTemporaire = Ecrire
Function1 = 1 }
else {                        // la personne n'a pas entrer de nom d'utilisateur
print(MSG2) 
}}}}

while Function1 == 1 { // valider nom d'utilisateur
if NameTemporaire != Name[Counter] && Counter < MaxUser {
Counter += 1 }  
else if NameTemporaire == Name[Counter] {
NumeroCompte = Counter
Function1 = 2 }         // nom d'utilisateur OK
else {
print(MSG10)            // connexion echouer
Function1 = 0 }} 

while Function1 == 2 {  // valider mot de passe
if PassWordTemporaire == PassWord[NumeroCompte] {
print(MSG11) 
CounterFunction = 3     // MDP OK
Function1 = 0 }
else {
print(MSG10)      
Function1 = 0         // connexion echouer
}}} 

while CounterFunction == 3 {
print("pour tester prog, retour au menu principal") // counterfunction 3 a coder
CounterFunction = 0
}
} // fin du programme {} [Counter]"" < MaxUser 





