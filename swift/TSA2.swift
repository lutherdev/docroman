let setA: Set<String> = ["a", "b", "c", "d", "f", "g"]
let setB: Set<String> = ["l", "m", "o", "b", "c", "h"]
let setC: Set<String> = ["c", "h", "k", "i", "j", "f", "d"]

print("a. ", setA.union(setB).count)
print("a. ", setA.intersection(setB).count)
print("b. ", setB.subtracting(setA.union(setC)).count)
print("i. ", setC.subtracting(setA).sorted())
print("ii. ", setA.intersection(setC).sorted())
print("iii. ", setA.union(setC).intersection(setB).sorted())
print("iv. ", setA.intersection(setC).subtracting(setB).sorted())
print("v. ", setA.intersection(setC).intersection(setB))
print("vi. ", setB.subtracting(setA.union(setC)).sorted())
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
func findPoint(_ point: (Int, Int)) -> String{

//create points for the box
let horizontalBox = (-2, 1) //left to right
let verticalBox = (1, -2) //up to bottom
//store the passed argument
let (a,b) = point

    switch (a,b) {
        case (0,0):
            return "is on the origin"

        case (0, _):
            return "is on the y-axis"

        case (_, 0):
            return "is on the x-axis"

        case (horizontalBox.0...horizontalBox.1, verticalBox.1...verticalBox.0):
            return "is on the box"

        case let (x, y) where y == x || y == -x:
            return "is on the diagonal line"

        default:
            return "the point is unknown"
    }
}

let points = [(1,1), (0,0), (-1,-1), (1,-1), (1,0), (0,2)]

for point in points{
 print("the point \(point)", findPoint(point))
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
func analyzeString(_ inputStr: String = "") -> (numChar: Int, trim: String, caps: String, small: String) {

    let trimmed = trimStr(inputStr)
    let capsmal = findCapSmal(inputStr)
    
    func trimStr(_ input: String) -> String {
        var newStr = ""
        for char in input {
            if char.isLetter {
                newStr += String(char)
            }
        }
        return newStr
    }
    
    func findCapSmal(_ input: String) -> (a: String, b: String){
        var caps = ""
        var small = ""
        for char in input {
            if char.isUppercase {
                caps += String(char)
            } else if char.isLowercase {
                small += String(char)
            }
        }
        return (caps, small)
    }
    
return (inputStr.count, trimmed, capsmal.0 , capsmal.1)
}
let word = "HellO BaDjUkal"
var analyzedStr = analyzeString(word)
print("Original word: ", word)
print("Num: ", analyzedStr.numChar)
print("Trimmed: ", analyzedStr.trim)
print("Capitals: ", analyzedStr.caps)
print("Smalls: ", analyzedStr.small)

