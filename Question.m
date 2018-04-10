//
//  AdditionQuestion.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    if (self = [super init])
    {
        _leftValue = [self getRandomNumberBetween:10 and:100];
        _rightValue = [self getRandomNumberBetween:10 and:100];
        
//        NSString *q = [NSString stringWithFormat:@"%d + %d",_leftValue,_rightValue];
//
//        _question = q;
//
//        _answer = (NSInteger)_leftValue + (NSInteger)_rightValue;
//
        _startTime = [NSDate date];
    }
    return self;
}

-(void)generateQuestion
{
    
}

- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime
{
    return [_endTime timeIntervalSinceDate:(_startTime)];
}

-(int)getRandomNumberBetween:(int)from and:(int)to {
    
    return (int)from + arc4random() % (to-from+1);
}
@end
