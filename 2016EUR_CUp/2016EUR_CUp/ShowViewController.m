//
//  ShowViewController.m
//  2016EUR_CUp
//
//  Created by Zhang Xia Dong on 7/15/16.
//  Copyright © 2016 Zhang Xia Dong. All rights reserved.
//

#import "ShowViewController.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface ShowViewController ()
{
    UIImageView *topView;
}

@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *lable=[[UILabel alloc] initWithFrame:CGRectMake(100, 10, 200, 100)];
    lable.text=@"2016欧洲杯热点新闻";
    
    
    topView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [self.view addSubview:topView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
