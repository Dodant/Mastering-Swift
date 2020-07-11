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
 # self
 ![self](self.png)
 */

class Size {
   var width = 0.0
   var height = 0.0
	
	func calcArea() -> Double {
		return width * height
	}
	
	var area: Double {
		return calcArea()
	}
	
	func update(width: Double, height: Double){
		self.width = width
		self.height = height
	}
	
	func doSomethind() {
		let c = { self.width * self.height}
	}
	
	static let unit = ""
	static func doSomething(){
		// self.width
		self.unit
		unit
	}
}


struct Size1 {
    var width = 0.0
    var height = 0.0
	
	mutating func reset(value: Double) {
		self = Size1(width: value, height: value)
	}
}

/*:
 # super
 ![super](super.png)
 */
