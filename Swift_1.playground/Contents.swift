/*:
 ## Swift #1 (Useful Swiftisms)
 - - -
 */
/*:
 - Callout(Hands-On #1.0):
  Requiring you, the programmer, to decide how to convert variables in order to do math between different types is another feature that distiguishes Swift. This requirement is in favor of safety and correctness. Swift code that requires math between numbers of different types will be more verbose, but it will be more clear about what conversions are taking place. The increase in verbosity will make it easier for you to reason about and maintain the code doing the math.
 */
var a = 12
var b = 12.0

//let c = a + b
//print(c)


/*:
 - Callout(Hands-On #1.1):
 A [range](https://developer.apple.com/reference/swift/range) is an interval of values, defined by its lower and upper bounds. You create ranges with the two range operators: `..<` for half-open ranges that do not include their upper bound, and `...` for closed ranges that include both bounds.
 */
var range1 = 0...10
var range2 = 0..<10
var range3 = 0.0..<10.0



/*:
 - Callout(Hands-On #1.2):
  A tuple is a finite grouping of two or more values that are deemed by the developer to be logically related. The different values are grouped as a single, compound value. The result of this grouping is an ordered list of elements.
 */
let value1 = 510675
let value2 = "Bob"
var student = (value1, value2)
print(student)
print(student.0)

var student2 = (id: value1, name: value2)
print(student2)
print(student2.id)



