//
//  ViewController.m
//  ImageViewExam
//
//  Created by User1 on 2014-06-20.
//  Copyright (c) 2014 YB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (assign) BOOL imageSwitchFlag;
@property (assign) BOOL imageMoveFlag;
@property (assign) UIImage* goofy;
@property (assign) UIImage* popeye;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _goofy = [UIImage imageNamed:@"Goofy.jpg"];
    
    self.imageView1.image = _goofy;
    
    _popeye = [UIImage imageNamed:@"Popeye.jpg"];
    
    self.imageView2.image = _popeye;
    _imageSwitchFlag = TRUE;
    _imageMoveFlag = TRUE;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnMove:(id)sender {
    
        if(_imageMoveFlag)
    {
        self.imageView1.image = _popeye;
        [self.imageView1.layer addAnimation:[CATransition animation] forKey:kCATransition];
        
        self.imageView2.image = _goofy;
        [self.imageView2.layer addAnimation:[CATransition animation] forKey:kCATransition];
        _imageMoveFlag = FALSE;
    }
    else
    {
        self.imageView1.image = _goofy;
        [self.imageView1.layer addAnimation:[CATransition animation] forKey:kCATransition];
        
        self.imageView2.image = _popeye;
        [self.imageView2.layer addAnimation:[CATransition animation] forKey:kCATransition];

        _imageMoveFlag = TRUE;
    }
    
}

- (IBAction)btnSwitch:(id)sender {
    
    if(_imageSwitchFlag)
    {
        self.imageView1.image = _popeye;
        self.imageView2.image = _goofy;
        _imageSwitchFlag = FALSE;
    }
    else
    {
        self.imageView1.image = _goofy;
        self.imageView2.image = _popeye;
        _imageSwitchFlag = TRUE;
    }
    
    
}
@end
