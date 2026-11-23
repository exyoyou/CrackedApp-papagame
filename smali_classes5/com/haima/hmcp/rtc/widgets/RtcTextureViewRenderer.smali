.class public Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;
.super Lorg/hmwebrtc/TextureViewRenderer;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtc/widgets/IRenderView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/TextureViewRenderer;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->TAG:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/TextureViewRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    const-class p1, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->TAG:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->initView()V

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
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public enablePandaMode(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/TextureViewRenderer;->setBlackWhiteDisplay(Z)Z

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
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/FrameCaptureCallback;->onFrameCapture(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "getBitmap cause OOMException when getBitmap from RtcTextureViewRenderer"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "OOMException occurred when getBitmap from RtcTextureViewRenderer"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
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
    .locals 2

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
    add-float/2addr v0, v1

    .line 34
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 35
    .line 36
    int-to-float v1, p1

    .line 37
    sub-float/2addr v0, v1

    .line 38
    const/high16 v1, 0x40000000    # 2.0f

    .line 39
    .line 40
    div-float/2addr v0, v1

    .line 41
    sub-float/2addr p2, v0

    .line 42
    int-to-float p1, p1

    .line 43
    div-float/2addr p2, p1

    .line 44
    const/high16 p1, 0x42c80000    # 100.0f

    .line 45
    .line 46
    mul-float p2, p2, p1

    .line 47
    .line 48
    div-float/2addr p2, p1

    .line 49
    return p2
.end method

.method public getPortaitY(FF)F
    .locals 3

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
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 34
    .line 35
    int-to-float v2, p2

    .line 36
    add-float/2addr v0, v1

    .line 37
    int-to-float v1, p2

    .line 38
    sub-float/2addr v0, v1

    .line 39
    const/high16 v1, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    sub-float/2addr p1, v0

    .line 43
    sub-float/2addr v2, p1

    .line 44
    int-to-float p1, p2

    .line 45
    div-float/2addr v2, p1

    .line 46
    const/high16 p1, 0x42c80000    # 100.0f

    .line 47
    .line 48
    mul-float v2, v2, p1

    .line 49
    .line 50
    div-float/2addr v2, p1

    .line 51
    return v2
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->doMeasure(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setFrameProxy(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/TextureViewRenderer;->setFrameCallback(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoRotation(I)V

    .line 4
    .line 5
    .line 6
    int-to-float v0, p1

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/hmwebrtc/TextureViewRenderer;->setDsVideoRotation(I)V

    .line 11
    .line 12
    .line 13
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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->mMeasureHelper:Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/MeasureHelper;->setVideoSize(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->requestLayout()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/hmwebrtc/TextureViewRenderer;->setDsVideoSize(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
