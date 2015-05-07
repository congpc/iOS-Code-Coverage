//
//  Calculator.m
//  DemoCodeCoverage
//
//  Created by TTA-Brown-006 on 5/7/15.
//  Copyright (c) 2015 Pham Chi Cong. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

#pragma mark - Private
- (BOOL)validateNumberic:(NSString*)aNumberString {
    if (!aNumberString || !aNumberString.length) {
        return NO;
    }
    NSScanner *scanner = [NSScanner scannerWithString:aNumberString];
    BOOL isNumeric = [scanner scanInteger:NULL] && [scanner isAtEnd];
    return isNumeric;
}

#pragma mark - Public
- (int)additionWith:(NSString*)aNumberString1 number2:(NSString*)aNumberString2 {
    if (!aNumberString1) {
        return 0;
    }
    if (!aNumberString2) {
        return 0;
    }
    if (![self validateNumberic:aNumberString1]) {
        return 0;
    }
    if (![self validateNumberic:aNumberString2]) {
        return 0;
    }
    int aNumber1 = [aNumberString1 intValue];
    int aNumber2 = [aNumberString2 intValue];
    int result = aNumber1 + aNumber2;
    return result;
}
@end
