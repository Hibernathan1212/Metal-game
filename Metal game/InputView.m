//
//  InputView.m
//  Metal game
//
//  Created by Nathan Thurber on 18/5/24.
//

#import <Foundation/Foundation.h>
#import"InputView.h"

@implementation InputView

- (BOOL)acceptsFirstResponder{ return YES;}

- (void)mouseDown:(NSEvent*)event
{
    NSLog(@"yes");
}

- (void)keyDown:(NSEvent *)event
{
    NSString* string = [NSString stringWithFormat:@"%d", [event keyCode]];
    
    NSLog(string);

}


@end
