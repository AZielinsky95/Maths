//
//  QuestionFactory.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    

      
        
    }
    return self;
}

-(Question*)generateRandomQuestion
{
    NSInteger randNum = arc4random_uniform(4);
    return [[NSClassFromString([_questionSubclassNames objectAtIndex:(randNum)]) alloc]init];
}
@end
