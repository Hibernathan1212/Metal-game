//
//  GameViewController.m
//  Metal game
//
//  Created by Nathan Thurber on 17/5/24.
//

#import "GameViewController.h"
#import "Renderer.h"
#import "InputView.h"

@implementation GameViewController
{
    MTKView *_view;

    Renderer *_renderer;
    
    InputView *inputView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _view = (MTKView *)self.view;

    _view.device = MTLCreateSystemDefaultDevice();

    if(!_view.device)
    {
        NSLog(@"Metal is not supported on this device");
        self.view = [[NSView alloc] initWithFrame:self.view.frame];
        return;
    }

    _renderer = [[Renderer alloc] initWithMetalKitView:_view];

    [_renderer mtkView:_view drawableSizeWillChange:_view.drawableSize];

    _view.delegate = _renderer;
    
    inputView = [[InputView alloc] initWithFrame:_view.frame];
    [_view addSubview:inputView];
    [inputView becomeFirstResponder];
}

@end
