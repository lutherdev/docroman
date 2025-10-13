func findPoint(_ point: (Int, Int)) -> String{
//create points for the box
let pointBox = (-1, 2) 
let pointBox2 = (3, -2) 
//store the passed argument
let (a,b) = point

    switch (a,b) {
        case (0,0):
            return "is on the origin"

        case (pointBox.0...pointBox2.0, pointBox2.1...pointBox2.0):
            return "is on the box"

        case let (x, y) where y == x || y == -x:
            return "is on the diagonal line"
        
        case let (x, y) where x > 0 && y > 0:
            return "is on quadrant 1"
            
        case let (x, y) where x < 0 && y > 0:
            return "is on quadrant 2"
            
        case let (x, y) where x < 0 && y < 0:
            return "is on quadrant 3"
            
        case let (x, y) where x > 0 && y < 0:
            return "is on quadrant 4"
        
        default:
            return "the point is unknown"
    }
}
let points = [(1,1), (0,0), (-1,-1), (10,-100), (10,-10), (10,2)]

for point in points{
 print("the point \(point)", findPoint(point))
}


/////////////////////////////////////////////////////////////////////////////

func analyzeInts(_ array: [Int]) -> (Int, Double, Int, Int) {
    var sum = 0
    var refmax = array[0]
    var refmin = array[0]
    
    for num in array {
        sum += num
        if num > refmax {
            refmax = num
        }
        if num < refmin {
            refmin = num
        }
    }
    
    let ave = Double(sum) / Double(array.count)
    
    return (sum, ave, refmax, refmin)
}

let answers = analyzeInts([1, 2, 6, 3, 5, 4, 99])

print("Sum: \(answers.0)")
print("Average: \(answers.1)")
print("Max: \(answers.2)")
print("Min: \(answers.3)")

///////////////////////////////////////////////////////////////////////////////////////

let hexBin = ["0":"0000", "1":"0001", "2":"0010", "3":"0011", "4":"0100", "5":"0101", "6":"0110", "7":"0111", "8":"1000", "9":"1001", "A":"1010", "B":"1011", "C":"1100", "D":"1101", "E":"1110", "F":"1111"]

var analyzeHex = {(_ array: [String]) in
    var answers = Array<String>()
    var answ = ""
    
    for str in array{
        for char in str{
            answ += hexBin[String(char)]! //concatenate the value of the key to answ
        }
        answers.append(answ) // append the finished answ 
        answ = "" //emptying the answ for the next str in the array
    }
    return answers
}
print(analyzeHex(["123", "ABC", "4DE", "F05"]))