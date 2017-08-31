/*:
 ## Swift #2 (Functions)
 - - -
 */
/*:
 - Callout(Hands-On #2.0):
 
 */

func printGreeting() {
    print("Hello, world")
}

printGreeting()


/*:
 - Callout(Hands-On #2.1):
 Create a function that prints a more personal
 */
func printPersonalGreeting(name: String) {
    print("Hello, \(name)")
}

printPersonalGreeting(name: "Bob")


/*:
 - Callout(Hands-On #2.2):
 External and internal parameter names.
 */



/*:
 - Callout(Hands-On #2.3):
 You can use named parameters or not (you should use named parameters)
 */
func printPersonalGreeting2(_ name: String) {
    print("Hello, \(name)")
}

printPersonalGreeting2("Alice")


/*:
 - Callout(Hands-On #2.4):
 A variadic parameter takes zero or more input values for its argumnent. Functions can have only one variadic parameter, and it should typically be the final parameter in the list.
 */
func printPersonalGreetings(names: String...) {
    for name in names {
        print("Hello \(name)!")
    }
}

printPersonalGreetings(names: "Alex", "Chris", "Drew")



/*:
 - Callout(Hands-On #2.5):
 Parameters can take default values. Default values should be placed at the end of the function's parameter list. If a parameter has a default value you can omit that argument when calling the function.
 */
func divisionDescription(forNumerator num: Double,
                         andDenominator den: Double,
                         withPunctuation punctuation: String = ".") {
    print("\(num) divided by \(den) equals \(num / den)\(punctuation)")
}

divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!")



/*:
 - Callout(Hands-On #2.6):
 Returns from a function.
 */
func divisionDescription2(forNumerator num: Double,
                          andDenominator den: Double,
                          withPunctuation punctuation: String = ".") -> String {
    return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
}


print(divisionDescription2(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!"))


/*:
 - Callout(Hands-On #2.7):
 Swift allows nested functions.
 */



/*:
 - Callout(Hands-On #2.8):
 Swift functions can return tuples.
 */



/*:
 - Callout(Hands-On #2.9):
 Swift functions can return optionals.
 */

