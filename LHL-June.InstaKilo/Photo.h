//
//  Photo.h
//  LHL-June.InstaKilo
//
//  Created by Asuka Nakagawa on 2016-07-13.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property (nonatomic) UIImage *image;
@property (nonatomic) NSString *subject;
@property (nonatomic) NSString *location;

- (instancetype)initWithImage:(UIImage*)image subject:(NSString *)subject location:(NSString *)location;

@end
