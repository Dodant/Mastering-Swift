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
 # Value Types & Reference Types
 */

// Value Type - Structure, Enumration, Tuple
// Reference Type - Class, Closure

struct SizeValue {
   var width = 0.0
   var height = 0.0
}

var value = SizeValue()		// Stack에 저장
var value2 = value			// 값 복사, 개별 인스턴스
value2.width = 1.0
value2.height = 2.0

value
value2


class SizeObject {
   var width = 0.0
   var height = 0.0
}

var object = SizeObject()	// Stack에 Heap 주소 저장
var object2 = object		// 주소 복사
object2.width = 1.0
object2.height = 2.0

object
object2


let v = SizeValue()
let o = SizeObject()
o.width = 1.0
o.height = 2.0


// Value type 		- == !=
// Reference type 	- == != === !==
