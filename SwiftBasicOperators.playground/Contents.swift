import UIKit

var greeting = "Hello, playground"
let welcome = "Chapter 2"

print(welcome)

//“You can compare two tuples if they have the same type and the same number of values. Tuples are compared from left to right, one value at a time, until the comparison finds two values that aren’t equal. Those two values are compared, and the result of that comparison determines the overall result of the tuple comparison. If all the elements are equal, then the tuples themselves are equal. For example:”

(1, "car") < (2, "bikes")  // true because 1 is less than 2; "car" and "bikes" aren't compared.


(3, "apple") < (3, "bird") //If the first letter differs, as is the case with apple and bird (a < b), then it will just stop there, and return the appropriate result without looking at the rest of the string.

(3, "cars") < (3, "bikes") // as 3 is equals to 3, the comparison now takes place between the second items of both tuples. As c in "car" is not less than b in "bikes" (i.e c > b), false is returned.

(3, "bikes") < (3, "car") // true because b < c.

(3, "bikes") == (3, "bikes")

//you can compare two tuples of type (String, Int) because both “String and Int values can be compared using the < operator. In contrast, two tuples of type (String, Bool) can’t be compared with the < operator because the < operator can’t be applied to Bool values.

("blue", -1) < ("purple", 1)        // OK, evaluates to true
//("blue", false) < ("purple", true)  // Error because < can't compare Boolean values”


//“The Swift standard library includes tuple comparison operators for tuples with fewer than seven elements. To compare tuples with seven or more elements, you must implement the comparison operators yourself.”

//“Ternary Conditional Operator
//The ternary conditional operator is a special operator with three parts, which takes the form question ? answer1 : answer2. It’s a shortcut for evaluating one of two expressions based on whether question is true or false. If question is true, it evaluates answer1 and returns its value; otherwise, it evaluates answer2 and returns its value.”



//here is an example. If a students has full attendace in class, 10 graceMarks will be added to his marks obtained in exam, otherwise marks will remain same.

let marksObtained = 70

let fullAttendance = true

let totalMarks = marksObtained + (fullAttendance ? 10 : 0)

print(totalMarks)

//“The ternary conditional operator provides an efficient shorthand for deciding which of two expressions to consider. Use the ternary conditional operator with care, however. Its conciseness can lead to hard-to-read code if overused. Avoid combining multiple instances of the ternary conditional operator into one compound statement.”


//Nil-Coalescing Operator
//The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that’s stored inside a.

//The nil-coalescing operator is shorthand for the code below:

//a != nil ? a! : b

//The code above uses the ternary conditional operator and forced unwrapping (a!) to access the value wrapped inside a when a isn’t nil, and to return b otherwise. The nil-coalescing operator provides a more elegant way to encapsulate this conditional checking and unwrapping in a concise and readable form.”

//“The example below uses the nil-coalescing operator to choose between a default color name and an optional user-defined color name:”

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"




//Range Operators:


//“Closed Range Operator
//The closed range operator (a...b) defines a range that runs from a to b, and includes the values a and b. The value of a must not be greater than b.”

for i in 1...10{
    print(2,"* \(i) = \(i*2)")
    
}

//“Half-Open Range Operator
//The half-open range operator (a..<b) defines a range that runs from a to b, but doesn’t include b. It’s said to be half-open because it contains its first value, but not its final value. ”

print("\n")
for i in 1..<10{
    print(2,"* \(i) = \(i*2)")
}


//“One-Sided Ranges
//The closed range operator has an alternative form for ranges that continue as far as possible in one direction—for example, a range that includes all the elements of an array from index 2 to the end of the array. In these cases, you can omit the value from one side of the range operator. This kind of range is called a one-side”
print("\n")

let fruits = ["apples","bananas","grapes","mangoes"]

for i in fruits[1...]{
    print(i)
}

print("\n")

for i in fruits[...2]{
    print(i)
}

print("\n")

//“The half-open range operator also has a one-sided form that’s written with only its final value. Just like when you include a value on both sides, the final value isn’t part of the range. For example:”
for i in fruits[..<2]{
    print(i)
}

//“You can also check whether a one-sided range contains a particular value, as shown in the code below.
let marksRange = ...98
marksRange.contains(78)
marksRange.contains(100)

/*
Logical Operator:

 Logical Not( !a )
 Logical AND( && )
 Logical OR( || )

 */

//Combining Logical Operators
let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

print("\n")
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//Explicit Parentheses
//It’s sometimes useful to include parentheses when they’re not strictly needed, to make the intention of a complex expression easier to read. In the door access example above, it’s useful to add parentheses around the first part of the compound expression to make its intent explicit:

print("\n")
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
