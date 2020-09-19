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
 # Overloading
 */

func process(value: Int){ print("Int") }
func process(value: String){ print("String") }
func process(value: String, anotherValue: String) { }
func process(_ value: String){ }
func process(value: Double) -> Int { return 0 }
func process(value: Double) -> String? { return String(value) }


process(value: 0)
process(value: "0")

// #1 함수이름이 동일하면 파라미터 수로 식별
// #2 함수이름, 파라미터 수가 동일하며 파라미터 자료형으로 식별
// #3 함수이름, 파라미터가 동일하면 Argument Label로 식별
// #4 함수이름, 파라미터, Argument Label이 동일하며 리턴형으로 식별

let result = process(value: 12.34) as Int


struct Rectangle {
	func area() -> Double { return 1.0 }
	static func area() -> Double { return 0.0}
}

let r = Rectangle()
r.area()
Rectangle.area()
