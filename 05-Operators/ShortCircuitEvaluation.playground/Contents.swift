import UIKit

/*:
 # Short-circuit Evaluation
 */
// 뒤의 것를 체크하지 않음
// false &&
// true ||

var a = 1
var b = 1

func updateLeft() -> Bool {
	a += 1
	return true
}

func updateRight() -> Bool {
	b += 1
	return false
}

if updateLeft() || updateRight(){ }

a
b

if updateRight() && updateLeft(){ }

a
b


// 값이 변경되는 것 = Side Effect
let resultA = updateLeft()
let resultB = updateRight()

if resultA && resultB { }
