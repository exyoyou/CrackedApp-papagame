.class public Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;
.super Lorg/hmwebrtc/SurfaceViewRenderer;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtc/widgets/IRenderView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

.field private mRotateDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->TAG:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    const-class p1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->TAG:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mRotateDegree:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public enablePandaMode(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setBlackWhiteDisplay(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public frameCapture(Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "callback is null when getBitmp from RtcSurfaceViewRenderer"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer$1;-><init>(Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;Lcom/haima/hmcp/listeners/FrameCaptureCallback;)V

    .line 14
    .line 15
    .line 16
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->addFrameListener(Lorg/hmwebrtc/EglRenderer$FrameListener;F)V

    .line 19
    .line 20
    .line 21
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
    iget v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mRotateDegree:I

    .line 34
    .line 35
    const/16 v3, 0x5a

    .line 36
    .line 37
    const/high16 v4, 0x42c80000    # 100.0f

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    sub-float/2addr p2, v0

    .line 42
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    add-float/2addr v0, v1

    .line 46
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 47
    .line 48
    int-to-float v1, p1

    .line 49
    sub-float/2addr v0, v1

    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr v0, v1

    .line 53
    sub-float/2addr p2, v0

    .line 54
    :goto_0
    int-to-float p1, p1

    .line 55
    div-float/2addr p2, p1

    .line 56
    mul-float p2, p2, v4

    .line 57
    .line 58
    div-float/2addr p2, v4

    .line 59
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
    iget v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mRotateDegree:I

    .line 34
    .line 35
    const/16 v3, 0x5a

    .line 36
    .line 37
    const/high16 v4, 0x42c80000    # 100.0f

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    sub-float/2addr p1, v0

    .line 42
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 43
    .line 44
    int-to-float p2, p2

    .line 45
    div-float/2addr p1, p2

    .line 46
    mul-float p1, p1, v4

    .line 47
    .line 48
    div-float/2addr p1, v4

    .line 49
    const/high16 p2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    sub-float/2addr p2, p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 54
    .line 55
    int-to-float v2, p2

    .line 56
    add-float/2addr v0, v1

    .line 57
    int-to-float v1, p2

    .line 58
    sub-float/2addr v0, v1

    .line 59
    const/high16 v1, 0x40000000    # 2.0f

    .line 60
    .line 61
    div-float/2addr v0, v1

    .line 62
    sub-float/2addr p1, v0

    .line 63
    sub-float/2addr v2, p1

    .line 64
    int-to-float p1, p2

    .line 65
    div-float/2addr v2, p1

    .line 66
    mul-float v2, v2, v4

    .line 67
    .line 68
    div-float p2, v2, v4

    .line 69
    .line 70
    :goto_0
    return p2
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->doMeasure(II)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mRotateDegree:I

    .line 7
    .line 8
    const/16 p2, 0x5a

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredWidth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 41
    .line 42
    .line 43
    :goto_0
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

.method public setFrameProxy(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setFrameCallback(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SurfaceView doesn\'t support rotation ("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ")!\n"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setRotateLayout(I)Z

    .line 29
    .line 30
    .line 31
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mRotateDegree:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoRotation(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setDsVideoRotation(I)V

    .line 39
    .line 40
    .line 41
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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoSize(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;->requestLayout()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/hmwebrtc/SurfaceViewRenderer;->setDsVideoSize(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
