    import XCTest
    @testable import Authorization

    final class AuthorizationTests: XCTestCase {
        func testExecuteWithPrivileges() throws {
            let fh = try Authorization.executeWithPrivileges("/bin/ls /").get()
            print(String(bytes: fh.readDataToEndOfFile(), encoding: .utf8)!)
        }
    }
