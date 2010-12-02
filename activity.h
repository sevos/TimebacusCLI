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

- (id) initWithParams:(NSDictionary*) params;
@end
