import UIKit

/*
//var name = "Ted"

//print(name)

//name = "John"

//print(name)

//name = "JOsh"

//print(name)


//Convention notes swift developers use camel case, lowercase first uppercase second word

/*let quote = "And then he tappend on the sign \"believe\" and walked away "

print(quote)

print(quote.count)

print(quote.uppercased())

// Why is one with paranthesis and other not? Apparently one reads data no paranthesis when u ask swift to do something u use paranthesis


//Note this returns boolean values
// This is case sensitve
print(quote.hasPrefix("And then he"))

print(quote.hasPrefix("AND THEN HE"))

print(quote.hasSuffix("walked away"))


let number = 120


// isMultiple(of: ) returns true or false no integer
print(number.isMultiple(of: 3))


let numbers = 0.1 + 0.2

print(numbers)


let a = 1
let b = 2.0

let c = a + Int(b)

let d = Double(a) + b

print(c)

print(d)

var gameOver = false

gameOver.toggle()

print(gameOver)


let celsius = 25.4

let temp = "It is currently \(celsius)° Celsius"

print(temp)


var names = ["John", "Paul", "George", "Ringo"]

let numberZ = [1,2,3,4,5,6,7,8,9,10]


names.append("Jack")

print(names)

//Syntax of an empty array

var score = Array<Int>()
print(score)

score.append(100)
score.append(90)
score.append(80)
score.append(70)
score.append(60)
score.append(50)

print(score)

print(score.count)

score.remove(at: 2)
print(score.count)
print(score)

// Contains u can search for a specefic feature

let favMovies = ["Project hail marry", "star wars", "Dune"]


// this returns true
print(favMovies.contains("star wars"))

var cities = ["LA", "Paris", "Tokyo", "Manila"]

//Ass that to arrays to reverse them
var rcities = Array(cities.reversed())
print(rcities)

print(cities.sorted())

//***************************END****************************/

//**************************Dictionaries********************/


let employee = ["Name" : "Taylor Swift", "Job": "Singer", "Location": "Nashville"]

print(employee)

// Swift is throwing out a warning because string val might not be there
// It is saying are u sure u want to print it might not be there
// what prints out is an optional, which if data is not there will be null
print(employee["Name"])
print(employee["Job"])
print(employee["Location"])

//This calms the errors and returns an unknown string if value is not found

print(employee["Name", default : "Unknown"])
print(employee["Job", default: "Unknown"])
print(employee["Location", default : "Uknown"])
// This also removed the optional() around the printed values


let hasGraduated = ["Josh": true, "Isidoro": false, "Sanskar": true]

print(hasGraduated["Josh"])

print(hasGraduated["Josh", default: false])
// same as before this removed the optional keyword

let Olympics = [2012 : "London", 2016 : "Rio de Janeiro", 2021 : "Tokyo"]

print(Olympics[2012, default : "Unknown"])

// How do u create an empty dictionary:


var heights = [String : Int]()

// How u populate an empty dict with vals

heights["Isidoro"] = 66
heights["Josh"] = 72
heights["Sanskar"] = 70

print(heights)

// No duplicate keys are allowed to exist in swift
// as a result if a key is brught up again it will reqeite the val

// EX:
var archEnemy = [String: String]()

archEnemy["Batman"] = "The Joker"
archEnemy["Messi"] = " Ronaldo"
print(archEnemy)

archEnemy["Batman"] = "Penguin"
print(archEnemy)

print(archEnemy.count)

//**************************SET**************************************//
//

//Syntax of empty set is var people = Set<String>()

var people = Set(["Josh", "Izzy", "Darshan", "Kenneth", "Darshan"])
//Duplicates removed
print(people)

// Sets run faster and remove duplicatrs insertsion uses the insert key word

people.insert("Sanskar")

print(people)

//**********************************ENUM****************************//

//Enum is a data type that lets us define datatypes within
//
//New enum weekday to handle each weekday
// Both syntax works fine
/*enum Weekday {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday

}*/

enum Weekday {
    case Monday, Tuesday, Wednesday, Thursday, Friday
}
var day = Weekday.Monday
print(day)

//Swift assumes u are refering to the same enum for the variable day so no need for weekday enum name anymore
day = .Tuesday

print(day)

//TYOE ANOTATIONS

// let surname = "Lasso" this is type inference, the data is inferred

let surname : String = "Lasso" // type annotation

let Score : Int = 0

let playerName: String = "Roy"

let pi : Double = 3.1416

var isAuthenticated: Bool = true

//Array

var Albums : [String] = ["The Third Law", "Drones"]

//Dictionary

var Names: [String : String] = ["Isidoro" : "Flores", "Johny" : "Vu"]


var Books : Set<String> = Set(["The Odyssey", "The book theif"])

// Syntax for empty array
var teams : [String] = [String]()

// Enum

enum UIStyle {
    
case darkmode, system, light
    
}

var style = UIStyle.system
//After this for style user no longer needs UIStyle cuz swift knows
// that it is referencing the preveiouso enum


var myArray : [String] = ["Apple", "Banana", "Apple","Apple", "Banana", "Apple", "", "Mango", "Strawberry", "Banana", "", "Grape", "Mango", "Pineapple", "Apple", "Kiwi", "", "Strawberry", "Orange", "Grape", "Banana", "", "Kiwi"]


var counted = myArray.count
print("There are a total of \(counted) items in myArrat")

var UniqueItems = Set(myArray).count
 
print("There are a total of \(UniqueItems) unique items in myArrat")




//////////////Condition is true or false

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}
if percentage < 85{
        print("Sorry you failed")
}

if age >= 18{
    print("You are elgiable to vote")
}

// Conditionals can be used with strings aa well in terms of alphabetical order

var ourName = "Dave Lister"
var friendName = "Isidoro Flores"

if ourName < friendName {
print("It's \(ourName) vs \(friendName)")
}
if ourName > friendName {
print("It's \(friendName) vs \(ourName)")
}

var numberz = [1,2,3]

numberz.append(4)

if numberz.count > 3 {
    numberz.remove(at: 0)
}

print(numberz)

var newName = "Isidoro Flores"

//comparing strings with other strings is slow
// compaeing with numners is fasrer however this is in n time
// so we use isemptu for a quciker result

//if newName.count == 0 {
// swift knows that its either true or false so we dont need == true
// this still work s

if newName.isEmpty{
    newName = "Anonymous"
}

print("Welcome \(newName)")


let ageExample = 16

if ageExample >= 18{
    print("You are elgible to vote")
    
}else {
    print("Sorry you cannot vote")
}

// not u can have many else if but only one else
// else is saved for if nothing ELSE WORKS

let a1 = false
let b2  = true

if a1 {
        print("code to run if a1 is true")
} else if b2 {
        print("code to run if b2 is true")
}else{
    print("Code to run if both a1 and b2 are false")
}


//////////////////////////////Using enums wit this

enum transportation {
    case airplane, helicopter, bicycle, car, scooter
}


let transport = transportation.airplane

if transport == .airplane || transport == .helicopter {
        print("Lets fly!")
}else if transport == .bicycle {
    print("Ihope there is a bike path...")
}else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}


// else if can be too verbose and not as simple so we can use case


enum Weather  {
    case sun, rain, wind, snow, unknown
}

var forecast = Weather.sun

switch forecast {
case .sun :
    print("Today's weather is sunny")
case .rain :
    print("take a rain coat!!")
case .wind :
    print("Wear something warm")
case .snow:
    print("It is freezing")
case .unknown :
    print("Our Machines didnt work smh")
}

// ternary conditional the last conditional theres three, if else switches and ? ternary

let age2 = 18

// how does it work it sets age equal to the string left of ? if and only if age is greater than or equal to 18

let canVote = age >= 18 ? "Yes" : "No"

print(canVote)

// you can have it return true or false or strings

let listNames = ["Isidoro", "Darshan", "Johny", "Josh"]

let crewCount = listNames.isEmpty ? "No Crew" : "Our crew count is \(listNames.count)"

print(crewCount)

// gets tricky to check for equalitu but its possible like in this enum

enum Theme {
 case dark
}

let theme = Theme.dark

let background = theme == .dark ? "Black" : "White"

print(background)



let platforms = ["iOS", "MacOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great in \(os)" )
}
// num1 ... num2 counts form num1 included to num2 included
// num1 ..< num2 count from num1 included up to num2 not included
//for i in 1...12 {
  //      print("5 X \(i) = \(5 * i)")
    //for j in 1...12 {
      //  print("5 X \(j) = \(5 * j)")
    //}
    //print()
//}

var lyric = "Haters gonna"
for _ in 1...5 {

lyric += " hate"
}
print(lyric)

var countDown = 10

while countDown > 0 {
    print("\(countDown)...")
    countDown -= 1
}
print("Blast Off!!!!!")


// rolling a 20 sided die

var dice = 0

while dice != 20 {
    dice =  Int.random(in: 1...20)
    print("I rolled a \(dice)")
}


for i in 1...100{
    if i % 3 == 0 && i % 5 == 0{
        print("FizzBuzz")
    }
    else if i % 3 == 0{
        print("Fizz")
    }
    else if i % 5 == 0 {
        print("Buzz")
    }
    else{
        print(i)
    }
}


func showWelcome() {
    print("Welcome to my app!")
    print("This is just to practice function syntax")
    
}

// This prints text
showWelcome()

//This prints () because it prints return value in this case its void
// which means itll orint ()
print(showWelcome())


func printTimesTables(numbers : Int) {

    for i in 1...12{
        print("\(i) x \(numbers) = \(i * numbers)")
    }
    
}


printTimesTables(numbers: 8)

// Naming parameters is important

func printTimesTables(numbers:  Int, end: Int){
    for i in 1...end {
        print("\(i) x \(numbers) = \(i * numbers)")
    }
    
}

printTimesTables(numbers: 5, end: 7)


// Want a function to return data?
// here is the syntax for how to achieve that

// fun nameOfFunction (parameterName: DataType) -> DataType

func rollDice () -> Int {
    
    return Int.random(in: 1...6)
}

// here we have a roll dice function now we can call roll dice whenever we need it

let result = rollDice()

print(result)


func areLettersIdentical(word1: String, word2: String) -> Bool {
    // Old way of writing it
    //let string1 = word1.sorted()
    //let string2 = word2.sorted()
    // u can skip this and compare directly
    
    // return string1 == string2
    
    return word1.sorted() == word2.sorted()
}


print(areLettersIdentical(word1: "Swift", word2: "Swift"))

// lets look at returning multiplel values in an array

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()

print("Name: \(user[0]) \(user[1])")


func getUSER() -> [String: String] {
    [
        "firstName" : "Taylor","LastName" : "Swift"
    ]
}

let userz = getUSER()

print("Name: \(userz["firstName", default: "Anonymous"]) \(userz["LastName", default: "Anonymous"])")

// Yes this works but it can be confusing
// Soltuion use tuples

func getUser2() -> (firstName : String, lastName : String){
    // This is the old way
    //(firstName: "Taylor", lastName : "Swift")
    //new way, swift knows that ur assigning these values to first/lastName
    ("Taylor","Swift")
}

let user2 = getUser2()

// or

let user3 = getUser2()

let firstName = user3.firstName
let lastName = user3.lastName

// or we can do this
// This works as well
let (FirstName, LastName) = getUser2()

print("Name: \(user2.firstName) \(user2.lastName)")
// Tuples tell swift the value will be there ahead of time
// Wheras in a idctionary a defualt is needed, alsi we call value by .,firstName ot .lastName which is safer to use than a string

//If ur given a tuple with no name u can get value through indices, like userz.0 or userz.1

//sWIFT LETS U use defualt values add a defaul mumber and u can call the funciton and change that val or not provide it to usie second defualt valuie

// This means memory doesnt get dealocated
//names.removeAll(keepingCapacity: true)



// How to handle erros

 // So we need make an enum first to hadle different tupes of erros and then we can mvoe from there

enum passwordError: Error {
    case short, obvious
}
// here we have two possible errors short and obvious but it doesnt define what it means only that they exist

// # Step 2
// we need to write a funciton that will trigger the error


func checkPassword(_ password : String) throws -> String {

    if password.count < 5 {
        throw passwordError.short
    }
    if  password == "12345" {
        throw passwordError.obvious
    }
    if password.count < 8 {
        return "Okay"
    } else if password.count < 10 {
        return "Good"
    }else{
        return "Excellent"
    }
}

let string = "PeterSparker28"

// errors handling is usually done with do try and catc h


do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch passwordError.short {
    print("Please choose a stronger password")
} catch passwordError.obvious {
    print("You have used this on ur luggage")
}catch{
    print("There was an error")
}
// u need to write try before calling a function that may return any errors

enum numError : Error {
    case noNegative, outOfBounds, noRoot
}

func findSquareRoot9(_ number : Int) throws -> Int {
    
    if number > 10000 {
        throw numError.outOfBounds
    }
    if number < 1 {
        throw numError.noNegative
    }
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw numError.noRoot
    
}


let number = 100000

do {
    let res = try findSquareRoot9(number)
    print("The square root of \(number) is: \(res)")
} catch{
    print("There was an error: \(error)")
}
*/

///////////////////////CLOSURES//////////////////////
/*func greetUser(){
    print("Hi there")
}

greetUser()

let greetCopy = greetUser
// the parenthisis is an operator that tells swifti hey executre the function

greetCopy()
greetCopy*/

// we can skip creating the function and assign funcitonality to a constant like :

let sayHello = {
    print("Hi there!")
}

sayHello()

//How to create a closure that accepts parameters

let sayHello2 = { (name : String) -> String in
    "Hi \(name)!"
}

// notice in the keyword in signafie the end of the parameter part of this closuer

//Syntax to calling a closur is same
sayHello2("Peter")


// so sorted lets us pass a function into it

let team = ["Gloria" ,"Suzie", "Isidoro", "Josh", "Sanskar"]

let sortedTeam = team.sorted()

print(sortedTeam)

// This is easy but what if we wanted to control the sort?? how can we do that

// sorted allows us to pass a custom sorting function but it must include two parameters and return true

/*func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Isidoro"{
        return true
    } else if name2 == "Isidoro"{
        return false
    }
    return name1 < name2
}

*/
/*let captainFirstTeam = team.sorted(by:captainFirstSorted)

print(captainFirstTeam)


let captain = { (name1: String, name2 : String) -> Bool in
    
    if name1 == "Isidoro"{
        return true
    } else if name2 == "Isidoro"{
        return false
    }
    return name1 < name2
}
    
let captainFirst = team.sorted(by: captain)

print(captainFirst)
*/

// we can write it this way cuz swidt knwos it needs to return bool and accept two strings from the array
//let FTC = team.sorted{ name1, name2 in
   // if name1 == "Suzanne" {
     //   return true
    //} else if name2 == "Suzanne" {
      //  return false
   // }
    //return name1 < name2
//}


// Funcitons as parameters ///////////////////////////////////

// this dunction makes an array using a number generator

/*func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for i in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

// here is my number generates
func generator() -> Int {
    
    return Int.random(in: 1...100)
}

// i made an array rolls of sice 6 with a random numner generatro
let rolls = makeArray(size: 6, using: generator)

print(rolls)



// A function can accept multiple functions

func doImportantWork(first: () -> Void , second : () -> Void, third: () -> Void){
    
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}


doImportantWork{
    print("This is the first work")
    }second: {
        print("This is the second work")
    } third: {
        print("This is the third work")
    }
*/

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


let filtered = luckyNumbers.filter{ $0 % 2 != 0}
let organized = filtered.sorted{$0 < $1}
let mapped = organized.map {"\($0) is a lucky number " }

for i in 0..<organized.count {
    print(mapped[i])
}
*/

////////////////////////STRUCTS//////////////////////////////////////
// Think of Album as a custom data type
// like Int String Double Album
/*struct Album {
    let title : String
    let artist : String
    let year : Int
    
    func printSummary(){
        print("\(title) (\(year))u by \(artist)")
    }
}
let red = Album(title: "Red", artist: "Taylor Swift", year:
2012)

let isThisIt = Album(title: "Is This It", artist: "The Strokes", year: 2001)


print(red.title)
print(isThisIt.title)


red.printSummary()
isThisIt.printSummary()


//////////////////////////////////Initializing a class Syntax

/*class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
    
}

var newGame = Game()

newGame.score += 10 */


//////////////Inheretiance/////////////////////////

/*final will break my code*/
class Employee {
    let hours : Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
}


class Developer : Employee {
    func work (){
        print("I am writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hoursa day, but other times spend hours arguing about whether codeshould be indented using tabs or spaces.")
    }
}

class Manager : Employee {
    func work() {
        print("I am in meetings for \(hours) hours")
    }
}

// Each of the two children class inherets from parent class aka employee class

// this is how to call an instance of a class

let robert = Developer(hours : 8)

let jack = Manager(hours : 10)


robert.work()
jack.work()


// Because developer inherits from parent we can begin to call the function imideiately

jack.printSummary()

// Things get a bit more complicated if u want a child class to cahnge the method a bit

// U mus use override if u dont use override ur code will not run if u use override buyt dont actually change anything ur code wont run


robert.printSummary()

// swiftt knows that if ur child class has a work with a string parameter and ur pareent class has a work with no parameter it does not need override because the two functions are different

// swift does this at compile time, it converts the nam eof the functio and the parameter into a unique signature through a process called name mangling this menas that in compile code the code looks different

//Name mangling is when the compiler takes your simple function name and transforms it into a longer, unique internal name that encodes extra information


// KEYWORD Final means ur class cannot be inherited from it can inherit from other non final classes but not be inheirted from
//rs: if a child class has any custom initializers, it must always call the parent’s initializer after it has finished setting up its own properties, if it has any.
// idk what this means but ill try to lock it in


class Vehicle {
    let isElectric : Bool
    
    init(isElectric : Bool){
        
        self.isElectric = isElectric
    }
}

class Car : Vehicle {
    let isConvertable : Bool
    
    init(isConvertable : Bool, isElectric : Bool){
        self.isConvertable = isConvertable
        super.init(isElectric: isElectric)
    }
}



let teslaX = Car(isConvertable: false, isElectric: true)

//copies are reference types
//this means if u make a copy of a class and change a vlaue in that coppy itll change the orginal class

//A uniquer copy aka a deep copy keeps things unique and we can do that l  ike this
class User {
    var userName = "Anonymous"
    func copy () -> User {
        let user = User()
        user.userName = userName
        
        return user
    }
}

var user1 = User()

var user2 = user1.copy()

user2.userName = "Not Anonymous"


print(user1.userName)
print(user2.userName)

// this is a feature lets us share data across our apps
// A uniquer copy aka a deep copy keeps things unique and we can do that l  ike this


class User1 {
    let id: Int
    init(id : Int){
        self.id = id
        print("User \(id): I'm alive!")
    }
    deinit{
       print("Usser \(id): I'm dead!")
    }
}

var users = [User1]()


for i in 1...3 {
    let user = User1(id: i)
    print("User \(user.id): I am in control")
    users.append(user)
}

print("Loop is finished")
users.removeAll()
print("Array is clear")


class User2 {
    var name = "Paul"
}

var username = User2()

username.name = "Taylor"

username = User2()

print(username.name)


*/


/*class Animal {
    var legs : Int
    
    init(legs : Int){
        self.legs = legs
    }
}

class Dog : Animal {
    
    
    func speak () -> Void {
        print("Bark")
    }
}
class Cat : Animal {
    var isTame : Bool
    
    init(isTame : Bool, legs: Int){
        self.isTame = isTame
        super.init(legs : legs)
    }
    
    func speak() -> Void {
        print("Meow")
    }
}

class Corgi : Dog {
    
    override func speak(){
        print("Woof")
    }
}
class Poodle : Dog{
    override func speak(){
        print("Snork")
    }
}

class Persian : Cat {
    override func speak(){
        print("Purrr")
    }
}
class Lion : Cat {

    override func speak(){
        print("ROAR")
    }
}

*/
 
// Protocols and extensions///////////////////////



// Protocols let us define a series of methods and properties that we want to use but they dont implimnet them they just say these properties and methods must exist
// lets look at the syntax


// we will define a vwhicle protocal

/*protocol Vehicle {
    func estimateTime(for distance : Int) -> Int
    func travel(distance: Int)
}
*/
// we create a protocol with the portocol keyword

// we list methods for this protocol to work
// we onlly specify method names and paramaeters as well as return type we can also have them listed as throwing or mutatting

// now we can design types that work with the protocol
// we can use this top


/*protocol Vehicle {
    
    func estimateTime(for distance : Int) -> Int
    func travel(distance: Int)
}

// Functions must be exaclty as the protocol defined them
//or else swift will throw an error

struct Car : Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    
    func openSunroof(){
        print("Its a nice day!")
    }
}


struct Bike : Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance/10
    }
    
    func travel(distance: Int) {
        print("I am cycling \(distance) kilometers today")
    }
    
}

// original was func commute(distance: Int, using vehicle : Car)
// But we can instead pass the protocol and itll work
func commute(distance: Int, using vehicle : Vehicle){
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow ill try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}


let car = Car()

commute(distance: 100, using: car)

let bike = Bike()

commute(distance: 50, using: bike)

// U can pass different structs into the same methods!!!!!!!!!
// That is what protocolels do!!

// Instrad of saying this parameter must be a car  we can say this parameter can be anything at all as long as it is able to estimate distance and move to  NEW LOCATION

*/


// U can write protocolsl to describe properties
//type annotation must be used because we cant define just like we cannot finiosh the method her
/*
protocol Vehicle {
    var name : String { get }
    var currentPassangers : Int { get set }
    func estimateTime(for distance : Int) -> Int
    func travel(distance: Int)
}

// This adds two pproperties a string name must be readable, can be a constant or a computer property with a getter

//the ineget current passanger this must read and write and it might be a computed property with a getter or a setter


// how does this change the car class lets find out

class Car : Vehicle {
    
    let name = "Car"
    var currentPassangers = 1
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    
    func openSunroof(){
        print("Its a nice day!")
    }
    
}

struct Bike : Vehicle {
    let name = "Bike"
    var currentPassangers = 1 // we used get set cant be constant
    func estimateTime(for distance: Int) -> Int {
        distance/10
    }
    
    func travel(distance: Int) {
        print("I am cycling \(distance) kilometers today")
    }
    
}


// Now the protocol requires two methods and two properties

func getTravelEstimates (using vehicles: [Vehicle], distance : Int){
    for vehicle in vehicles{
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
let bike = Bike()

getTravelEstimates(using: [car, bike], distance: 150)

*/

/*Tip: You can conform to as many protocols as you need, just by listing them one by one
separated with a comma. If you ever need to subclass something and conform to a protocol,
you should put the parent class name first, then write your protocols afterwards.
*/


//How to use opaque return types
// We cant return two equitable because sift doesnt know wht data type we are using in our funciton
// even if we know irll be two ints the swift compiler doesnt know thats why we can fix this by using the some keyword

func getRandomNumber() -> some Equatable {
    Int.random(in : 1...6)
}

func getRandomBool () -> some Equatable {
    Bool.random()
}


// both int and bool  conform to the equitable swift protocol which allows ua ro so this

print(getRandomBool() == getRandomBool())



//Extensions let us extend types, including apples with more function ality



var quote = " The truth is rarely pure and never simple> "

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
}

////////////////// wHAT DOES THE ABOVE SYNTAX SHOW///


//1. We start with the extension key word, it tells swift u want to ad funcitonality to an existing type

//2. we want to add funcionatly to type String

//3. we open a brace and all the code is to add functionality to string

//4. we added a new method called trimmed, and inside thato we called trmming
//5. notice the self keyword thats because we return back the current string

quote.trim()

let trimmed = quote.trimmed()


print(trimmed)

// why does this beat global functions???

// well Xcode adds exrra funcitonality

//When you type quote. Xcode brings up a list of methods on the string, including all the
//ones we add in extensions. This makes our extra functionality easy to find.

/*Writing global functions makes your code rather messy – they are hard to organize and
 hard to keep track of. On the other hand, extensions are naturally grouped by the data
 type they are extending.*/

/*Because your extension methods are a full part of the original type, they get full access
 to the type’s internal data. That means they can use properties and methods marked
 with private access control, for example*/




let guests = ["Mario, Luigi, Mark, Josh"]

extension Array {
    var isNotEmpty: Bool {
        !isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest counts is \(guests)")
}



extension Collection {
    var isNotEmpty : Bool {
        isEmpty == false
    }
}


// We can now call the function to any datatype that conforms to the protocol collections, so sets dicitonaries stacks arrays etc


// This is extremely powerful and leads into a concept apples called protocol oriented programming


protocol Person {
    var name : String{ get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

struct Employee : Person {
    let name : String
    
}


let taylor = Employee(name : "Taylor Swift" )
taylor.sayHello()





/// Protocol extension on in Int

extension Numeric {
    func squared() -> Self {
        self * self
    }
}


let wholenum = 8

print(wholenum.squared())

// What if we wantd to extend this squared feature to double??
// we can create another extension but we can extend numeric so it works for both


// we needed to change into to Self to tell our funciton to conform to any data type

let doubleNum = 3.5

print(doubleNum.squared())


/// NOTE Self and self mean different things, Self is current type and self is current value
// theres a swift protocol called comparable that can compare towo objects and determins in which ordere they should be org anixed in


struct User : Equatable, Comparable {
    let name : String
    
}

func <(lhs: User, rhs: User) -> Bool{
    lhs.name < rhs.name
}

let user1 = User(name : "Taylor")
let user2 = User(name : "Swift")

print(user1 == user2)
print(user2 == user1)
print(user1<user2)
print(user1<=user2)



/// How to handle missing data witth optional

let opposites = [
    "Mario" : "Warrio",
    "Luigi" : "Waluigi"
]

let peachOpposite = opposites["Peach"] // wrong btw


// Swift likes predictable code so inorder for us to use optionals swift wants us to look inside before we use the value, this is called unwrapping and we have two ways of doin this

//first method of unwrapping optionals is called if let

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// This is iflet syntax
// it is very common in swift but how does it work??

//first it reads the optional value from the dictionary

// if the optinal exists it gets unwrapped whoch means it gets placed inside marioOpposite

// the condition suceeded so we are able to read insdie the brackets


// Summary if let reads looks for optinal if its there it unwraps it and executes the body


var userName : String? = nil

if let unwrapped = userName {
    print("We got a user and their name is: \(unwrapped)")
} else {
    print("No users yet")
}



var number : Int? = nil

// this doesnt workprint(number.squared())
//squared only accepts non optional ints


///This is how it would work
///

if let unwrappedNumber = number {
    print(number?.squared())
}
/// okay so what is happening here???
///
///  in memory 8 bits for an int with an adidiotnal  bit as a discriminaiton tag
/// inside this body we have a shadow whoch is a seperate constant with the value of our outer optional
///


/// How to unwrap optionals with guard
///


//SYNTAX LOOKS LIKE THIS

func printSquare(of number : Int?) {
    guard let number = number else{
        print("Missing input")
       
/// 1: We *must* exit the function here
        return
    }
    
/// Number is still *available* after guard
    print("\(number) x \(number) is  \(number * number)")
}

// gurad lelt checks the input to see if theyre valid
// if not then we have an early return and exit out of the funcction

// if check passes optional value gets stored and function continuses executing




/// How to unwrap coniditonals with nil coalecing
///
///

let captains = [
    
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]


let newCap = captains["Serenity"] ?? "N/A"



let names = ["Arya", "Bran", "Robb", "Sansa"]


let chosen = names.randomElement()?.uppercased() ?? "No one"

print("Next in line : \(chosen)")



enum UserErro : Error {
    case badID, networkFailed
}

func getUserID (id: Int)throws -> String {
    throw UserErro.networkFailed
}

if let user  = try? getUserID(id: 28) {
    print("User: \(user)")
}
