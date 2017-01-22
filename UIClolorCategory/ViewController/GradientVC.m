//
//  GradientVC.m
//  UIClolorCategory
//
//  Created by apple on 17/1/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "GradientVC.h"
#import "UIColor+JKGradient.h"

@interface GradientVC ()

@end

@implementation GradientVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 50)];
    view.backgroundColor = [UIColor jk_gradientFromColor:[UIColor yellowColor] toColor:[UIColor redColor] withHeight:[UIScreen mainScreen].bounds.size.height - 50];
    [self.view addSubview:view];
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
