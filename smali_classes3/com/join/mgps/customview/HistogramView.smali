.class public Lcom/join/mgps/customview/HistogramView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private b:I

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:D

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/HistogramView;->k:Z

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/HistogramView;->l:Landroid/os/Handler;

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/HistogramView;->k:Z

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/HistogramView;->l:Landroid/os/Handler;

    const/16 p2, 0x14

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->n:I

    return-void
.end method

.method private a(Landroid/graphics/Paint;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paint",
            "isAnim"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/HistogramView;->l:Landroid/os/Handler;

    .line 13
    .line 14
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->n:I

    .line 15
    .line 16
    int-to-long v0, v0

    .line 17
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->i:I

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->o:Landroid/graphics/Canvas;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->b:I

    .line 28
    .line 29
    div-int/lit8 v2, p2, 0x4

    .line 30
    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    iget v3, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    mul-int/lit8 p2, p2, 0x3

    .line 38
    .line 39
    div-int/lit8 p2, p2, 0x4

    .line 40
    .line 41
    add-int/lit8 p2, p2, 0x1

    .line 42
    .line 43
    int-to-float v4, p2

    .line 44
    move-object v5, p1

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 50
    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->o:Landroid/graphics/Canvas;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iget p2, p0, Lcom/join/mgps/customview/HistogramView;->b:I

    .line 57
    .line 58
    div-int/lit8 v2, p2, 0x4

    .line 59
    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    int-to-float v2, v2

    .line 63
    const/high16 v3, 0x41200000    # 10.0f

    .line 64
    .line 65
    mul-int/lit8 p2, p2, 0x3

    .line 66
    .line 67
    div-int/lit8 p2, p2, 0x4

    .line 68
    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    int-to-float v4, p2

    .line 72
    move-object v5, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/customview/HistogramView;->o:Landroid/graphics/Canvas;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->b:I

    .line 81
    .line 82
    div-int/lit8 v1, v0, 0x4

    .line 83
    .line 84
    add-int/lit8 v1, v1, -0x1

    .line 85
    .line 86
    int-to-float v7, v1

    .line 87
    int-to-float v8, p2

    .line 88
    mul-int/lit8 v0, v0, 0x3

    .line 89
    .line 90
    div-int/lit8 v0, v0, 0x4

    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    int-to-float v9, v0

    .line 95
    move-object v10, p1

    .line 96
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/HistogramView;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAnimRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgress()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/HistogramView;->j:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRateBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRateBackgroundId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getRateHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getRateView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRateWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->o:Landroid/graphics/Canvas;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->d:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/join/mgps/customview/HistogramView;->k:Z

    .line 25
    .line 26
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/HistogramView;->a(Landroid/graphics/Paint;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->b:I

    .line 5
    .line 6
    iget p3, p0, Lcom/join/mgps/customview/HistogramView;->i:I

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    int-to-double p3, p1

    .line 11
    iget-wide v0, p0, Lcom/join/mgps/customview/HistogramView;->j:D

    .line 12
    .line 13
    mul-double p3, p3, v0

    .line 14
    .line 15
    double-to-int p1, p3

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 17
    .line 18
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    int-to-double p2, p2

    .line 22
    iget-wide v0, p0, Lcom/join/mgps/customview/HistogramView;->j:D

    .line 23
    .line 24
    mul-double p2, p2, v0

    .line 25
    .line 26
    double-to-int p2, p2

    .line 27
    iput p2, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    .line 28
    .line 29
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    .line 6
    .line 7
    iget v2, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 8
    .line 9
    if-gt v1, v2, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    .line 24
    .line 25
    iget v1, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    .line 26
    .line 27
    if-gt v0, v1, :cond_1

    .line 28
    .line 29
    iget v1, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/HistogramView;->l:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/join/mgps/customview/HistogramView;->h:I

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public setAnim(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAnim"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/HistogramView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAnimRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animRate"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/HistogramView;->j:D

    .line 2
    .line 3
    return-void
.end method

.method public setRateBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rateBackgroundColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->d:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public setRateBackgroundId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rateBackground"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->e:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->d:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setRateHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rateHeight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setRateView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rateView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HistogramView;->c:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setRateWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rateWidth"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/HistogramView;->g:I

    .line 2
    .line 3
    return-void
.end method
