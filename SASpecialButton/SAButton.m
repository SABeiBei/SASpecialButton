//
//  SAButton.m
//  SASpecialButton
//
//  Created by Andy on 15/9/17.
//  Copyright (c) 2015年 Andy. All rights reserved.
//

#import "SAButton.h"

@interface SAButton()

@property (nonatomic, strong) UILabel   *beforeClickLabel;  //点击前展示的label
@property (nonatomic, strong) UILabel   *afterClickLabel;   //点击后展示的label

@end

@implementation SAButton

// 重写button创建的方法
+(id)buttonWithType:(UIButtonType)buttonType {
    
    SAButton *button = [[SAButton alloc] init];

    return button;
}

-(instancetype)init {
    
    self = [super init];
    if (self) {
        [self prepareSubviews];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self prepareSubviews];
    }
    return self;
}

- (void)prepareSubviews {
    
    _beforeClickLabel = [[UILabel alloc] initWithFrame:self.bounds];
    _beforeClickLabel.textAlignment = NSTextAlignmentCenter;
    _beforeClickLabel.backgroundColor = [UIColor clearColor];
    _beforeClickLabel.alpha = 1;
    [self addSubview:_beforeClickLabel];
    
    _afterClickLabel = [[UILabel alloc] initWithFrame:self.bounds];
    _afterClickLabel.textAlignment = NSTextAlignmentCenter;
    _afterClickLabel.backgroundColor = [UIColor clearColor];
    _afterClickLabel.alpha = 0;
    [self addSubview:_afterClickLabel];
}

// 重写button方法
-(void)setTitle:(NSString *)title forState:(UIControlState)state {
    
    _beforeClickLabel.text = title;
    _afterClickLabel.text = title;
}
-(void)setTitleColor:(UIColor *)color forState:(UIControlState)state {
    
    _beforeClickLabel.textColor = color;
    _afterClickLabel.textColor = color;
}

// 改变button展示的内容，带动画效果
- (void)changeButtonText:(NSString *)text {
    
    _afterClickLabel.text = text;
    [UIView animateWithDuration:1.5 animations:^{
        _beforeClickLabel.alpha = 0;
        _afterClickLabel.alpha = 1;
    }];
    [self swapSub2Labels];
}

// 交换2个label的指针
- (void)swapSub2Labels {
    
    UILabel *tmpLabel = _beforeClickLabel;
    _beforeClickLabel = _afterClickLabel;
    _afterClickLabel = tmpLabel;
}


@end
