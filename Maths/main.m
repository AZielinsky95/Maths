#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
      bool gameOn = true;
      printf("MATHS!");
      ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
      QuestionManager *questionManager = [[QuestionManager alloc] init];
      QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
      while(gameOn)
      {
          Question *question = [questionFactory generateRandomQuestion];
          
          [questionManager.questions addObject:(question)];
          
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
              NSLog(@"%@",[questionManager timeOutput]);
          }
          else
          {
              NSLog(@"WRONG!");
              NSLog(@"%@", scoreKeeper.getScore);
              scoreKeeper.wrongCount++;
          }
      }
    }
    return 0;
}
