//
//  ScoreKeeper.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString*)getScore
{
    float scorePercentage = ((float)_rightCount / (_wrongCount + _rightCount)) * 100;
    
    NSString *result = [NSString stringWithFormat:@"score: %d right ,%d wrong -- %0.2f%%",_rightCount,_wrongCount,scorePercentage];
    
    return result;
}
@end
