//
//  activity.h
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-30.
//  Copyright 2010 EAX. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Activity : NSObject {
  NSString *  description;
  long        duration;
}

@property (nonatomic,retain) NSString * description;
@property long duration;
@property (readonly) double floatDuration;
@property (nonatomic,retain,readonly) NSString * naturalDuration;

- (id) initWithParams:(NSDictionary*) params;
@end
