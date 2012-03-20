//
//  LinqSelectEnumerator.h
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import "LinqEnumerator.h"

typedef id (^func)(id);

@interface LinqSelectEnumerator : LinqEnumerator

- initWithSourceEnumerator:(NSEnumerator *) sourceEnumerator
                 projector:(func) projector;

@end
