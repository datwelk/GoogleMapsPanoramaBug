//
//  ViewController.m
//  PanoramaViewCrash
//
//  Created by Damiaan Twelker on 24/05/2018.
//  Copyright © 2018 Damiaan Twelker. All rights reserved.
//

#import "ViewController.h"

@import GoogleMaps;

@implementation ViewController {
    GMSPanoramaView *_panoView;
}

- (void)loadView
{
    GMSPanoramaView *view = [GMSPanoramaView new];
    self.view = view;
    _panoView = view;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_panoView moveNearCoordinate:CLLocationCoordinate2DMake(52.379237199999999, 4.82167759999993) radius:50];
}

@end
