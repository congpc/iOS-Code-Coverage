//
//  CalculatorTests.m
//  DemoCodeCoverage
//
//  Created by TTA-Brown-006 on 5/7/15.
//  Copyright (c) 2015 Pham Chi Cong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Calculator.h"

/**
 * Todo list:
 * - Test addition, should return 0, when input param1 is nil and param2 is empty.
 * - Test addition, should return 0, when input param1 is nil or empty and param2 is right value.
 * - Test addition, should return 0, when input param2 is nil or empty and param1 is right value.
 * - Test addition, should return 0, when input param1 is not numberic and param2 is right value.
 * - Test addition, should return 0, when input param2 is not numberic and param1 is right value.
 * - Test addition, should return true, when input param1 and param2 are valid values.
 */

@interface CalculatorTests : XCTestCase
@property (strong, nonatomic) Calculator *testedObject;
@end

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
    self.testedObject = [[Calculator alloc] init];
}

- (void)tearDown {
    self.testedObject = nil;
    [super tearDown];
}

- (void)testAddition_ShouldReturnZero_WhenInputParam1IsNilAndParam2IsEmpty {
    //GIVEN
    int expected = 0;
    NSString *numberString1 = nil;
    NSString *numberString2 = @"";
    
    //WHEN
    int result = [self.testedObject additionWith:numberString1 number2:numberString2];
    
    //THEN
    XCTAssertEqual(expected, result);
}
- (void)testAddition_ShouldReturnZero_WhenInputParam1IsNilOrEmptyAndParam2IsRightValue {
    //GIVEN
    int expected = 0;
    NSString *numberString1 = nil;
    NSString *numberString11 = @"";
    NSString *numberString2 = @"22";
    
    //WHEN
    int result1 = [self.testedObject additionWith:numberString1 number2:numberString2];
    int result2 = [self.testedObject additionWith:numberString11 number2:numberString2];
    
    //THEN
    XCTAssertEqual(expected, result1);
    XCTAssertEqual(expected, result2);
}
- (void)testAddition_ShouldReturnZero_WhenInputParam2IsNilOrEmptyAndParam1IsRightValue {
    //GIVEN
    int expected = 0;
    NSString *numberString1 = @"5";
    NSString *numberString2 = nil;
    NSString *numberString22 = @"";
    
    //WHEN
    int result1 = [self.testedObject additionWith:numberString1 number2:numberString2];
    int result2 = [self.testedObject additionWith:numberString1 number2:numberString22];
    
    //THEN
    XCTAssertEqual(expected, result1);
    XCTAssertEqual(expected, result2);
}
- (void)testAddition_ShouldReturnZero_WhenInputParam1IsNotNumbericAndParam2IsRightValue {
    //GIVEN
    int expected = 0;
    NSString *numberString1 = @"1abc2";
    NSString *numberString2 = @"22";
    
    //WHEN
    int result = [self.testedObject additionWith:numberString1 number2:numberString2];
    
    //THEN
    XCTAssertEqual(expected, result);
}
- (void)testAddition_ShouldReturnZero_WhenInputParam2IsNotNumbericAndParam1IsRightValue {
    //GIVEN
    int expected = 0;
    NSString *numberString1 = @"5";
    NSString *numberString2 = @"abc32nch";
    
    //WHEN
    int result = [self.testedObject additionWith:numberString1 number2:numberString2];
    
    //THEN
    XCTAssertEqual(expected, result);
}
- (void)testAddition_ShouldReturnRight_WhenInputParam1AndParam2AreValidValues {
    //GIVEN
    int expected = 0;
    NSString *numberString1 = @"04";
    NSString *numberString2 = @"22";
    expected = [numberString1 intValue] + [numberString2 intValue];
    
    //WHEN
    int result = [self.testedObject additionWith:numberString1 number2:numberString2];
    
    //THEN
    XCTAssertEqual(expected, result);
}
@end
