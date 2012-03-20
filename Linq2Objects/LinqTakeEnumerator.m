//
//  LinqTakeEnumerator.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqTakeEnumerator.h"

@implementation LinqTakeEnumerator
{
  int _numberToTake;
  int _numberTaken;
}

- (id)initWithSourceEnumerator:(NSEnumerator *)sourceEnumerator 
                  numberToTake:(int)numberToTake
{
  self = [super initWithSourceEnumerator:sourceEnumerator];
  if( self )
  {
    _numberToTake = numberToTake;
    _numberTaken = 0;
  }
  return self;
}

- (id)nextObject
{
  id next = [self.sourceEnumerator nextObject]; 
  _numberTaken = _numberTaken + 1;
  
  if( _numberTaken <= _numberToTake ){
    return next;
  }
  else {
    return nil;
  }
}

@end
