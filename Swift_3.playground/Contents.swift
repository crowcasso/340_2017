/*:
 ## Swift #3 (Closures)
 [Closures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html) are discrete bundles of functionality that can be used to accomplish specific tasks. Functions are a special case of closures, functions are named closures. Closures allow you to write a "function-like" construct without having to give it a name and a full function declaration. This makes closures easy to pass around in function arguments and returns.
 - - -
 */
/*:
 Swift’s standard library provides a method called `sorted(by:)`, which sorts an array of values of a known type, based on the output of a sorting closure that you provide. Once it completes the sorting process, the `sorted(by:)` method returns a new array of the same type and size as the old one, with its elements in the correct sorted order. The original array is not modified by the `sorted(by:)` method.
 */
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
/*:
 - Callout(Hands-On #3.0):
 One way to provide the sorting closure is to write a normal function of the correct type, and to pass it in as an argument to the `sorted(by:)` method.
*/
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)
print("3.0: \(reversedNames)")


/*:
 - Callout(Hands-On #3.1):
 This is a callout
 */
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print("3.1: \(reversedNames)")


/*:
 - Callout(Hands-On #3.2):
 Because the sorting closure is passed as an argument to a method, Swift can infer the types of its parameters and the type of the value it returns.
 */
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print("3.2: \(reversedNames)")


/*:
 - Callout(Hands-On #3.3):
 Single-expression closures can implicitly return the result of their single expression by omitting the return keyword from their declaration, as in this version of the previous example:
 */
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print("3.3: \(reversedNames)")


/*:
 - Callout(Hands-On #3.4):
 Swift automatically provides shorthand argument names to inline closures, which can be used to refer to the values of the closure’s arguments by the names `$0`, `$1`, `$2`, and so on.
 */
reversedNames = names.sorted(by: { $0 > $1 } )
print("3.4: \(reversedNames)")


/*:
 - Callout(Hands-On #3.5):
 Swift’s String type defines its string-specific implementation of the greater-than operator (`>`) as a method that has two parameters of type `String`, and returns a value of type `Bool`. This exactly matches the method type needed by the `sorted(by:)` method. Therefore, you can simply pass in the greater-than operator, and Swift will infer that you want to use its string-specific implementation
 */
reversedNames = names.sorted(by: >)
print("3.5: \(reversedNames)")


/*:
 If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long, it can be useful to write it as a trailing closure instead. A trailing closure is written after the function call’s parentheses, even though it is still an argument to the function. When you use the trailing closure syntax, you don’t write the argument label for the closure as part of the function call.
 */
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}



/*:
 - Callout(Hands-On #3.6):
 The string-sorting closure from the Closure Expression Syntax section above can be written outside of the sorted(by:) method’s parentheses as a trailing closure.
 */
reversedNames = names.sorted() { $0 > $1 }
print("3.6: \(reversedNames)")


/*:
 - Callout(Hands-On #3.7):
 If a closure expression is provided as the function or method’s only argument and you provide that expression as a trailing closure, you do not need to write a pair of parentheses () after the function or method’s name when you call the function.
 */
reversedNames = names.sorted { $0 > $1 }
print("3.7: \(reversedNames)")



/*:
 Higher-order functions take at least one function as in input. You've already worked with one: `sorted(by:)`. Let's take a look at three more: `map(_:)`, `filter(_:)`, and `reduce(_:combine:)`.
 */
/*:
 - Callout(Hands-On #3.8):
 `map(_:)` is a function that you can use to transform an array's contents. You map an array's contents from one value to another and put these new values into a new array. Because `map(_:)` is a higher-order function, you provide it with another function that tells it how to transform the array's contents.
 */
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)



/*:
 - Callout(Hands-On #3.9):
 `filter(_:)` like `map(_:)`, takes a closure expression as an argument. Its purpose is to filter an array based upon some criteria. The resulting array will contain the values of the original array that passed the test.
 */
let bigNumbers = numbers.filter { (number) -> Bool in
    return number > 100
}
print(bigNumbers)

/*:
 Alternate notation.
 */
let bigNumbers2 = numbers.filter { $0 > 100 }
print(bigNumbers2)



/*:
 - Callout(Hands-On #3.10):
 `reduce(_:combine:)` reduces the values in the collection to a single value that is returned from the function.
 */
let totalNumbers = numbers.reduce(0) {
    (accum, number) -> Int in
    return accum + number
}
print(totalNumbers)
