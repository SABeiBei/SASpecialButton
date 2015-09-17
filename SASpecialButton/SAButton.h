//
//  SAButton.h
//  SASpecialButton
//
//  Created by Andy on 15/9/17.
//  Copyright (c) 2015年 Andy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAButton : UIButton

/**
 *  动态改变button的title
 *
 *  @param text 要展示的内容
 */
- (void)changeButtonText:(NSString *)text;

@end
