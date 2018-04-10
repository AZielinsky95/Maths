//
//  AdditionQuestion.m
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    if (self = [super init])
    {
        int num1 = [self getRandomNumberBetween:10 and:100];
        int num2 = [self getRandomNumberBetween:10 and:100];
        
        NSString *q = [NSString stringWithFormat:@"%d + %d",num1,num2];
        
        _question = q;
        
        _answer = (NSInteger)num1 + (NSInteger)num2;
        
        
    }
    return self;
}

-(int)getRandomNumberBetween:(int)from and:(int)to {
    
    return (int)from + arc4random() % (to-from+1);
}
@end
