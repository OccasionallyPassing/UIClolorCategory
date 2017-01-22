//
//  ViewController.m
//  UIClolorCategory
//
//  Created by apple on 17/1/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "ViewController.h"
#import "RGBAndHex.h"
#import "RandomVC.h"
#import "GradientVC.h"
#import "ModifyVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClick:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
        {
            RGBAndHex *vc = [[RGBAndHex alloc]init];
            [self presentViewController:vc animated:YES completion:nil];
        }
            break;
        case 2:
        {
            RandomVC *vc = [[RandomVC alloc]init];
            [self presentViewController:vc animated:YES completion:nil];
        }
            break;
        case 3:
        {
            GradientVC *vc = [[GradientVC alloc]init];
            [self presentViewController:vc animated:YES completion:nil];
        }
            break;

        case 4:
        {
            RandomVC *vc = [[RandomVC alloc]init];
            [self presentViewController:vc animated:YES completion:nil];
        }
            break;

        case 5:
        {
            ModifyVC *vc = [[ModifyVC alloc]init];
            [self presentViewController:vc animated:YES completion:nil];
        }
            break;

        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
