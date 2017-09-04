/*:
 ## Swift #0 (Quick Introduction to Swift)
 - - -
 */
/*:
[About Swift](https://swift.org/about/)
 
Swift is a general-purpose programming language built using a
modern approach to safety, performance, and software design
patterns.
 
The goal of the Swift project is to create the best available
language for uses ranging from systems programming, to mobile
and desktop apps, scaling up to cloud services. Most importantly,
Swift is designed to make writing and maintaining correct
programs easier for the developer. To achieve this goal, we
believe that the most obvious way to write Swift code must
also be:

* Callout(Safe): The most obvious way to write code should also behave
in a safe manner. Undefined behavior is the enemy of safety,
and developer mistakes should be caught before software is
in production. Opting for safety sometimes means Swift will
feel strict, but we believe that clarity saves time in the
long run.

 
* Callout(Fast): Swift is intended as a replacement for C-based languages
(C, C++, and Objective-C). As such, Swift must be comparable to
those languages in performance for most tasks. Performance must
also be predictable and consistent, not just fast in short bursts
that require clean-up later. There are lots of languages with
novel features — being fast is rare.

 
* Callout(Expressive): Swift benefits from decades of advancement in computer
science to offer syntax that is a joy to use, with modern features
developers expect. But Swift is never done. We will monitor language
advancements and embrace what works, continually evolving to make
Swift even better.
*/
/*:
## Features

Swift includes features that make code easier to read and write,
while giving the developer the control needed in a true systems
programming language. Swift supports inferred types to make code
cleaner and less prone to mistakes, and modules eliminate headers
and provide namespaces. Memory is managed automatically, and you
don’t even need to type semi-colons. Swift also borrows from other
languages, for instance named parameters brought forward from
Objective-C are expressed in a clean syntax that makes APIs in Swift
easy to read and maintain.
 
The features of Swift are designed to work together to create a
language that is powerful, yet fun to use. Some additional features
of Swift include:
 
 - Closures unified with function pointers
 - Tuples and multiple return values
 - Generics
 - Fast and concise iteration over a range or collection
 - Structs that support methods, extensions, and protocols
 - Functional programming patterns, e.g., map and filter
 - Powerful error handling built-in
 - Advanced control flow with `do`, `guard`, `defer`, and `repeat` keywords
*/
/*:
## Safety
 
Swift was designed from the outset to be safer than C-based languages,
and eliminates entire classes of unsafe code. Variables are always
initialized before use, arrays and integers are checked for overflow,
and memory is managed automatically. Syntax is tuned to make it easy
to define your intent — for example, simple three-character keywords
define a variable (`var`) or constant (`let`).
 
Another safety feature is that by default Swift objects can never be
`nil`, and trying to make or use a `nil` object will results in a
compile-time error. This makes writing code much cleaner and safer, and
prevents a common cause of runtime crashes. However, there are cases
where `nil`is appropriate, and for these situations Swift has an
innovative feature known as optionals. An optional may contain `nil`,
but Swift syntax forces you to safely deal with it using `?` to indicate
to the compiler you understand the behavior and will handle it safely.
*/
/*:
## Types in Swift
 
Swift types can be arranged into three basic groups:
structures, classes, and enumerations.

All three can have
  - properties: values associated with a type

  - initializers: code that initializes an instance of a type
 
  - instance methods: functions specific to a type that can be
     called on an instance of that type

   - class or static methods: functions specific to a type that
     can be called on the type itself
 
Primitive data types (numbers, booleans, etc.) are implemented
as structures. Which means they have properties, initializers,
and methods of their own. They can also conform to protocols
and be extended.
 
 - Numbers: `Int`, `Float`, `Double`
 - Boolean: `Bool`
 - Text: `String`, `Character`
 - Collections: `Array<T>`, `Dictionary<K:Hashable, V>`, `Set<T: Hashable>`

A key feature of Swift is optionals. An optional allows you to
store either a value of a particular type or no value at all.
- - -
*/
/*:
 - Callout(Hands-On #0.0):
 Learn more about creating and using variables in Swift.
 */
var helloStr : String = "Hello, world"
let number0 : Int = 42
/*:
 - Callout(Hands-On #0.1):
 What is the difference between `var` and `let`?
 */
// var is a variable
helloStr += "!"
print(helloStr)

// let is a constant
// number0 = 12  // <<-- This throws an error

/*:
 - Callout(Hands-On #0.2):
 Learn about type inference (and how to specify type).
 */
var 

/*:
 ## Collection Types
 Swift offers three collections: arrays, dictionaries, and sets.
 */
/*:
 - Callout(Hands-On #0.3):
 An array is an ordered collection of elements. Arrays can contain elements of any type: a standard type, a structure, or a class. Arrays are strongly typed.
 */
var myArray : Array<Int>
myArray = [1, 2, 3, 4, 5, 6]
print(myArray)
print(myArray.count)

myArray.append(7)
print(myArray)

var myArray2 = [Int]()
print(myArray2)

var myArray3 = [10, 11, 12, 9, 8, 7]
print(myArray3)

/*:
 - Callout(Hands-On #0.4):
 There is a shorthand syntax for declaring arrays.
 */


/*:
 - Callout(Hands-On #0.5):
 A dictionary is an unordered collection of key-value pairs. The values can be of any type. The keys can be of any type, but they must be unique (specifically, the keys must be hashable).
 */


/*:
 - Callout(Hands-On #0.6):
 There is a shorthand syntax for declaring dictionaries.
 */


/*:
 - Callout(Hands-On #0.7):
 A set is similar to an array in that is contains a number of elements of a certain type. However, sets are unordered, and the members must be unique as well as hashable.
 */


/*:
 ## Initializers, Properties, and Instance Methods
 */
/*:
 - Callout(Hands-On #0.8):
 Initializers are responsible for initializing the contents of a new instance of a type.
 */
var num2 = Int()
print(num2)

var bool2 = Bool()
print(bool2)


/*:
 - Callout(Hands-On #0.9):
 A property is a value associated with an instance of a type.
 */


/*:
 - Callout(Hands-On #0.10):
 An instance method is a function that is specific to a particular type and can be called on an instance of that type.
 */


/*:
 ## Optionals
 */
/*:
 - Callout(Hands-On #0.11):
 Swift types can be optional, which is indicated by appending `?` to any type name. An optional lets you express the possibility that a variable may not store a value at all. The value of an optional will either be an instance of the specified type or `nil`.
 */
var num3 : Int?
num3 = 78
print(num3!)

/*:
 - Callout(Hands-On #0.12):
 Before you can read the value of an optional variable, you must address the possibility of its value being `nil`. This is called unwrapping the optional.
 */


/*:
 - Callout(Hands-On #0.13):
 A safer way to unwrap an optional is optional binding. Optional binding works within a conditional if-let statement: You assign the optional to a temporary constant of the corresponding of the corresponding non-optional type.
 */


/*:
 ## Loops and String Interpolation
 Swift has all the control flow statements that you are familiar with from other languages: `if-else`, `while`, `for`, `for-in`, `repeat-while`, and `switch`. Enclosing paratheses are not necessary, but braces are required on clauses.
 */
/*:
 - Callout(Hands-On #0.14):
 Swift 3 discontinued the use of the traditional C-style for loop (and increment/decrement).
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8]

/*:
 - Callout(Hands-On #0.15):
 The most direct route would be to enumerate the items.
 */
for i in 0..<numbers.count {
    print(numbers[i])
}

for num in numbers {
    print("The number is \(num) plus \(num + 1)")
}

/*:
 - Callout(Hands-On #0.16):
 What if you wanted the index of each item?
 */


/*:
 - Callout(Hands-On #0.17):
 You can use tuples with dictionaries.
 */
let nameByParkingSpace = [13: "Alice", 27: "Bob"]


/*:
 - Callout(Hands-On #0.18):
 Use string interpolation to build useful strings.
 */


/*:
 ## Enumerations and the Switch Statement
 */
/*:
 - Callout(Hands-On #0.19):
 An enumeration is a type with a discrete set of values.
 */


/*:
 - Callout(Hands-On #0.20):
 Swift has a powerful switch statement that is great for matching on enum values. The cases for a switch statement must be exhaustive.
 */


/*:
 - Callout(Hands-On #0.21):
 Swift enums can have raw values associated with their cases.
 */

