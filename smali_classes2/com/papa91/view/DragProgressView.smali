.class public Lcom/papa91/view/DragProgressView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/DragProgressView$OnProduceListener;
    }
.end annotation


# instance fields
.field private INTERVAL:J

.field private SIGNAL_MAX:I

.field private dragView:Landroid/view/View;

.field private first:I

.field private init_first_box_time:I

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnProduceListener:Lcom/papa91/view/DragProgressView$OnProduceListener;

.field private max_time_interval:I

.field private min_time_interval:I

.field private progress:Lcom/papa91/view/RoundedRectangularProgressView;

.field private signal:I

.field private signal1:Landroid/widget/ImageView;

.field private signal2:Landroid/widget/ImageView;

.field private signal3:Landroid/widget/ImageView;

.field private spark:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/papa91/view/DragProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    const-wide/32 v0, 0xea60

    .line 4
    iput-wide v0, p0, Lcom/papa91/view/DragProgressView;->INTERVAL:J

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/view/DragProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/DragProgressView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/DragProgressView;->dragView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/view/DragProgressView;)Lcom/papa91/view/RoundedRectangularProgressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/view/DragProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/papa91/view/DragProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method disableSpark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method enableSpark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method getDimension(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    return p1
.end method

.method public getSignal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 2
    .line 3
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/papa91/mix/R$layout;->drag_progress_view:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/papa91/mix/R$id;->progress:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/papa91/view/RoundedRectangularProgressView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 29
    .line 30
    sget v0, Lcom/papa91/mix/R$id;->spark:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->spark:Landroid/widget/ImageView;

    .line 39
    .line 40
    sget v0, Lcom/papa91/mix/R$id;->signal1:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->signal1:Landroid/widget/ImageView;

    .line 49
    .line 50
    sget v0, Lcom/papa91/mix/R$id;->signal2:I

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->signal2:Landroid/widget/ImageView;

    .line 59
    .line 60
    sget v0, Lcom/papa91/mix/R$id;->signal3:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->signal3:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/papa91/view/DragProgressView;->dragView:Landroid/view/View;

    .line 74
    .line 75
    new-instance p1, Lcom/papa91/view/DragProgressView$1;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Lcom/papa91/view/DragProgressView$1;-><init>(Lcom/papa91/view/DragProgressView;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 84
    .line 85
    new-instance v0, Lcom/papa91/view/DragProgressView$2;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/papa91/view/DragProgressView$2;-><init>(Lcom/papa91/view/DragProgressView;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/papa91/view/RoundedRectangularProgressView;->setOnProgressListener(Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method removeAnimate(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lcom/papa91/mix/R$drawable;->ic_gray_jb:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/papa91/view/DragProgressView$3;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/papa91/view/DragProgressView$3;-><init>(Lcom/papa91/view/DragProgressView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/view/DragProgressView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->enableSpark()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->resume()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setInterval(III)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/papa91/view/DragProgressView;->init_first_box_time:I

    .line 4
    iput p2, p0, Lcom/papa91/view/DragProgressView;->min_time_interval:I

    .line 5
    iput p3, p0, Lcom/papa91/view/DragProgressView;->max_time_interval:I

    return-void
.end method

.method public setInterval(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/DragProgressView;->INTERVAL:J

    .line 2
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/papa91/view/RoundedRectangularProgressView;->setInterval(J)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnProduceListener(Lcom/papa91/view/DragProgressView$OnProduceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView;->mOnProduceListener:Lcom/papa91/view/DragProgressView$OnProduceListener;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->setProgress(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSignal(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 7
    .line 8
    if-le p1, v1, :cond_1

    .line 9
    .line 10
    move p1, v1

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    new-array v1, p1, [Landroid/widget/ImageView;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/papa91/view/DragProgressView;->signal1:Landroid/widget/ImageView;

    .line 17
    .line 18
    aput-object v2, v1, v0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/papa91/view/DragProgressView;->signal2:Landroid/widget/ImageView;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    iget-object v3, p0, Lcom/papa91/view/DragProgressView;->signal3:Landroid/widget/ImageView;

    .line 27
    .line 28
    aput-object v3, v1, v2

    .line 29
    .line 30
    :goto_1
    if-ge v0, p1, :cond_3

    .line 31
    .line 32
    iget v2, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 33
    .line 34
    if-ge v0, v2, :cond_2

    .line 35
    .line 36
    aget-object v2, v1, v0

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/papa91/view/DragProgressView;->startAnimate(Landroid/widget/ImageView;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    aget-object v2, v1, v0

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/papa91/view/DragProgressView;->removeAnimate(Landroid/widget/ImageView;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget p1, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 51
    .line 52
    iget v0, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 53
    .line 54
    if-lt p1, v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method public setSignalMax(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 7
    .line 8
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 9
    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/papa91/view/DragProgressView;->signal:I

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/view/DragProgressView;->SIGNAL_MAX:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p0, Lcom/papa91/view/DragProgressView;->first:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/papa91/view/DragProgressView;->init_first_box_time:I

    .line 16
    .line 17
    mul-int/lit16 v0, v0, 0x3e8

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/papa91/view/DragProgressView;->first:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/util/Random;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/papa91/view/DragProgressView;->max_time_interval:I

    .line 29
    .line 30
    iget v2, p0, Lcom/papa91/view/DragProgressView;->min_time_interval:I

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v1, p0, Lcom/papa91/view/DragProgressView;->min_time_interval:I

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    mul-int/lit16 v0, v0, 0x3e8

    .line 41
    .line 42
    :goto_0
    iget-object v1, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    int-to-long v2, v0

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/papa91/view/RoundedRectangularProgressView;->setInterval(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->start()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->enableSpark()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method startAnimate(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lcom/papa91/mix/R$drawable;->gif_gd_gg_animation:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView;->progress:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/view/RoundedRectangularProgressView;->stop()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa91/view/DragProgressView;->disableSpark()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
