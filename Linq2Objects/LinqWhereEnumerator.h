//
//  LinqWhereEnumerator.h
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqEnumerator.h"

typedef BOOL (^predicate)(id);

@interface LinqWhereEnumerator : LinqEnumerator

- initWithSourceEnumerator: (NSEnumerator *) sourceEnumerator
                    filter:(predicate) filter;

@end
