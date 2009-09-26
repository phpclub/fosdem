//
//  LHLecture.m
//  fosdem
//
//  Created by Leon on 9/26/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "LHLecture.h"


@implementation LHLecture

@synthesize title, speaker, descriptionPage, startDate, endDate;

- (LHLecture *)init {
    if (self = [super init]) {
        [self setTitle: @""];
        [self setSpeaker: @""];
        [self setDescriptionPage: @""];
        [self setStartDate: [NSDate date]];
        [self setEndDate: [NSDate date]];
    }
    return self;
}

- (LHLecture *) initWithDictionary: (NSDictionary *) dictionary {
    if (self = [self init]) {
        [self setTitle: [dictionary valueForKey: @"title"]];
        [self setSpeaker: [dictionary valueForKey: @"speaker"]];
        [self setDescriptionPage: [dictionary valueForKey: @"descriptionPage"]];
        [self setStartDate: [dictionary valueForKey: @"startDate"]];
        [self setEndDate: [dictionary valueForKey: @"endDate"]];
    }
    return self;
}
@end