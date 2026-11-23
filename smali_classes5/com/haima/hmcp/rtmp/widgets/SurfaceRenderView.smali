.class public Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtmp/widgets/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;,
        Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderView"


# instance fields
.field private mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

.field private mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

.field private mSurfaceCallback:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 7
    .line 8
    new-instance p1, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;-><init>(Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mSurfaceCallback:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mSurfaceCallback:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mSurfaceCallback:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V
    .locals 2

    .line 1
    const-string v0, "SurfaceRenderView not support screen shot"

    .line 2
    .line 3
    const-string v1, "SurfaceRenderView"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "callback is null when getBitmp from RtmpSurfaceViewRenderer"

    .line 11
    .line 12
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$1;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$1;-><init>(Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->frameCapture(Ltv/haima/ijk/media/player/ijkFrameCaptureCallback;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public getLandscapeX(FF)F
    .locals 1

    .line 1
    new-instance p2, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 29
    .line 30
    .line 31
    sub-float/2addr p1, v0

    .line 32
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 33
    .line 34
    int-to-float p2, p2

    .line 35
    div-float/2addr p1, p2

    .line 36
    const/high16 p2, 0x42c80000    # 100.0f

    .line 37
    .line 38
    mul-float p1, p1, p2

    .line 39
    .line 40
    div-float/2addr p1, p2

    .line 41
    return p1
.end method

.method public getLandscapeY(FF)F
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 29
    .line 30
    .line 31
    sub-float/2addr p2, v0

    .line 32
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    div-float/2addr p2, p1

    .line 36
    const/high16 p1, 0x42c80000    # 100.0f

    .line 37
    .line 38
    mul-float p2, p2, p1

    .line 39
    .line 40
    div-float/2addr p2, p1

    .line 41
    return p2
.end method

.method public getPortaitX(FF)F
    .locals 5

    .line 1
    new-instance p1, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getVideoRotationDegree()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x5a

    .line 40
    .line 41
    const/high16 v4, 0x42c80000    # 100.0f

    .line 42
    .line 43
    if-ne v2, v3, :cond_0

    .line 44
    .line 45
    sub-float/2addr p2, v0

    .line 46
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    add-float/2addr v0, v1

    .line 50
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 51
    .line 52
    int-to-float v1, p1

    .line 53
    sub-float/2addr v0, v1

    .line 54
    const/high16 v1, 0x40000000    # 2.0f

    .line 55
    .line 56
    div-float/2addr v0, v1

    .line 57
    sub-float/2addr p2, v0

    .line 58
    :goto_0
    int-to-float p1, p1

    .line 59
    div-float/2addr p2, p1

    .line 60
    mul-float p2, p2, v4

    .line 61
    .line 62
    div-float/2addr p2, v4

    .line 63
    return p2
.end method

.method public getPortaitY(FF)F
    .locals 5

    .line 1
    new-instance p2, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    int-to-float v1, v1

    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getVideoRotationDegree()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x5a

    .line 40
    .line 41
    const/high16 v4, 0x42c80000    # 100.0f

    .line 42
    .line 43
    if-ne v2, v3, :cond_0

    .line 44
    .line 45
    sub-float/2addr p1, v0

    .line 46
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 47
    .line 48
    int-to-float p2, p2

    .line 49
    div-float/2addr p1, p2

    .line 50
    mul-float p1, p1, v4

    .line 51
    .line 52
    div-float/2addr p1, v4

    .line 53
    const/high16 p2, 0x3f800000    # 1.0f

    .line 54
    .line 55
    sub-float/2addr p2, p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    int-to-float v2, p2

    .line 60
    add-float/2addr v0, v1

    .line 61
    int-to-float v1, p2

    .line 62
    sub-float/2addr v0, v1

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float/2addr v0, v1

    .line 66
    sub-float/2addr p1, v0

    .line 67
    sub-float/2addr v2, p1

    .line 68
    int-to-float p1, p2

    .line 69
    div-float/2addr v2, p1

    .line 70
    mul-float v2, v2, v4

    .line 71
    .line 72
    div-float p2, v2, v4

    .line 73
    .line 74
    :goto_0
    return p2
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->doMeasure(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getVideoRotationDegree()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 p2, 0x5a

    .line 13
    .line 14
    if-eq p1, p2, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getVideoRotationDegree()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 p2, 0x10e

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredHeight()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredWidth()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public removeRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mSurfaceCallback:Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setAspectRatio(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->requestLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMediaPlayer(Ltv/haima/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoRotation(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    if-lez p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->requestLayout()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    if-lez p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoSize(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
