#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
      bool gameOn = true;
      printf("MATHS!");
      ScoreKeeper *scoreKeeper = [ScoreKeeper alloc];
        
      while(gameOn)
      {
          AdditionQuestion *question = [[AdditionQuestion alloc]init];
          NSLog(@"%@", question.question);

          InputHandler *input = [InputHandler alloc];
          
          NSString *userInput = input.getUserInput;
          
          if([userInput isEqualToString:(@"quit")])
          {
              gameOn = false;
              continue;
          }
          
        NSInteger userInputInt = [userInput intValue];
          
          if(userInputInt == question.answer)
          {
              NSLog(@"RIGHT!");
              scoreKeeper.rightCount++;
              NSLog(@"%@", scoreKeeper.getScore);
          }
          else
          {
              NSLog(@"WRONG!");
              scoreKeeper.wrongCount++;
              NSLog(@"%@", scoreKeeper.getScore);
          }
      }
    }
    return 0;
}
