//
//  ViewController.m
//  question
//
//  Created by liyong on 15/6/15.
//  Copyright (c) 2015年 Quguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property(nonatomic,copy) NSArray *question;
@property(nonatomic,copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic,weak) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.question= @[@"趣果好不好",@"你是不是个傻逼",@"你是不是弱智"];
    self.answers=@[@"好",@"yes",@"yes!"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender{
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex ==[self.question count]) {
        self.currentQuestionIndex=0;
    }
    
    NSString *question = self.question[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text=@"你猜，傻逼";
}

- (IBAction)showAnswer:(id)sender{
    
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
    
}


@end
