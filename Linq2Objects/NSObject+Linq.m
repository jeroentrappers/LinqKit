//
//  NSEnumerator+Linq.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "NSObject+Linq.h"

@implementation NSObject (Linq)

- (NSEnumerator *) extractEnumerator
{
  
  NSEnumerator *result = nil;
  
  if( [self isKindOfClass:[NSEnumerator class]] )
  {
    result = (NSEnumerator *)self;
  }
  else
  {
    SEL enumeratorSelector = @selector(objectEnumerator);
    if( ![self respondsToSelector:enumeratorSelector] )
    {
      @throw @"Where only supported on enumerable collections";
    }
    id o = self;
    result = [o objectEnumerator];
  }
   
  return result;
}

- (NSEnumerator *__autoreleasing) where:(predicate) filter
{
  NSEnumerator *enumerator = [self extractEnumerator];
  return [[LinqWhereEnumerator alloc] 
           initWithSourceEnumerator:enumerator filter:filter];
}

- (NSEnumerator *__autoreleasing) select:(func) projector
{
  NSEnumerator *enumerator = [self extractEnumerator];
  
  return [[LinqSelectEnumerator alloc] 
          initWithSourceEnumerator:enumerator projector:projector];
}

- (NSEnumerator *__autoreleasing) skip: (int) numberToSkip
{
  NSEnumerator *enumerator = [self extractEnumerator];
  
  return [[LinqSkipEnumerator alloc] 
          initWithSourceEnumerator:enumerator numberToSkip:numberToSkip];
}

- (NSEnumerator *__autoreleasing)take:(int)numberToTake
{
  NSEnumerator *enumerator = [self extractEnumerator];
  
  return [[LinqTakeEnumerator alloc] 
          initWithSourceEnumerator:enumerator numberToTake:numberToTake];
}

@end
