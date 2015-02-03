//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Insert code here
    
    for (int i = 1; i < 101; i++){
        BOOL buzzed = [self isBuzzed:i];
        BOOL fizzed = [self isFizzed:i];
        
        if (buzzed && !fizzed){
            NSLog(@"Buzz");
        }else if (fizzed && !buzzed){
            NSLog(@"Fizz");
        }else if (fizzed && buzzed){
            NSLog(@"FizzBuzz");
        }else{
            NSLog(@"%d", i);
        }
        
    }
    
    
    
    return YES;
}
-(BOOL)isBuzzed:(int)integer {
    if (integer % 3 == 0){
        return true;
    }else if ([[NSString stringWithFormat: @"%d", integer] containsString:@"3"]) {
        return false;
    }else{
        return false;
    }
    
}
-(BOOL)isFizzed:(int)integer {
    if (integer % 5 == 0){
        return true;
    }else if ([[NSString stringWithFormat: @"%d", integer] containsString:@"5"]) {
        return false;
    }else{
        return false;
    }
}


@end
