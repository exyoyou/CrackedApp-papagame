.class public Lcom/papa91/arc/widget/MyFrameAnimation;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private maxDuration:I

.field private onFrameAnimationListener:Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/arc/widget/MyFrameAnimation$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/papa91/arc/widget/MyFrameAnimation$1;-><init>(Lcom/papa91/arc/widget/MyFrameAnimation;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->runnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/widget/MyFrameAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/widget/MyFrameAnimation;->initHandler()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/papa91/arc/widget/MyFrameAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/widget/MyFrameAnimation;->unRunning()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getMaxDuration()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->maxDuration:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->maxDuration:I

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->maxDuration:I

    .line 26
    .line 27
    const/16 v1, 0x3e8

    .line 28
    .line 29
    if-le v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x3e8

    .line 32
    .line 33
    :cond_2
    return v0
.end method

.method private initHandler()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->runnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget v2, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->maxDuration:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/papa91/arc/widget/MyFrameAnimation;->getMaxDuration()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :cond_0
    int-to-long v2, v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private unRunning()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->onFrameAnimationListener:Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;->onEnd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->runnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public setOnFrameAnimationListener(Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->onFrameAnimationListener:Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/widget/MyFrameAnimation;->initHandler()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation;->onFrameAnimationListener:Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/papa91/arc/widget/MyFrameAnimation$OnFrameAnimationListener;->onStart()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
