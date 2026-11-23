.class public Lcom/join/mgps/customview/GifView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final l:I = 0x3e8


# instance fields
.field private b:Landroid/graphics/Movie;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/GifView;->c:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/customview/GifView;->d:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/GifView;->g:I

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/GifView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/GifView;->c:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/join/mgps/customview/GifView;->d:J

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/GifView;->g:I

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/GifView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/GifView;->c:I

    const-wide/16 p2, 0x0

    .line 17
    iput-wide p2, p0, Lcom/join/mgps/customview/GifView;->d:J

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 20
    iput p1, p0, Lcom/join/mgps/customview/GifView;->g:I

    .line 21
    iput p1, p0, Lcom/join/mgps/customview/GifView;->h:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/GifView;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/customview/GifView;->k:F

    .line 12
    .line 13
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/customview/GifView;->i:F

    .line 19
    .line 20
    iget v2, p0, Lcom/join/mgps/customview/GifView;->k:F

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    iget v3, p0, Lcom/join/mgps/customview/GifView;->j:F

    .line 24
    .line 25
    div-float/2addr v3, v2

    .line 26
    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget v2, p0, Lcom/join/mgps/customview/GifView;->c:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/join/mgps/customview/GifView;->d:J

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public f()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/customview/GifView;->d:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/join/mgps/customview/GifView;->d:J

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const/16 v2, 0x3e8

    .line 24
    .line 25
    :cond_1
    iget-wide v3, p0, Lcom/join/mgps/customview/GifView;->d:J

    .line 26
    .line 27
    sub-long/2addr v0, v3

    .line 28
    int-to-long v2, v2

    .line 29
    rem-long/2addr v0, v2

    .line 30
    long-to-int v1, v0

    .line 31
    iput v1, p0, Lcom/join/mgps/customview/GifView;->c:I

    .line 32
    .line 33
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/GifView;->f:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/GifView;->f()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GifView;->a(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/customview/GifView;->b()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GifView;->a(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget p2, p0, Lcom/join/mgps/customview/GifView;->g:I

    .line 9
    .line 10
    sub-int/2addr p1, p2

    .line 11
    int-to-float p1, p1

    .line 12
    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr p1, p2

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/GifView;->i:F

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget p3, p0, Lcom/join/mgps/customview/GifView;->h:I

    .line 22
    .line 23
    sub-int/2addr p1, p3

    .line 24
    int-to-float p1, p1

    .line 25
    div-float/2addr p1, p2

    .line 26
    iput p1, p0, Lcom/join/mgps/customview/GifView;->j:F

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 38
    .line 39
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/GifView;->b:Landroid/graphics/Movie;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-le v0, p1, :cond_0

    .line 28
    .line 29
    int-to-float v2, v0

    .line 30
    int-to-float p1, p1

    .line 31
    div-float/2addr v2, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    .line 35
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-le v1, p1, :cond_1

    .line 46
    .line 47
    int-to-float p2, v1

    .line 48
    int-to-float p1, p1

    .line 49
    div-float/2addr p2, p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 52
    .line 53
    :goto_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    div-float/2addr v3, p1

    .line 58
    iput v3, p0, Lcom/join/mgps/customview/GifView;->k:F

    .line 59
    .line 60
    int-to-float p1, v0

    .line 61
    mul-float p1, p1, v3

    .line 62
    .line 63
    float-to-int p1, p1

    .line 64
    iput p1, p0, Lcom/join/mgps/customview/GifView;->g:I

    .line 65
    .line 66
    int-to-float p2, v1

    .line 67
    mul-float p2, p2, v3

    .line 68
    .line 69
    float-to-int p2, p2

    .line 70
    iput p2, p0, Lcom/join/mgps/customview/GifView;->h:I

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/GifView;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedView",
            "visibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/GifView;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/GifView;->e:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/GifView;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
