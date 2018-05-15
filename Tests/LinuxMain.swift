@testable import GherkinCLITests
import XCTest

XCTMain([
    testCase(XCTestGeneratorTests.allTests),
    testCase(BootstrapTests.allTests),
])
