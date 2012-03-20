//
//  NSEnumerator+Linq.h
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "LinqWhereEnumerator.h"
#import "LinqSelectEnumerator.h"
#import "LinqSkipEnumerator.h"
#import "LinqTakeEnumerator.h"

@interface NSObject (Linq)

- ( NSEnumerator *__autoreleasing) where:(predicate) filter;
- ( NSEnumerator *__autoreleasing) select:(func) projector;
- ( NSEnumerator *__autoreleasing) skip: (int) numberToSkip;
- ( NSEnumerator *__autoreleasing) take: (int) numberToTake;

@end
