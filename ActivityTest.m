//
//  ActivityTest.m
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-30.
//  Copyright 2010 EAX. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "Activity.h"

@interface ActivityTest : SenTestCase
{
  NSMutableDictionary * params;
}
@end

@implementation ActivityTest

- (void) setUp
{
  params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
            @"some activity", @"description",
            @"1.5", @"duration",
            nil];
}

- (void) tearDown
{
}

- (void) testAcceptingDescriptionParam
{
  Activity * activity = [[Activity alloc] initWithParams:params];
  STAssertEqualObjects(@"some activity", activity.description, nil);
  [activity release];
}

- (void) testAcceptingDurationAsFloatOnCreateAndConvertingItToSeconds
{
  Activity * activity = [[Activity alloc] initWithParams:params];
  STAssertEquals(activity.duration, (long)5400, nil);
  [activity release];
}

- (void) testAcceptingDurationAsNaturalOnCreateAndConvertingItToSeconds
{
  [params setValue:@"1:30" forKey:@"duration"];
  Activity * activity = [[Activity alloc] initWithParams:params];
  STAssertEquals(activity.duration, (long)5400, nil);
  [activity release];
}

- (void) testFloatDuration
{
  Activity * activity = [[Activity alloc] initWithParams:params];
  STAssertEquals(activity.floatDuration, 1.5, nil);
  [activity release];
}

- (void) testNaturalDuration
{
  Activity * activity = [[Activity alloc] initWithParams:params];
  STAssertEqualObjects(activity.naturalDuration, @"1:30", nil);
  [activity release];
}

- (void) testNaturalDurationAgainstOneDigitMinutes
{
  Activity * activity = [[Activity alloc] init];
  activity.duration = 300;
  STAssertEqualObjects(activity.naturalDuration, @"0:05", nil);
  [activity release];
}

@end
