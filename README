LinqKit is a proposal for implementing the functionality known as Linq (Language Integrated Query) in .NET, but then for Objective-C.

Currently it is implemented as Categories on NSObject. It works with deferred execution by using custom NSEnumerator subclasses.

For the moment basic implementations of where, select, skip and take have been implemented. Any additions or suggestions are welcomed.

The syntax that I defined looks like this:

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

Kind regard,
Jeroen
