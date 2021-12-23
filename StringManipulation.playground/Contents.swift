import UIKit

var name = "Emre"
var lastName = "Yasa"

//Appends the given string to this string.
name.write(to: &name)

//Writes the string into the given output stream.
name.write("Yasa")

var test = "test"
//Appends the given string to this string.
name.append(test)

//Appends the given character to the string.
test.append("1")

test.append(contentsOf: "2")
//Appends the characters in the given sequence to the string.
test.append(contentsOf: ["3","4"])
test.reserveCapacity(5)

var proverb = "You have to expect things of yourself before you can do them."
//Inserts a new character at the specified position.
proverb.insert("*", at: proverb.index(proverb.startIndex, offsetBy: 3))

var huriye = "Huriye"
//array Inserts a new element into the collection at the specified position.
var huriyeArr = Array(huriye)
huriyeArr.insert("K", at: 4)
String(huriyeArr)

//Replaces the text within the specified bounds with the given characters.
var kamis = "Kamis"
let testString = "This is a test string"
var testStringReplacedOccurences = testString.replacingOccurrences(of: "is",
                                                                   with: "*")

print("testStringReplacedOccurences:", testStringReplacedOccurences)

//replacingCharacters is a bit different to replacingOccurrences, in that it wants us to pass in a range, which will be the characters to be replaced, and then the string that will be used to as a replacement.
let grassGreen = "Grass is always darker on the other side"
if let range = grassGreen.range(of: "darker") {
    let testString2 = grassGreen.replacingCharacters(in: range,
                                                     with: "greener")
    
    print("testString2: ", testString2)
    
    // OUTPUT: That is a test string
    
   
    // Prints "nonempty"
}

//remove(at:)
//Removes and returns the character at the specified position.
var nonempty = "non-empty"
if let i = nonempty.firstIndex(of: "-") {
    nonempty.remove(at: i)
}
print(nonempty)


var measurements = [1.2, 1.5, 2.9, 1.2, 1.6]
let removed = measurements.remove(at: 2)
print(measurements)
// Prints "[1.2, 1.5, 1.2, 1.6]"

measurements.removeAll(keepingCapacity: false)
print(measurements)
measurements = [1.2, 1.5, 2.9, 1.2, 1.6]

//removeAll(where:)
//Removes all the elements that satisfy the given predicate.
var phrase = "The rain in Spain stays mainly in the plain."

let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
phrase.removeAll(where: { vowels.contains($0) })
// phrase == "Th rn n Spn stys mnly n th pln."
//Complexity: O(n), where n is the length of the collection.
print(phrase)


/*
 func removeFirst() -> Character
 Removes and returns the first element of the collection.
 func removeFirst(Int)
 Removes the specified number of elements from the beginning of the collection.
 func removeLast() -> Character
 Removes and returns the last element of the collection.
 func removeLast(Int)
 Removes the specified number of elements from the end of the collection.
 */

//removeSubrange(_:)
//Removes the characters in the given range.
var languages = ["Swift", "English", "French", "Java", "C"]

// remove "English" and "French" from languages
languages.removeSubrange(1...2)

print(languages)

// Output: ["Swift", "Java", "C"]


//filter(_:)
//Returns a new collection of the same type containing, in order, the elements of the original collection that satisfy the given predicate.
let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let shortNames = cast.filter {
    $0.count < 5
}
print(shortNames)

//drop(while:)
//Complexity: O(n), where n is the length of the collection.
let numbers = [3, 7, 4, -2, 9, -6, 10, 1]
let startingWithNegative = numbers.drop(while: { $0 > 0 })
// startingWithNegative == [-2, 9, -6, 10, 1]

/*
 func dropFirst(Int) -> Substring
 Returns a subsequence containing all but the given number of initial elements.
 func dropLast(Int) -> Substring
 Returns a subsequence containing all but the specified number of final elements.
 func popLast() -> Character?
 Removes and returns the last element of the collection.
 */

let cafe = "BBQ Café 🍵"
print(cafe.lowercased())
// Prints "bbq café 🍵"


let cafe2 = "Café 🍵"
print(cafe2.uppercased())
// Prints "CAFÉ 🍵" Complexity: O(n)


let a = 1...3
let b = 1...10

print(a.elementsEqual(b))
// Prints "false"
print(a.elementsEqual([1, 2, 3]))
// Prints "true"


//difference
let oldArray = ["a", "b", "c", "d"]
let newArray = ["a", "b", "d"]

// The element "c" at index 2 has been removed

let difference = newArray.difference(from: oldArray)
// difference is a one-element collection
// where the element is of type `.remove` with `offset` 2

//hasPrefix(_:)
let cafe3 = "Café du Monde"

// Case sensitive
print(cafe3.hasPrefix("café"))
// Prints "false"

//allSatisfy(_:)
//Returns a Boolean value indicating whether every element of a sequence satisfies a given predicate.
let names = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
let allHaveAtLeastFive = names.allSatisfy({ $0.count >= 5 })
// allHaveAtLeastFive == true
//If the sequence is empty, this method returns true.
//Complexity: O(n), where n is the length of the sequence.


//func contains(Character) -> Bool
//Returns a Boolean value indicating whether the sequence contains the given element.
let expenses = [21.37, 55.21, 9.32, 10.18, 388.77, 11.41]
let hasBigPurchase = expenses.contains { $0 > 100 }
// 'hasBigPurchase' == true
//Complexity: O(n), where n is the length of the sequence.


//firstIndex(of:)
//Returns the first index where the specified value appears in the collection.
var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.firstIndex(of: "Maxime") {
    students[i] = "Max"
}
print(students)
// Prints "["Ben", "Ivy", "Jordell", "Max"]"


//last(where:)
//Returns the last element of the sequence that satisfies the given predicate.
let numbers2 = [3, 7, 4, -2, 9, -6, 10, 1]
if let lastNegative = numbers2.last(where: { $0 < 0 }) {
    print("The last negative number is \(lastNegative).")
}
// Prints "The last negative number is -6."
numbers2.underestimatedCount
//A value less than or equal to the number of elements in the collection.

var emreyas = "EmreYasa"
emreyas.hashValue

//max()
//Returns the maximum element in the sequence.
let heights = [67.5, 65.7, 64.3, 61.1, 58.5, 60.3, 64.9]
let greatestHeight = heights.max()
print(greatestHeight)
// Prints "Optional(67.5)"

//max(by:)
//Returns the maximum element in the sequence, using the given predicate as the comparison between elements.
let hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
let greatestHue = hues.max { a, b in a.value < b.value }
print(greatestHue)
// Prints "Optional((key: "Heliotrope", value: 296))"
//Complexity: O(n), where n is the length of the sequence.

//subscript(_:)
//Accesses a contiguous subrange of the collection’s elements.
let streets = ["Adams", "Bryant", "Channing", "Douglas", "Evarts"]
let streetsSlice = streets[2 ..< streets.endIndex]
print(streetsSlice)
// Prints "["Channing", "Douglas", "Evarts"]"

let index = streetsSlice.firstIndex(of: "Evarts")    // 4
print(streets[index!])
// Prints "Evarts"

//prefix(_:)
//Returns a subsequence, up to the specified maximum length, containing the initial elements of the collection.
let numbers3 = [1, 2, 3, 4, 5]
print(numbers3.prefix(2))
// Prints "[1, 2]"
print(numbers3.prefix(10))
// Prints "[1, 2, 3, 4, 5]"

//suffix(_:)
//Returns a subsequence, up to the given maximum length, containing the final elements of the collection.
let numbers4 = [1, 2, 3, 4, 5]
print(numbers4.suffix(2))
// Prints "[4, 5]"
print(numbers4.suffix(10))
// Prints "[1, 2, 3, 4, 5]"


//split(separator:maxSplits:omittingEmptySubsequences:)
//Returns the longest possible subsequences of the collection, in order, around elements equal to the given element.
let line = "BLANCHE:   I don't want realism. I want magic!"
print(line.split(separator: " "))
// Prints "["BLANCHE:", "I", "don\'t", "want", "realism.", "I", "want", "magic!"]"
print(line.split(separator: " ", maxSplits: 1))
// Prints "["BLANCHE:", "  I don\'t want realism. I want magic!"]"
line.components(separatedBy: " ")
print(line.split(separator: " ", omittingEmptySubsequences: false))
// Prints "["BLANCHE:", "", "", "I", "don\'t", "want", "realism.", "I", "want", "magic!"]"


//randomElement()
let names3 = ["Zoey", "Chloe", "Amani", "Amaia"]
let randomName = names3.randomElement()!
// randomName == "Amani"

//map(_:)
//Returns an array containing the results of mapping the given closure over the sequence’s elements.
let cast2 = ["Vivien", "Marlon", "Kim", "Karl"]
let lowercaseNames = cast2.map { $0.lowercased() }
// 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
let letterCounts = cast2.map { $0.count }
// 'letterCounts' == [6, 6, 3, 4]

//compactMap(_:)
//Returns an array containing the non-nil results of calling the given transformation with each element of this sequence
let possibleNumbers = ["1", "2", "three", "///4///", "5"]

let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
// [1, 2, nil, nil, 5]

let compactMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
// [1, 2, 5]


//flatMap(_:)
//Returns an array containing the concatenated results of calling the given transformation with each element of this sequence.
let numbers5 = [1, 2, 3, 4]

let mapped2 = numbers5.map { Array(repeating: $0, count: $0) }
// [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]

let flatMapped = numbers5.flatMap { Array(repeating: $0, count: $0) }
// [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

//reduce(_:_:)
//Returns the result of combining the elements of the sequence using the given closure.
let numbers6 = [1, 2, 3, 4]
let numberSum = numbers6.reduce(0, { x, y in
    x + y
})
// numberSum == 10


//reduce(into:_:)
//Returns the result of combining the elements of the sequence using the given closure.
let letters = "abracadabra"
let letterCount = letters.reduce(into: [:]) { counts, letter in
    counts[letter, default: 0] += 1
}
// letterCount == ["a": 5, "b": 2, "r": 2, "c": 1, "d": 1]

//forEach(_:)
//Calls the given closure on each element in the sequence in the same order as a for-in loop.
let numberWords = ["one", "two", "three"]
for word in numberWords {
    print(word)
}
// Prints "one"
// Prints "two"
// Prints "three"

numberWords.forEach { word in
    print(word)
}
// Same as above
/*
 Using the forEach method is distinct from a for-in loop in two important ways:

 You cannot use a break or continue statement to exit the current call of the body closure or skip subsequent calls.

 Using the return statement in the body closure will exit only from the current call to body, not from any outer scope, and won’t skip subsequent calls.
 */

//enumerated()
//Returns a sequence of pairs (n, x), where n represents a consecutive integer starting at zero and x represents an element of the sequence.
for (n, c) in "Swift".enumerated() {
    print("\(n): '\(c)'")
}
// Prints "0: 'S'"
// Prints "1: 'w'"
// Prints "2: 'i'"
// Prints "3: 'f'"
// Prints "4: 't'"


let names2: Set = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
var shorterIndices: [Set<String>.Index] = []
for (i, name) in zip(names2.indices, names2) {
    if name.count <= 5 {
        shorterIndices.append(i)
    }
}
for i in shorterIndices {
    print(names2[i])
}
// Prints "Sofia"
// Prints "Mateo"

//shuffled()
let numbers7 = 0...9
let shuffledNumbers = numbers7.shuffled()
// shuffledNumbers == [1, 7, 6, 2, 8, 9, 4, 3, 5, 0]


//sorted()
//Returns the elements of the sequence, sorted.
let students5: Set = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
let sortedStudents = students5.sorted()
print(sortedStudents)
// Prints "["Abena", "Akosua", "Kofi", "Kweku", "Peter"]"
let descendingStudents = students.sorted(by: >)
print(descendingStudents)
// Prints "["Peter", "Kweku", "Kofi", "Akosua", "Abena"]"

//
//let str = "abcdef"
//str[1 ..< 3] // returns "bc"
//str[5] // returns "f"
//str[80] // returns ""
//str.substring(fromIndex: 3) // returns "def"
//str.substring(toIndex: str.length - 2) // returns "abcd"
//
//extension String {
//
//    var length: Int {
//        return count
//    }
//
//    subscript (i: Int) -> String {
//        return self[i ..< i + 1]
//    }
//
//    func substring(fromIndex: Int) -> String {
//        return self[min(fromIndex, length) ..< length]
//    }
//
//    func substring(toIndex: Int) -> String {
//        return self[0 ..< max(0, toIndex)]
//    }
//
//    subscript (r: Range<Int>) -> String {
//        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
//                                            upper: min(length, max(0, r.upperBound))))
//        let start = index(startIndex, offsetBy: range.lowerBound)
//        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
//        return String(self[start ..< end])
//    }
//}
//var firstChar = Array(str)[0]

let s = "Swiftfffff"
var c = 0
//index(_:offsetBy:)
for i in 0..<s.count {
    //let j = s.index(s.startIndex, offsetBy: i)
    //Returns an index that is the specified distance from the given index.
    let char = s[s.index(s.startIndex, offsetBy: i)]
    if char == "f" {
        c += 1
    }
}
print(c)

//OR
//Code this extention below
//https://www.simpleswiftguide.com/get-character-from-string-using-its-index-in-swift/
//extension StringProtocol {
//    subscript(offset: Int) -> Character {
//        self[index(startIndex, offsetBy: offset)]
//    }
//}
for char in s {
    print(char)
}

let hello = "hello"
let startIndex = hello.startIndex // 0
let endIndex = hello.endIndex     // 5
hello[startIndex]                 // "h"

for char in hello {
    if char == "o" {
        print("YES")
    }
}
