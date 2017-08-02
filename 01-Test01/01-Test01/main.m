//
//  main.m
//  01-Test01
//
//  Created by 孟凡迪 on 2017/7/31.
//  Copyright © 2017年 孟凡迪. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        NSOperationQueue * queue = [[NSOperationQueue alloc]init];
        
        
        NSOperation * A = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"A");
            
        }];
        
        NSOperation * B = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"B");
            
        }];
        
        NSOperation * C = [NSBlockOperation blockOperationWithBlock:^{
            
            NSLog(@"C");
            
        }];
        
       
        [C addDependency:A];
        
        [C addDependency:B];
        
       
        [queue addOperation:A];
        
        [queue addOperation:B];
        
        [queue addOperation:C];
        
        
    }
    return 0;
}
