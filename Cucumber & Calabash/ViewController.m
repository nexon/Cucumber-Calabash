//
//  ViewController.m
//  Cucumber & Calabash
//
//  Created by Alberto Lagos on 15-04-15.
//  Copyright (c) 2015 Alberto Lagos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UISlider *ageSlider;
- (IBAction)pressMeDidPress:(id)sender;

- (IBAction)sliderDidChange:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressMeDidPress:(id)sender {
    [self performSegueWithIdentifier:@"toSecondViewController" sender:self];
}

- (IBAction)sliderDidChange:(id)sender {
    self.ageLabel.text = [NSString stringWithFormat:@"%f", self.ageSlider.value];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqual:@"toSecondViewController"]) {
        SecondViewController *vc = segue.destinationViewController;
        vc.title = self.nameField.text;
    }
}
@end
