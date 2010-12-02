//
//  SyntaxTest.m
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-26.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface SyntaxTest : SenTestCase
{
  
}
@end


@implementation SyntaxTest
- (void) testTrue
{
  STAssertTrue(YES, @"message on fail");
}

- (void) testString
{
  NSString * myString = @"Bacon";
  STAssertEquals(myString, @"Bacon", @"Should be equal");
  STAssertEqualObjects([myString className], @"NSCFString", @"String expected");
}
@end
