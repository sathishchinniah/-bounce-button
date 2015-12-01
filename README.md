# Description

* A button will bonce when we press the button at every time


# -ScreenShot
![screen shot 2015-12-02 at 12 05 52 am](https://cloud.githubusercontent.com/assets/12906173/11510195/7d1362f0-9888-11e5-87c7-505de09e004c.png)

# Code

```
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // You might want to create your button from IB
    self.bouncyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.bouncyButton.bounds = CGRectMake(0.0f, 0.0f, 200.0f, 50.0f);
    self.bouncyButton.center = self.view.center;
    self.bouncyButton.backgroundColor = [UIColor blueColor];
    self.bouncyButton.titleLabel.font = [UIFont fontWithName:@"Chalkduster" size:32.0f];
    [self.bouncyButton setTitle:@"BOUNCE!" forState:UIControlStateNormal];
    [self.bouncyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.bouncyButton.layer.cornerRadius = 5.0f;
    
    [self.bouncyButton addTarget:self action:@selector(bouncyButtonTouchDown:) forControlEvents:UIControlEventTouchDown];
    [self.bouncyButton addTarget:self action:@selector(bouncyButtonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.bouncyButton addTarget:self action:@selector(bouncyButtonTouchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    
    [self.view addSubview:self.bouncyButton];
}

- (void)bouncyButtonTouchDown:(id)sender
{
    [UIView animateWithDuration:0.1 animations:^{
        self.bouncyButton.layer.transform = CATransform3DMakeScale(0.8, 0.8, 1.0);
    }];
}

- (void)bouncyButtonTouchUpInside:(id)sender
{
    [self restoreTransformWithBounceForView:self.bouncyButton];
    // Perform button actions
}

- (void)bouncyButtonTouchUpOutside:(id)sender
{
    [self restoreTransformWithBounceForView:self.bouncyButton];
}

- (void)restoreTransformWithBounceForView:(UIView*)view
{
    [UIView animateWithDuration:0.3
                          delay:0.0
         usingSpringWithDamping:0.3
          initialSpringVelocity:1.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^
     {
         self.bouncyButton.layer.transform = CATransform3DIdentity;
     }
                     completion:nil];
}
```
