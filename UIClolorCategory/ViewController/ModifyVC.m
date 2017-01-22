//
//  ModifyVC.m
//  UIClolorCategory
//
//  Created by apple on 17/1/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "ModifyVC.h"
#import "UIColor+JKModify.h"

@interface ModifyVC ()
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *viewArr;

@end

@implementation ModifyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIView *invertView = self.viewArr[0];
    invertView.backgroundColor = [invertView.backgroundColor jk_invertedColor];
    
    UIView *translucencyView = self.viewArr[1];
    translucencyView.backgroundColor = [translucencyView.backgroundColor jk_colorForTranslucency];

    UIView *lightenView = self.viewArr[2];
    lightenView.backgroundColor = [lightenView.backgroundColor jk_lightenColor:0];
    
    UIView *darkenView = self.viewArr[3];
    darkenView.backgroundColor = [darkenView.backgroundColor jk_darkenColor:1];
}
- (IBAction)backToLastPage:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
