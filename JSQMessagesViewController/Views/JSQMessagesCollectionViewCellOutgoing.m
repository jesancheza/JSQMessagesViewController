//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesCollectionViewCellOutgoing.h"

@interface JSQMessagesCollectionViewCellOutgoing()

@property (unsafe_unretained, nonatomic) IBOutlet UIActivityIndicatorView *loadingIndicator;

@end

@implementation JSQMessagesCollectionViewCellOutgoing

#pragma mark - Overrides

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.messageBubbleTopLabel.textAlignment = NSTextAlignmentRight;
    self.cellBottomLabel.textAlignment = NSTextAlignmentRight;
}

-(void)setLoadingIndicatorVisibility:(BOOL)visible{
    if (visible){
        self.textView.alpha = 0.4;
        self.loadingIndicator.hidden = NO;
        [self.loadingIndicator startAnimating];
    }
    else {
        self.textView.alpha = 1.0;
        self.loadingIndicator.hidden = YES;
        [self.loadingIndicator stopAnimating];
    }
}

@end
