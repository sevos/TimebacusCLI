//
//  TFProduct.h
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-27.
//  Copyright 2010 EAX. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface TFProduct : NSObject {
  NSString * title;
  NSURL * url;
}
- (id) initWithDictionary:(NSDictionary *) theDictionary;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSURL * url;
@end
