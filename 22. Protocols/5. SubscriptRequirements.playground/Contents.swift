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
# Subscript Requirements
![subscript](subscript.png)
*/

protocol List {
	subscript(idx: Int) -> Int { get set }
}

struct DataStore: List {
	subscript(idx: Int) -> Int {
		get {
			return 0
		}
		set {
			
		}
	}
}


protocol Equatable {
	static func ==(lhs: Self, rhs: Self) -> Bool
	static func !=(lhs: Self, rhs: Self) -> Bool
}

struct Color : Equatable {
	
	
	let red: Int
	let green: Int
	let blue: Int
	
	static var black: Color {
		return Color(red: 0, green: 0, blue: 0)
	}
	
	static var white: Color {
		return Color(red: 255, green: 255, blue: 255)
	}
	
	static func != (lhs: Color, rhs: Color) -> Bool {
		return !(lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue)
	}
	
	static func == (lhs: Color, rhs: Color) -> Bool {
		return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue
	}
}

let b = Color.black
let w = Color.white

print(b == w)
