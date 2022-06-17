let students = ["Ariel", "Barry", "Caitlyn", "Drake", "Ellen","Fiona", "Garry", "Hilton", "Ivana", "Jabin"] 
let marks = [05,11,22,33,44,55,66,77,91,99] 
  
var failed = 0 
var topper = [String]() 
var sum = 0 
var min = marks[0] 
var max = min 
var index = 0 
  
for x in 0...marks.count-1{ 
    sum += marks[x] 
    if marks[x] < 50 { 
        failed += 1 
    } 
    else if marks[x] > 90 { 
        topper.append(students[x]) 
    } 
    if marks[x] > max { 
        max = x 
    } 
    else if marks[x] < min{ 
        min = marks[x] 
    } 
} 
let avg = sum / marks.count 
var diff = marks[0] - avg 
if diff<0{ 
    diff *= -1 
} 
for  x in 1...marks.count-1{ 
    var temp = marks[x] - avg 
    if(temp < 0){ 
        temp *= -1 
    } 
    if temp < diff { 
        diff = temp 
        index = x 
    } 
}  
print(" ") 
print("1. Minimum grade is \(min) ") 
print("2. Student with max grade is " + students[max] + " with \(marks[max]) marks") 
print("3. Number of students who failed : \(failed)") 
print("4. Students who scored more than 90 : ", topper) 
print("5. Average of Marks is \(avg) and the student with marks closes to averge is " + students[index] + " with \(marks[index]) marks") 