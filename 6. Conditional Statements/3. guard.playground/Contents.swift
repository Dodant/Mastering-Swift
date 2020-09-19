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
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */

func validate(id: String?) -> Bool {
	guard let id = id else {
		return false
	}
	
	guard id.count >= 6 else {
		return false
	}
	
//	guard let id = id, id.count >= 6 else {
//		return false
//	}
	
	return true
}

validate(id: nil)
validate(id: "abc")
validate(id: "abcdefg")


func validateUsingIf() {
	let id: String? = nil
	
	if let str = id {
		if str.count >= 6 {
			print(str)
		}
	}
}

func validateUsingGuard() {
	let id: String? = nil
	
	guard let str = id else { return }
	guard str.count >= 6 else { return }
	print(str)
}

// 조건이 하나이거나, 조건 자체가 단순한 경우, 바인딩한 상수를 다른 값을 처리하는 임시값으로 처리할 경우 - if
// 복잡한 조건을 여러개 구현하거나, 바인딩한 상수를 동일한 스코프에서 계속 사용할 경우, if문 복잡해져 가독성이 떨어질 때 - guard