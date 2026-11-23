.class public Lcom/join/mgps/activity/vipzone/ScratchImageView2;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mDstBmp:Landroid/graphics/Bitmap;

.field mEventX:F

.field mEventY:F

.field private mFgBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field mSrcBmp:Landroid/graphics/Bitmap;

.field mTxtBmp:Landroid/graphics/Bitmap;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
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

    const-string p1, "ScratchImageView2"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->TAG:Ljava/lang/String;

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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ScratchImageView2"

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->TAG:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "ScratchImageView2"

    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->TAG:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/high16 v1, -0x10000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/high16 v1, 0x42a00000    # 80.0f

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v2, 0x7f080a79

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mTxtBmp:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const v2, 0x7f080fe9

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mSrcBmp:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mSrcBmp:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mDstBmp:Landroid/graphics/Bitmap;

    .line 87
    .line 88
    new-instance v0, Landroid/graphics/Path;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mTxtBmp:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v6, v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v7, v0

    .line 21
    iget-object v8, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-instance v1, Landroid/graphics/Canvas;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mDstBmp:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mDstBmp:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 50
    .line 51
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 52
    .line 53
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 54
    .line 55
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mSrcBmp:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 16
    .line 17
    sub-float/2addr v0, v1

    .line 18
    const/high16 v2, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v0, v2

    .line 21
    add-float/2addr v0, v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventY:F

    .line 27
    .line 28
    sub-float/2addr v1, v3

    .line 29
    div-float/2addr v1, v2

    .line 30
    add-float/2addr v1, v3

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    .line 32
    .line 33
    iget v4, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 34
    .line 35
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventY:F

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventY:F

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    .line 64
    .line 65
    iget v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    return p1
.end method
