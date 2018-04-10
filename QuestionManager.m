//
//  QuestionManager.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString*)timeOutput
{
    Question *lastQuestion = [_questions lastObject];
    
    float m_TotalTime = 0;
    
    for(Question *q in _questions)
    {
        m_TotalTime += q.answerTime;
    }
    
    float m_AvgTime = m_TotalTime / _questions.count;
    
    return [NSString stringWithFormat:(@"total time: %0.0fs, average time: %0.0fs"),lastQuestion.answerTime,m_AvgTime];
}

@end
