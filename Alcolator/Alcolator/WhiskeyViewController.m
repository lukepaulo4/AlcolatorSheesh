//
//  WhiskeyViewController.m
//  Alcolator
//
//  Created by Luke Paulo on 6/6/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "WhiskeyViewController.h"

@interface WhiskeyViewController ()

@end

@implementation WhiskeyViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.beerPercentTextField resignFirstResponder];
//    
//    int numberOfBeersTitle = self.beerCountSlider.value;
//    int ouncesInOneBeerGlassTitle = 12;  //assume they are 12oz beer bottles
//    
//    float alcoholPercentageOfBeerTitle = [self.beerPercentTextField.text floatValue] / 100;
//    float ouncesOfAlcoholPerBeerTitle = ouncesInOneBeerGlassTitle * alcoholPercentageOfBeerTitle;
//    float ouncesOfAlcoholTotalTitle = ouncesOfAlcoholPerBeerTitle * numberOfBeersTitle;
//    
//    float ouncesInOneWhiskeyGlassTitle = 1;  // a 1oz shot
//    float alcoholPercentageOfWhiskeyTitle = 0.4;  // 40% is average
//    
//    float ouncesOfAlcoholPerWhiskeyGlassTitle = ouncesInOneWhiskeyGlassTitle * alcoholPercentageOfWhiskeyTitle;
//    float numberOfWhiskeyGlassesForEquivalentAlcoholAmountTitle = ouncesOfAlcoholTotalTitle / ouncesOfAlcoholPerWhiskeyGlassTitle;
//    NSString *beerTextTitle;
//    
//    if (numberOfBeersTitle == 1) {
//        beerTextTitle = NSLocalizedString(@"beer", @"singular beer");
//    } else {
//        beerTextTitle = NSLocalizedString(@"beers", @"plural of beer");
//    }
//    
//    NSString *whiskeyTextTitle;
//    
//    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmountTitle == 1) {
//        whiskeyTextTitle = NSLocalizedString(@"shot", @"singular shot");
//    } else {
//        whiskeyTextTitle = NSLocalizedString(@"shots", @"plural of shot");
//    }
//    
//    NSString *whiskeyTitle = [NSString stringWithFormat:@"Whiskey (%f %@)", numberOfWhiskeyGlassesForEquivalentAlcoholAmountTitle, whiskeyTextTitle];
//    
//    self.navigationItem.title = whiskeyTitle;
    self.navigationItem.title = @"Whiskey";
    
}

- (void)buttonPressed:(UIButton *)sender;
{
    
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12;  //assume they are 12oz beer bottles
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWhiskeyGlass = 1;  // a 1oz shot
    float alcoholPercentageOfWhiskey = 0.4;  // 40% is average
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers < 2) {
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    NSString *whiskeyText;
    
    
    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmount < 2) {
        whiskeyText = NSLocalizedString(@"shot", @"singular shot");
    } else {
        whiskeyText = NSLocalizedString(@"shots", @"plural of shot");
    }
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of whiskey.", nil), numberOfBeers, beerText, [self.beerPercentTextField.text floatValue], numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    self.resultLabel.text = resultText;

    //NSString *whiskeyTitle = [NSString stringWithFormat:@"Whiskey (%ld %@)", (NSInteger)numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    
    //self.navigationItem.title = whiskeyTitle;
    
}
- (void)sliderValueDidChange:(UISlider *)sender {
    NSLog(@"Slider value changed to %f", sender.value);
    //[self.beerPercentTextField resignFirstResponder];
    // first, calculate how much alcohol is in all those beers...
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12;  //assume they are 12oz beer bottles
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWhiskeyGlass = 1;  // a 1oz shot
    float alcoholPercentageOfWhiskey = 0.4;  // 40% is average
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers < 2) {
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    NSString *whiskeyText;
    
    
    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmount < 2) {
        whiskeyText = NSLocalizedString(@"shot", @"singular shot");
    } else {
        whiskeyText = NSLocalizedString(@"shots", @"plural of shot");
    }
    
    NSString *whiskeyTitle = [NSString stringWithFormat:@"Whiskey (%ld %@)", (NSInteger)numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    
    self.navigationItem.title = whiskeyTitle;
    
}

@end
