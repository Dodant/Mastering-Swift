//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # In-Out Parameters
 */
// 입출력 파라미터

var num1 = 12
var num2 = 34

/*
func swapNumber(_ a: Int, with b: Int) {
//	var tmp = a
//	a = b
//	b = tmp
}

swapNumber(num1, with: num2)	// 값 복사
*/

/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */

func swapNumber(_ a: inout Int, with b: inout Int) {	// 디폴트값 설정 금지
	let tmp = a
	a = b
	b = tmp
}
(num1, num2)

// Copy-In Copy-Out Memory Model
swapNumber(&num1, with: &num2)		// 주소 복사
(num1, num2)


let a = 12
let b = 34
// swapNumber(&a, with: &b) - 상수 전달 금지
// swapNumber(&num1, with: &num1) - 같은 변수 전달 금지
// swapNumber(&12, with: &34) - 리터럴 전달 금지

// func sum(of nums: inout Int...) - inout 키워드는 가변 파라미터와 사용할 수 없음
