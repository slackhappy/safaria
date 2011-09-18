//
//  MenuController.h
//  safaria
//
//  Created by John Gallagher on 9/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MenuController : NSMenu {
    IBOutlet id prefsPanel;
    IBOutlet id prefUrlField;
}
- (IBAction)go:(id)sender;
- (IBAction)prefsOpen:(id)sender;
- (IBAction)prefsClose:(id)sender;
@end
