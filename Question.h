//
//  AdditionQuestion.h
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;

@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

-(void)generateQuestion;

-(int)getRandomNumberBetween:(int)from and:(int)to;

-(NSTimeInterval)answerTime;


@end
