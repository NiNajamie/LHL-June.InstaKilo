//
//  ViewController.m
//  LHL-June.InstaKilo
//
//  Created by Asuka Nakagawa on 2016-07-13.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ViewController.h"
#import "Photo.h"

@interface ViewController ()

@property (nonatomic) CollectionViewCell *cell;
@property (nonatomic) NSArray *PhotoList;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    Photo *photo1 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"squirrel.JPG"] subject:@"animal" location:@"Burnaby"];
    Photo *photo2 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"skillsBC.JPG"] subject:@"people" location:@"Abbotsford"];
    Photo *photo3 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"denish.JPG"] subject:@"kitchen" location:@"Burnaby"];
    Photo *photo4 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"hedgehog.JPG"] subject:@"animal" location:@"Burnaby"];
    Photo *photo5 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"grilledcheese.JPG"] subject:@"kitchen" location:@"Vancouver"];
    Photo *photo6 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"canucks.JPG"] subject:@"sports" location:@"Vancouver"];
    Photo *photo7 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"cat.JPG"] subject:@"animal" location:@"Burnaby"];
    Photo *photo8 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"tacos.JPG"] subject:@"kitchen" location:@"Burnaby"];
    Photo *photo9 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"deer.JPG"] subject:@"animal" location:@"Burnaby"];
    Photo *photo10 = [[Photo alloc] initWithImage:[UIImage imageNamed:@"spaghetti.JPG"] subject:@"kitchen" location:@"Burnaby"];
    
    self.PhotoList = [NSArray arrayWithObjects:photo1,photo2,photo3,photo4,photo5,photo6,photo7,photo8,photo9,photo10, nil];
    

}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.PhotoList.count;
}

// matching a cell to a image from PhotoObjects
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                                               forIndexPath:indexPath];
    Photo *photo = [self.PhotoList objectAtIndex:indexPath.item];
    cell.imageView.image = photo.image;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/

@end
