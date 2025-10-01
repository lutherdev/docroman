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
    var minIndex = i
    for j in (i+1)..<chars.count {
        if chars[j] < chars[minIndex] {
            minIndex = j //where the chosen gets stored to
        }
    }
    // Swap of the last chosen smallest char
    // from the point of current i swapped with the chosen
    let temp = chars[i]
    chars[i] = chars[minIndex] //chosen gets put at the left side
    chars[minIndex] = temp //the current i getting put at where chosen was
}
var newstr = ""
for char in chars {
    newstr.append(char)
}
print("Sorted: ", newstr)

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
        index += 1 //ctr  to know if its the beginning of the word
    }
    
    result += newWord + " " //append/concatenate all the newWord to the result
}

print("Title:", result)