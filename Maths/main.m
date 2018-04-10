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
              NSLog(@"%@", scoreKeeper.getScore);
              continue;
          }
          
        NSInteger userInputInt = [userInput intValue];
          
          if(userInputInt == question.answer)
          {
              NSLog(@"RIGHT!");
              scoreKeeper.rightCount++;
      
          }
          else
          {
              NSLog(@"WRONG!");
              scoreKeeper.wrongCount++;
          }
      }
    }
    return 0;
}
