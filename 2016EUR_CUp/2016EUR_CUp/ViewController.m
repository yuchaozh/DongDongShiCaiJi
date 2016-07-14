//
//  ViewController.m
//  2016EUR_CUp
//
//  Created by Zhang Xia Dong on 7/14/16.
//  Copyright © 2016 Zhang Xia Dong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>

@property(nonatomic,strong)NSArray *dataArr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSString *path=[[NSBundle mainBundle] pathForResource:@"faces" ofType:@"plist"];
    self.dataArr=[NSArray arrayWithContentsOfFile:path];


    UITableView *tbView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    //tbView.backgroundColor=[UIColor greenColor];
    
    UIView *headerView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    UILabel *lable=[[UILabel alloc] initWithFrame:CGRectMake(100, 10, 200, 100)];
    lable.text=@"2016欧洲杯热点新闻";
    
    [headerView addSubview:lable];
    tbView.tableHeaderView=headerView;
    
    tbView.dataSource= self;
    [self.view addSubview:tbView];
    tbView.rowHeight=110;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *text1= @[@"沙奇里倒挂金钩领衔欧洲杯20佳进球",@"2016法时赛下半时的进球",@"北京时间7月1",@"凭借中锋埃德在加时赛下半",@"晨落幕葡萄牙",@"开场25分钟就因伤下"];
    UITableViewCell *cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"234567"];

    
    
   NSArray *text2= @[@"沙奇里倒挂金钩领衔欧洲杯20佳进球",@"2016法时赛下半时的进球",@"北京时间7月1",@"凭借中锋埃德在加时赛下半",@"晨落幕葡萄牙",@"开场25分钟就因伤下"];
    
    NSString *imgName=self.dataArr[indexPath.row];
    cell.imageView.image=[UIImage imageNamed:imgName];
    
    
    cell.textLabel.text=text1[indexPath.row];
    cell.detailTextLabel.text=text2[indexPath.row];
    //cell.detailTextLabel.text=[NSString stringWithFormat:@"00%ld",indexPath.row];
    return cell;
    
    
}


@end
