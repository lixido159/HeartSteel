//
//  ViewController.m
//  HeartSteal
//
//  Created by 全寅 on 2023/7/31.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UIView *qyView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [view addGestureRecognizer:gesture];
    self.qyView = view;
}

- (void)tap {
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleHeavy];
    [generator impactOccurredWithIntensity:1];
    [generator impactOccurredWithIntensity:1];
    [self.qyView.layer removeAllAnimations];
    [UIView animateWithDuration:0.1 animations:^{
        self.qyView.frame = CGRectMake(200, 200, 130, 130);

    } completion:^(BOOL finished) {
        if (finished) {
            [UIView animateWithDuration:0.1 animations:^{
                self.qyView.frame = CGRectMake(200, 200, 100, 100);
            }];
        } else {
            self.qyView.frame = CGRectMake(200, 200, 100, 100);
        }
    }];
    

}


@end
