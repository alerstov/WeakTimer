//
//  TimerViewController.m
//  WeakTimerExample
//
//  Created by Alexander Stepanov on 15/01/16.
//  Copyright © 2016 Alexander Stepanov. All rights reserved.
//

#import "TimerViewController.h"
#import "WeakTimer.h"


@interface TimerViewController ()
@property (nonatomic) id timerToken;
@property (nonatomic) NSInteger value;
@property (weak, nonatomic) IBOutlet UITextField *counter;
@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WEAK_TIMER_ONCE(6, {
        NSLog(@"once");
    });
    
    self.timerToken = WEAK_TIMER_REPEAT(1, {
        self.value++;
        self.counter.text = [@(self.value) stringValue];
        NSLog(@"repeat %@", @(self.value));
    });
}

- (IBAction)stopTimer:(id)sender {
    WEAK_TIMER_STOP(self.timerToken);
    // WEAK_TIMER_STOP_ALL();
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)dealloc
{
    NSLog(@"TimerViewController dealloc");
}

@end

