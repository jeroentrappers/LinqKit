//
//  main.m
//  Linq2Objects
//
//  Created by Jeroen Trappers on 2012-03-20.
//  Copyright (c) 2012 Me. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSObject+Linq.h"

int main(int argc, const char * argv[])
{

  @autoreleasepool {
      
    NSArray *arr = [[NSArray alloc]initWithObjects:@"one", 
      @"two", @"three", @"four", @"five", @"six", @"seven", @"eight", @"nine", 
      @"ten", @"eleven", @"twelve", @"thirteen", @"fourteen", @"fifteen",
      @"sixteen", @"seventeen", @"eighteen", @"nineteen", @"twenty", nil];
    
  
    for(id string in [[[[arr where:^BOOL(id t){ return ![t hasPrefix:@"e"]; }] 
                              skip:4]
                              take:8]
        select:^id(id r) { return [NSString stringWithFormat:@"result : %@", r]; } ])
    {
      NSLog(@"%@", string);
    }
    
      
  }
    return 0;
}

