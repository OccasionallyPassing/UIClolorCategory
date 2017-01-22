//
//  RandomVC.m
//  UIClolorCategory
//
//  Created by apple on 17/1/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "RandomVC.h"
#import "UIColor+JKRandom.h"

@interface RandomVC ()

@end

@implementation RandomVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    for (NSInteger i = 0; i < 20; i ++) {
        CGFloat x = arc4random()%((NSInteger)self.view.frame.size.width + 1);
        CGFloat y = arc4random()%((NSInteger)self.view.frame.size.height + 1);
        CGFloat width = arc4random() % 11 + 50;
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(x, y, width, width)];
        view.backgroundColor = [UIColor jk_randomColor];
        view.layer.cornerRadius = width / 2;
        view.clipsToBounds = YES;
        [self.view addSubview:view];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
- (IBAction)backToLastPage:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
