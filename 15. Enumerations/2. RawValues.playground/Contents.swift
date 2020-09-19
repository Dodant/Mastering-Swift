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
 # Raw Values
 ![Raw Values](raw-values.png)
 */
// 원시값 - 선택적으로 사용
enum Alignment: Int {	// 0부터 1씩 증가하는 값이 자동으로 저장
	case left
	case center = 10
	case right	// 11
}

Alignment.left
Alignment.left.rawValue
Alignment.center.rawValue
Alignment.right.rawValue

// Alignment.left.rawValue = 15 - immutable

Alignment(rawValue: 0)
Alignment(rawValue: 11)
Alignment(rawValue: 20)


enum Weekday: String { // String으로 할 경우 값이 곧 raw value
	case sun
	case mon = "Mon"
	case tue
	case wes
	case thu
	case fri
	case sat
}

Weekday.sun.rawValue
Weekday.mon.rawValue


enum ControlChar: Character { // Character으로 할 경우 raw value를 직접 저장해야함
	case tab = "\t"
	case newLine = "\n"
}
