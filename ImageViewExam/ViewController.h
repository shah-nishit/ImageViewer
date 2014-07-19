//
//  ViewController.h
//  ImageViewExam
//
//  Created by User1 on 2014-06-20.
//  Copyright (c) 2014 YB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btnMove:(id)sender;
- (IBAction)btnSwitch:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@end
