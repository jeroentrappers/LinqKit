//
//  LinqSkipEnumerator.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqSkipEnumerator.h"

@implementation LinqSkipEnumerator
{
  int _numberToSkip;
  int _numberSkipped;
}

- (id)initWithSourceEnumerator:(NSEnumerator *)sourceEnumerator 
                  numberToSkip:(int)numberToSkip
{
  self = [super initWithSourceEnumerator:sourceEnumerator];
  if( self )
  {
    _numberToSkip = numberToSkip;
    _numberSkipped = 0;
  }
  return self;
}

- (id)nextObject
{
  id next = nil;
  do{
    next = [self.sourceEnumerator nextObject]; 
    _numberSkipped = _numberSkipped + 1;
  }
  while(next && _numberSkipped < _numberToSkip);
  
  return next;
}

@end
