@interface SBIconLegibilityLabelView : UIView
@end


%hook SBIconLegibilityLabelView

-(void)setHidden:(BOOL)arg1 {
    %orig(YES);
}

%end
