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
 # Stored Properties
 ![syntax](syntax1.png)
 */

class Person {
	let name: String = "John Doe"
	var age: Int = 33
}

struct PersonS {
	let name: String = "John Doe"
	var age: Int = 33
}

/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */

// Dot Syntax
// Explicit Memeber Expression

let p = Person()
p.name
p.age

p.age = 30
// p.name = "new name"


var ps = PersonS()
ps.name
ps.age

ps.age = 30 // Cannot assign to property: 'ps' is a 'let' constant

/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */

struct Image {
	init() {
		print("new image")
	}
}

struct BlogPost {
	let title: String = "Title"
	let content: String = "Content"
	lazy var attachment: Image = Image() 	// 아직 초기화되지 않음
	
	let date: Date = Date()
	lazy var formattedDate: String = {
		let f = DateFormatter()
		f.dateStyle = .long
		f.timeStyle = .medium
		return f.string(from: date)
	}()
}

// let post = BlogPost() - 구조체 인스턴스를 상수로 저장하고 있어서 값이 초기화된 다음엔 값을 수정할 수 없음
var post = BlogPost()
post.attachment		// 속성에 처음 접근하는 시점에 생성자가 호출
