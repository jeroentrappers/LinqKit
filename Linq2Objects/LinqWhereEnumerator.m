//
//  LinqWhereEnumerator.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqWhereEnumerator.h"

@implementation LinqWhereEnumerator
{
  predicate _filter;
}

- initWithSourceEnumerator:(NSEnumerator *) sourceEnumerator
                    filter:(predicate) filter
{
  self = [super initWithSourceEnumerator:sourceEnumerator];
  if( self )
  {
    _filter = filter;
  }
  return self;
}

- (id)nextObject
{
  id next = nil;
  do{
    next = [self.sourceEnumerator nextObject]; 
  }
  while(next && ! _filter(next));
  
  return next;
}

@end
