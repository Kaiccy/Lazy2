//
//  AboutViewController.h
//  Lazy
//
//  Created by yinqijie on 15/10/8.
//  Copyright (c) 2015年 yinqijie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController


- (IBAction)backBt:(id)sender;
    /*
        关于我们
     */
@property (strong, nonatomic) IBOutlet UIImageView *logoImg;
@property (strong, nonatomic) IBOutlet UILabel *logoLb;
@property (strong, nonatomic) IBOutlet UITextView *introduceText;
@property (weak, nonatomic) IBOutlet UILabel *versionLb;

@end
