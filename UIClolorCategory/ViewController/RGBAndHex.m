//
//  RGBAndHex.m
//  UIClolorCategory
//
//  Created by apple on 17/1/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "RGBAndHex.h"
#import "UIColor+JKHEX.h"

@interface RGBAndHex ()
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *viewArr;

@end

@implementation RGBAndHex

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIView *hexView = self.viewArr[0];
    hexView.backgroundColor = [UIColor jk_colorWithHex:0xFFB400];
    
    UIView *hexAlphaView = self.viewArr[1];
    hexAlphaView.backgroundColor = [UIColor jk_colorWithHex:0xFFB400 andAlpha:0.5];
    
    UIView *hexStringView = self.viewArr[2];
    hexStringView.backgroundColor = [UIColor jk_colorWithHexString:@"#FFB400"];
    
    UIView *hexSView = self.viewArr[3];
    hexSView.backgroundColor = [UIColor jk_colorWithHexString:[hexStringView.backgroundColor jk_HEXString]];
    
    
    UIView *RGBAlphaView = self.viewArr[4];
    RGBAlphaView.backgroundColor = [UIColor jk_colorWithWholeRed:255 green:180 blue:0 alpha:0.6];
    
    UIView *RGBView = self.viewArr[5];
    RGBView.backgroundColor = [UIColor jk_colorWithWholeRed:255 green:180 blue:0];
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
