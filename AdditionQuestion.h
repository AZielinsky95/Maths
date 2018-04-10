//
//  AdditionQuestion.h
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property NSInteger answer;

-(int)getRandomNumberBetween:(int)from and:(int)to;

@end
