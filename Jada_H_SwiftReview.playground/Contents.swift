/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit

/*:
 
 - Variables
 
 Create a variable called name and initialize it to the name of your favorite actor, singer, or sports celebrity */
var name: String = "Michael Jackson"
/*:
- Displaying on the screen

Display the contents of name on the screen

 Change the value of name to your name*/
print(name)

name = "Jada"
print(name)

/*:
- Constants
 
Display the contents of name

Create a constant (let instead of var) called language and initialize it to "Swift"

Display the contents of the language constant on screen

Create 3 different constants and initialize them to hold integers of your choice. Name the constants a, b, and c

Create 3 constants that are doubles (they have decimal points) Initialize them with values of your choice. Name the constants d, e, and f*/
print(name)

let language: String = "Swift"
print(language)

// Constants for integers
let a: Int = 8
let b: Int = 2
let c: Int = 3

//Constants for doubles
let d: Double = 3.14
let e: Double = 5.75
let f: Double = 4.5
/*:
- Operators

Create an assortment of statements using the constants that you created that will perform the following actions - then display the equation and the result on the screen.*/
// Addition
print("a + c = " + String(a + c))
print("b + d = " + String(Double(b) + d))

//Subtraction
print("e - f = " + String(e - f))

//Division
print("a / b = " + String(a / b))

//Multiplication
print("e * f = " + String(e * f))
/*:
- Add two constants
 
-                print("a + b = " ) + (a + b)

Addition sample with at least 4 constants

Subtraction sample

Division sample

Multiplication sample*/

/*:
- If Statements
 
Use the following constants to solve the problems :*/
 
let temperature = 90
let raining = true
let time = "Morning"

/*: Write a statement that tells someone to wear shorts if it is over 80 degrees, and jeans if it is less than 80 degrees. Check with the temperature constant

Check the raining constant and tell the user if they need an umbrella or not

Check the time constant and if it is morning tell the user to go to school, if it is afternoon tell the user to go home, and if it is night tell the user to go to bed*/
// Check for raining constant
if raining == true {
    print("You wiil need an umbrella!")
}
else {
    print("You will not need an umbrella.")
}

// Check for time constant
if time == "Morning"{
    print("Go to school.")
}
else if time == "Afternoon"{
    print("Go home.")
}
else if time == "Night"{
    print("Go to bed.")
}
/*:
- Loops

Using a for loop print the numbers from 1 to 10 on screen

Using  a while loop print the numbers from 10 to 1 on screen*/
//Loops through the numbers 1 through 10
for index in 1...10 {
    print(index)
}

// Counts down from 10
var index = 11
while index > 1{
    index = index - 1
    print(index)
}
/*:
- Collections

Create an array that holds five strings

Create a tuple that holds two strings

Using a loop, step through one of the collections you created and print all of the items to the screen*/
// Array
var jewelry: [String] = ["Earring", "Bracelet", "Necklace", "Anklet", "Nosering"]
//Tuple
var art: (String, String) = ("Paint", "Draw")


/*:
- Functions

Create a function that takes two doubles, multiplies them, and returns the result.

Call the function, save the result in the variable "answer". Pass it two of the constants you  creataed (a, b, c, d, e, or f)*/
func multi(num1: Double, num2: Double) -> Double {
    return num1 * num2
}

var answer = multi(num1: d, num2: e)
print(answer)
/*:
- Closures

Create a closure that subtracts one number from another and prints the results, use the closure. You may pass it constants or numbers*/
var subtract = { (num1: Int, num2: Int) -> Int in
    return num1 - num2
}

print(subtract(8, 5))
/*:
- Enums
 
Create an enum that holds the first name of everyone in your group

Create a switch statement based on the enum that will display the birthday of the
selected person

Test it by using your own name*/
enum ourNames{
    case Jose
    case Cristobal
    case Giselle
    case Jada
}

var birthday = ourNames.Jada

switch birthday {
case .Jose:
    print("His birthday is on August 1st.")
case .Cristobal:
    print("His birthday is one July 12th.")
case .Giselle:
    print("Her birthday is on July 8th.")
case .Jada:
    print("Her birthday is on August 2nd.")
}
/*:
- Structure
 
Create a structure called Name that holds a first, middle, and last name and prints them on screen in one line with spaces between them

Create an instance of the Name structure, pass it your name, and use the instance you created to print your  name to the screen*/
struct Name{
    var firstName: String
    var middleName: String
    var lastName: String
    
    func together() {
        let nameTogether = firstName + " " + middleName + " " + lastName
        print(nameTogether)
    }
}

var myName = Name(firstName: "Jada", middleName: "Dyana", lastName: "Harmon")
myName.together()
/*:
- Class
 
Create a class called Coffee that accepts size, caffineated,  cream,  and sugar then prints the order on screen

Create an instance of the class

Use the instance of the class and call the function*/
class Coffee {
    
    var size: String = ""
    var cream: String = ""
    var sugar: String = ""
    var caffine: String = ""
    
    func someCoffee (size: String, cream: String, sugar: String, caffine: String) -> String{
       return("A " + size + " coffee with " + cream + ", " + sugar + ", and " + caffine + ".")
    }
}

var coffeeOrder = Coffee()

var myCoffeeOrder = coffeeOrder.someCoffee(size: "large", cream: "cream", sugar: "sugar", caffine: "decaf")
print(myCoffeeOrder)
