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
# defer Statements
![defer](defer.png)
*/

func processFile(path: String){
	print("1")
	let file = FileHandle(forReadingAtPath: path)
	
	defer {		// 실행 코드 연기
		print("2")
		file?.closeFile()
	}
	
	if path.hasSuffix(".jpg"){
		print("3")
		return
	}
	
	defer {
		print("5")
	}
	
	
	print("4")
}

processFile(path: "file.swift")
//processFile(path: "file.jpg")


func testDefer(){
	defer {
		print(1)
	}
	defer {
		print(2)
	}
	defer {
		print(3)
	}
}

testDefer()


enum LoginError: Error {
	case invalidId
	case invalidPassword
}

// 오류를 던지는 함수로 수정해 주세요.
func login(id: String, password: String) throws -> Bool {
	do{
		guard id == "admin" else {
			throw LoginError.invalidId
		}
		guard password == "1234" else {
			throw LoginError.invalidPassword
		}
	} catch LoginError.invalidId {
		print("Invalid ID")
		return false
	} catch LoginError.invalidPassword {
		print("Invalid Password")
		return false
	}
	return true
}

// 여기에서 login(id:password:)를 호출하고 오류를 처리해 주세요.
func run() throws {
	try login(id: "hacker", password: "1234")
}

try run()









