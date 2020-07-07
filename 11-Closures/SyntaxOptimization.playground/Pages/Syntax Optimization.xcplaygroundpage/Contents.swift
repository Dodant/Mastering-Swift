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
import Foundation

/*:
 # Syntax Optimization
 */

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

var proModels = products.filter({ (name: String) -> Bool in
	return name.contains("Pro")
})

products.filter { $0.contains("Pro") }	// Implicit Return & Trailing Closure


proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
	return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

proModels.sort { $0.caseInsensitiveCompare($1) == .orderedAscending }


// Challenge
proModels.contains(where: { (str: String) -> Bool in
	return str == "iMac Pro"
})

proModels.contains { $0 == "iMac Pro" }



// 1. 파라미터 형식과 리턴 형식을 생략한다.
// 2. 파라미터 이름을 생략하고 Shorthand Argument Name으로 대체한다.
// 3. 클로저에 포함된 코드가 단일리턴문이라면 리턴 키워드를 생략한다. - Implicit Return
// 4. 클로저가 마지막 파라미터라면 Trailing Closure로 작성한다. Argument Label이 남아있다면 삭제한다.
// 5. 괄호 사이에 파라미터가 더이상 없다면 괄호를 생략한다.

