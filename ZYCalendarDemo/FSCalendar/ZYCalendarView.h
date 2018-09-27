//
//  ZYCalendarView.h
//  MasonryDemo
//
//  Created by 郑亚 on 2018/9/27.
//  Copyright © 2018年 郑亚. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZYCalendarDelegate <NSObject>
- (void)ZYCalendarDelegate:(NSString *)benTime endT:(NSString *)endTime;
@end
@interface ZYCalendarView : UIView
@property (nonatomic, assign) id<ZYCalendarDelegate>delegate;

+ (ZYCalendarView *)shareView;
- (void)showView:(UIView *)addV
        Delegate:(id<ZYCalendarDelegate>)delegate
            type:(NSString *)type;
- (void)hidens;
@end
