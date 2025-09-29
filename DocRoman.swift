// Use Swift language to solve the following programs.

// 1. Given some string. Create a program that will count the number of vowels, consonants, numeric, and other characters from the given string.

let VOWELS: Set<Character> = ["a", "e", "i", "o", "u"]
let SPECIAL: Set<Character> = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "+", "-", "="]
let words = ["somet@ hing", "something2-"]

for word in words{ //loop through each word
  let lword = word.lowercased()
  var vowelCtr = 0
  var conCtr = 0
  var numCtr = 0
  var spaceCtr = 0
  var specialCtr = 0 //declare varaibles here so each loop(for each word) is a new value

  for ch in lword { //loop through each letter and check it for counter
    if VOWELS.contains(ch){
      vowelCtr += 1
    }
    
    if ch.isWhitespace{
      spaceCtr += 1
    }
    if ch.isLetter{
      conCtr += 1
    }
    
    if ch.isNumber{
      numCtr += 1
    }
    
    if SPECIAL.contains(ch){
      specialCtr += 1
    }
  }
  
  print("The word \"\(word)\" has:")
  print("Vowels: \(vowelCtr)")
  print("Consonants: \(conCtr)")
  print("Whitespaces: \(spaceCtr)")
  print("Numbers: \(numCtr)")
  print("Specials: \(specialCtr)")
  print()
}


// 2. Create a program the will sort all characters from the given string in ascending order.



let input = "swift"

var chars = Array(input)

for i in 0..<chars.count {
    for j in 0..<(chars.count - i - 1) {
        if chars[j] > chars[j + 1] {
            // Swap
            let temp = chars[j]
            chars[j] = chars[j + 1]
            chars[j + 1] = temp
        }
    }
}

// Step 3: Convert back to string
let sortedStr = String(chars)
print("Original: \(input)")
print("Sorted:   \(sortedStr)")

// 3. Create a program change the given string into title caps.

let inputs = "hello world from swift"
let wordss = inputs.split(separator: " ")

var result = ""
for word in wordss {
    var newWord = ""
    var index = 0
    
    for ch in word {
        if index == 0 {
            newWord.append(ch.uppercased()) //append the uppercased
        } else {
            newWord.append(ch.lowercased()) 
        }
        index += 1 //ctr to know if its the beginning of the word
    }
    
    result += newWord + " " //append/concatenate all the newWord to the result
}

print(result)
