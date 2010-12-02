//
//  Activity.m
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-30.
//  Copyright 2010 EAX. All rights reserved.
//

#import "Activity.h"

@interface Activity()
- (void) setDurationWithString:(NSString *) string;
@end


@implementation Activity

@synthesize description, duration;

- (id) initWithParams:(NSDictionary *)params
{
  if (self = [self init]) {
    self.description = [params objectForKey:@"description"];
    [self setDurationWithString:[params objectForKey:@"duration"]];
  }
  return self;
}

- (void) setDurationWithString:(NSString *) string
{
  NSString * hour_regexp = @"\\d+:\\d\\d";
  NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", hour_regexp];
  if ([predicate evaluateWithObject:string]) {
    NSArray * splittedString = [string componentsSeparatedByString:@":"];
    int hours = [(NSString *)[splittedString objectAtIndex:0] integerValue];
    int minutes = [(NSString *)[splittedString objectAtIndex:1] integerValue];
    self.duration = hours * 3600 + minutes * 60;
  } else {
    self.duration = [string floatValue] * 3600;
  }
}
@end
