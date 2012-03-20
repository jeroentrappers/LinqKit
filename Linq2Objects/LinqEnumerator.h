//
//  LinqEnumerator.h
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinqEnumerator : NSEnumerator

@property (nonatomic, readonly) NSEnumerator *sourceEnumerator;

// designated initializer
- initWithSourceEnumerator: (NSEnumerator *) sourceEnumerator;

@end
