//
//  LinqTakeEnumerator.h
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqEnumerator.h"

@interface LinqTakeEnumerator : LinqEnumerator

- (id)initWithSourceEnumerator:(NSEnumerator *)sourceEnumerator 
                  numberToTake:(int)numberToTake;

@end
