//
//  ViewController.m
//  PointerArray
//
//  Created by User on 4/18/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    //Create pointer array and add 10 objects inside.
    NSPointerArray *pointers = [NSPointerArray weakObjectsPointerArray];
    for(int i = 0; i < 10; i++) {
        [pointers addPointer:[NSNumber numberWithInt:i]];
    }
    //10
    NSLog(@"%@, count = %lu",[pointers allObjects], [pointers count]);
    [pointers addPointer:nil];
    //11
    NSLog(@"%lu", [pointers count]);
    
    [pool release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
