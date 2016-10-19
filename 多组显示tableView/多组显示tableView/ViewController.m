//
//  ViewController.m
//  多组显示tableView
//
//  Created by MichaelLi on 2016/10/20.
//  Copyright © 2016年 手持POS机. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark
#pragma mark -  显示组
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    NSInteger row = 0;
    if (section == 0) {
        row = 30;
    }else if (section == 1)
    {
        row = 20;
    }else if (section == 2)
    {
        row = 10;
    }
    return row;
}
#pragma mark
#pragma mark -  显示行内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //实例化Cell
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    //取出indexPath

    /*
     通过第x组第x行来确定位置
     */
    NSInteger row = indexPath.row;
    if (indexPath.section ==0) {
        if (row ==0) {
            cell.textLabel.text = @"11111";
        }else if (row ==1)
        {
            cell.textLabel.text = @"22222";
        }else
        {
            cell.textLabel.text = @"3333";
        }

    }else if (indexPath.section == 1)
    {
        if (row ==0) {
            cell.textLabel.text = @"1";
        }else
        {
            cell.textLabel.text = @"2";
        }
    }else
    {
        cell.textLabel.text = @"3";
    }
    return cell;
}
#pragma mark
#pragma mark -  显示部分
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
#pragma mark
#pragma mark -  设置头
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{

    NSString *str =@"";
    switch (section) {
        case 0:
            str = @"1111";
            break;
        case 1:
            str = @"2222";
            break;

        case 2:
            str = @"3333";
            break;


        default:
            break;
    }
    return str;
}
#pragma mark
#pragma mark -  设置尾
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{

    NSString *str =@"";
    switch (section) {
        case 0:
            str = @"1111";
            break;
        case 1:
            str = @"2222";
            break;

        case 2:
            str = @"3333";
            break;


        default:
            break;
    }
    return str;
}

@end
