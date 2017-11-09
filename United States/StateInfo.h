//
//  StateInfo.h
//  United States
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> // need it for ui image

@interface StateInfo : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *capital;
@property (strong, nonatomic) NSString *motto;
@property (strong, nonatomic) NSString *birdname;
@property (strong, nonatomic) NSString *population;
@property (strong, nonatomic) UIImage *birdImage;
@property (strong, nonatomic) UIImage *flag;

@end
