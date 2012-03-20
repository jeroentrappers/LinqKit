//
//  LinqEnumerator.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqEnumerator.h"
@interface LinqEnumerator()

@property (nonatomic, readwrite) NSEnumerator* sourceEnumerator;

@end
@implementation LinqEnumerator

@synthesize sourceEnumerator = _sourceEnumerator;

- (id)init
{
  @throw @"sourceEnumerator parameter required.";
}

// designated initializer
- initWithSourceEnumerator: (NSEnumerator *) sourceEnumerator
{
  self = [super init];
  if( self )
  {
    self.sourceEnumerator = sourceEnumerator;
  }
  return self;
}

@end
