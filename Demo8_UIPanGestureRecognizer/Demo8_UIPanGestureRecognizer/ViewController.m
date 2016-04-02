//
//  ViewController.m
//  Demo8_UIPanGestureRecognizer
//
//  Created by  江苏 on 16/2/29.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIPanGestureRecognizer* pan=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
    [self.view addGestureRecognizer:pan];
}
-(void)pan:(UIPanGestureRecognizer*)sender{
    CGPoint p1=[sender locationInView:self.view];
    self.imageView.center=p1;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
