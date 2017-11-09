//
//  StatesTableViewCell.h
//  United States
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatesTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *Flagimage;
@property (weak, nonatomic) IBOutlet UILabel *StateName;
@property (weak, nonatomic) IBOutlet UILabel *StateMoto;

@end
