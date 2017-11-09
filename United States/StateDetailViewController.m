//
//  StateDetailViewController.m
//  United States
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "StateDetailViewController.h"
#import "StateInfo.h"

@interface StateDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *StateFlagImage;
@property (weak, nonatomic) IBOutlet UIImageView *Birdimage;
@property (weak, nonatomic) IBOutlet UILabel *lblDetailStateMotto;
@property (weak, nonatomic) IBOutlet UILabel *lblDetailStateCapital;
@property (weak, nonatomic) IBOutlet UILabel *lblDetailStatePopulation;
@property (weak, nonatomic) IBOutlet UILabel *lblStateName;
@property (weak, nonatomic) IBOutlet UILabel *lblBirdName;
@property (weak, nonatomic) IBOutlet UILabel *lblYear;

@end

@implementation StateDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"UnitedStatesBG"]];
    self.StateFlagImage.image = self.myStates.flag;
    self.lblDetailStateCapital.text = self.myStates.capital;
    self.lblDetailStateMotto.text = self.myStates.motto;
    self.lblDetailStatePopulation.text = self.myStates.population;
    self.lblStateName.text = self.myStates.name;
    self.lblBirdName.text = self.myStates.birdname;
    self.Birdimage.image = self.myStates.birdImage;
    
    // colors
    self.lblBirdName.backgroundColor = [UIColor blueColor];
    self.lblStateName.backgroundColor = [UIColor blueColor];
    self.lblDetailStatePopulation.backgroundColor = [UIColor blueColor];
    self.lblDetailStateMotto.backgroundColor = [UIColor blueColor];
    self.lblDetailStateCapital.backgroundColor = [UIColor blueColor];
    
    // text color
    self.lblBirdName.textColor = [UIColor whiteColor];
    self.lblStateName.textColor = [UIColor whiteColor];
    self.lblDetailStatePopulation.textColor = [UIColor whiteColor];
    self.lblDetailStateMotto.textColor = [UIColor whiteColor];
    self.lblDetailStateCapital.textColor = [UIColor whiteColor];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
