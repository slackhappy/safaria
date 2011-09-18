//
//  MenuController.m
//  safaria
//
//  Created by John Gallagher on 9/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MenuController.h"

@implementation MenuController

+ (void)initialize{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *appDefaults = [NSDictionary
                                 dictionaryWithObject:@"http://bit.ly/qrRQZC" forKey:@"safaria.url"];
    
    [defaults registerDefaults:appDefaults];
}

- (IBAction)go:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:[[NSUserDefaults standardUserDefaults] stringForKey:@"safaria.url"]]];
}

- (IBAction)prefsOpen:(id)sender {
    [prefsPanel makeKeyAndOrderFront:nil];
	
}

- (IBAction)prefsClose:(id)sender {
    [prefsPanel orderOut:nil];
	
}



@end
