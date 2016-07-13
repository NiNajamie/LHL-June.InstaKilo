//
//  Photo.m
//  LHL-June.InstaKilo
//
//  Created by Asuka Nakagawa on 2016-07-13.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithImage:(UIImage*)image subject:(NSString *)subject location:(NSString *)location
{
    self = [super init];
    if (self) {
        _image = image;
        _subject = subject;
        _location = location;
    }
    return self;
}

@end
