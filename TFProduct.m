//
//  TFProduct.m
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-27.
//  Copyright 2010 EAX. All rights reserved.
//

#import "TFProduct.h"


@implementation TFProduct

@synthesize title;
@synthesize url;

- (id) initWithDictionary:(NSDictionary *) theDictionary
{
  if (self = [super init]) {
    self.title = [theDictionary objectForKey:@"title"];
    self.url = [NSURL URLWithString:[theDictionary objectForKey:@"url"]];
  }
  return self;
}
@end
