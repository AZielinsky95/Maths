//
//  QuestionFactory.h
//  Maths
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

-(Question*)generateRandomQuestion;

@end
