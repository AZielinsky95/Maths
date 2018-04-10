//
//  ScoreKeeper.h
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int rightCount;
@property int wrongCount;

-(NSString *)getScore;

@end
