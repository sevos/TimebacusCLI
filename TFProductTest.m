//
//  TFProductTest.m
//  TimebacusCLI
//
//  Created by Artur Roszczyk on 10-11-27.
//  Copyright 2010 EAX. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TFProduct.h"

@interface TFProductTest : SenTestCase
{
  TFProduct * product;
}
@end

@implementation TFProductTest
- (void) setUp
{
  NSDictionary * dictionary = 
    [NSDictionary dictionaryWithObjectsAndKeys:
     @"Haml and Sass", @"title",
     @"http://eax.pl/test", @"url",
     nil];
  product = [[TFProduct alloc] initWithDictionary:dictionary];
}

- (void) testObjectType
{
  STAssertEqualObjects(product.className, @"TFProduct", nil);
}

- (void) testAttributes
{
  STAssertEqualObjects(product.title, @"Haml and Sass", nil);
  STAssertEqualObjects(product.url.relativePath, @"/test", nil);
}

- (void) tearDown
{
  [product release];
}
@end
