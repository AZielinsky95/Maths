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
    NSString *result = [NSString stringWithFormat:@"score: %d right ,%d wrong",self.rightCount,self.wrongCount];
    
    return result;
}
@end
