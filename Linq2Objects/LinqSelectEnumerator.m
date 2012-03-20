//
//  LinqSelectEnumerator.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqSelectEnumerator.h"

@implementation LinqSelectEnumerator
{
  func _projector;
}

- (id)initWithSourceEnumerator:(NSEnumerator *)sourceEnumerator 
                     projector:(func)projector
{
  self = [super initWithSourceEnumerator:sourceEnumerator];
  if( self )
  {
    _projector = projector;
  }
  return self;
}

- (id)nextObject
{
  id next = [self.sourceEnumerator nextObject]; 
  if( next ){
    return _projector(next);
  }
  else {
    return nil;
  }
}

@end
