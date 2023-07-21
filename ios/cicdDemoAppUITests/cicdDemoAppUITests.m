//
//  cicdDemoAppUITests.m
//  cicdDemoAppUITests
//
//  Created by Poojan Bhatt on 21/07/23.
//

#import <XCTest/XCTest.h>

@interface cicdDemoAppUITests : XCTestCase

@end

@implementation cicdDemoAppUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // UI tests must launch the application that they test.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  
    [
      XCTContext runActivityNamed:@"screenshot" block:^(id<XCTActivity>  _Nonnull activity) {
        
        XCUIApplication *app = [[XCUIApplication alloc] init];
        [app launch];
      
        [app.textFields[@"add number 1"] tap];
      
        XCUIElement *key = app/*@START_MENU_TOKEN@*/.keys[@"5"]/*[[".keyboards.keys[@\"5\"]",".keys[@\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [key tap];
      
        [app.textFields[@"add number 2"] tap];
        
        XCUIElement *key2 = app/*@START_MENU_TOKEN@*/.keys[@"1"]/*[[".keyboards.keys[@\"1\"]",".keys[@\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [key2 tap];
        
        XCUIElement *key3 = app/*@START_MENU_TOKEN@*/.keys[@"0"]/*[[".keyboards.keys[@\"0\"]",".keys[@\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
        [key3 tap];
        
        XCUIElement *answerLabel = app.staticTexts[@"Answer : 15"];

        XCTAssertEqual(answerLabel.exists, true);

      }
    ];
}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *)) {
        // This measures how long it takes to launch your application.
        [self measureWithMetrics:@[[[XCTApplicationLaunchMetric alloc] init]] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
