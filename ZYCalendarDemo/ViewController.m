//
//  ViewController.m
//  ZYCalendarDemo
//
//  Created by 郑亚 on 2018/9/27.
//  Copyright © 2018年 郑亚. All rights reserved.
//

#import "ViewController.h"
#import "ZYCalendarView.h"
@interface ViewController ()<ZYCalendarDelegate>
@property (nonatomic, strong) UIButton * nextC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton * calendarBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [calendarBtn setTitle:@"日期选择" forState:UIControlStateNormal];
    calendarBtn.frame = CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width, 40);
    [calendarBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [calendarBtn addTarget:self action:@selector(calendarClick:) forControlEvents:UIControlEventTouchUpInside];
    self.nextC = calendarBtn;
    [self.view addSubview:self.nextC];
    
}
- (void)calendarClick:(UIButton *)btn{
    [[ZYCalendarView shareView] showView:self.view Delegate:self type:@"1"];
    
}
- (void)ZYCalendarDelegate:(NSString *)benTime endT:(NSString *)endTime{
    NSLog(@"开始 == %@ -- 结束 == %@",benTime,endTime);
    NSString * benTStr = [NSString stringWithFormat:@"%@",benTime];
    NSString * endTStr = [NSString stringWithFormat:@"%@",endTime];
    if (benTStr == nil) {
        benTStr = @"";
    }
    if (endTStr == nil) {
        endTStr = @"";
    }
    [self.nextC setTitle:[NSString stringWithFormat:@"%@至%@",benTStr,endTStr] forState:UIControlStateNormal];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
