.class Lcom/windmill/sdk/widget/SplashView_2002001$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashView_2002001;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/SplashView_2002001;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashView_2002001$8;->a:Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/windmill/sdk/models/ViewWrapper;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashView_2002001$8;->a:Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/windmill/sdk/models/ViewWrapper;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v3, v2, [Landroid/animation/Animator;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/windmill/sdk/widget/SplashView_2002001$8;->a:Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    filled-new-array {v4}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "width"

    .line 31
    .line 32
    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v1, v3, v4

    .line 38
    .line 39
    iget-object v1, p0, Lcom/windmill/sdk/widget/SplashView_2002001$8;->a:Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 40
    .line 41
    iget-object v5, v1, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeText:Landroid/widget/TextView;

    .line 42
    .line 43
    new-array v6, v2, [F

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    aput v7, v6, v4

    .line 47
    .line 48
    iget-object v1, v1, Lcom/windmill/sdk/widget/SplashView_2002001;->shakeLayout:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    div-int/2addr v1, v2

    .line 55
    add-int/lit8 v1, v1, -0xa

    .line 56
    .line 57
    int-to-float v1, v1

    .line 58
    const/4 v2, 0x1

    .line 59
    aput v1, v6, v2

    .line 60
    .line 61
    const-string v1, "translationX"

    .line 62
    .line 63
    invoke-static {v5, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    aput-object v1, v3, v2

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v1, 0xc8

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    .line 87
    .line 88
    return-void
.end method
