import Cocoa
import Darwin
import Foundation
import XCTest

// Done in Swift Playgrounds vs actual project for ease of access



// Baby Sitter Kata
    // Starts no earlier than 5:00 P.M
    // Leaves no later than 4:00 A.M
    // Gets paid $12/hr from Start to Bedtime
    // Gets paid $8/hr from Bedtiime to midnight
    // Gets paid $16/hr from midnight to endtime
    // Gets paid for full hours
    // Calculate nightly charge


// Start time inferred to be 5:00 P.M
// no bedtime was given so I set it to 10 P.M
// It is inferred the shift ends at 4 A.M

 func pay(hours: Int, wage: Int) ->Int{
    hours * wage
}
var startPay = pay(hours: 5, wage: 12)
var bedTimePay = pay(hours: 2, wage: 8)
var midnightPay = pay(hours: 4, wage: 16)
let totalPay = startPay+bedTimePay+midnightPay

print(totalPay)


class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Babysitter got paid \(startPay) until 10", paidForStart),
        ("Test Babysitter got paid \(midnightPay) after 12.", paidForEnd),
    ]
    
    func paidForStart() {
        XCTAssertTrue((pay(hours: 5, wage: 12) == 60))
    }
  
    func paidForEnd() {
        XCTAssertFalse((pay(hours: 4, wage: 16) == 64))
    }
}

func testPay(){
    XCTAssertEqual(startPay, 60)
    XCTAssertEqual(bedTimePay, 16)
    XCTAssertEqual(midnightPay, 64)
    XCTAssertEqual(totalPay, 140)
}


