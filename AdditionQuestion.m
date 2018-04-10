//
//  AdditionQuestion.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "AdditionQuestion.h"


@implementation AdditionQuestion 

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion
{
    NSString *q = [NSString stringWithFormat:@"%ld + %ld",(long)super.leftValue,super.rightValue];

    self.answer = super.leftValue + super.rightValue;
    self.question = q;
}

@end
