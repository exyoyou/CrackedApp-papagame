.class public abstract Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;


# static fields
.field protected static final ANIM_DURATION_MOVE:J = 0x190L

.field protected static final ANIM_DURATION_ROTATE:J = 0x190L

.field protected static final MAX_ANGLE:F = 4.5f


# instance fields
.field protected INTERVAL:I

.field protected final ROCKER_CENTER_BITMAP_SCALE:I

.field protected final TAG:Ljava/lang/String;

.field protected bitmap:Landroid/graphics/Bitmap;

.field protected currentAngle:F

.field protected currentX:F

.field protected currentY:F

.field protected downTime:J

.field protected downX:F

.field protected downY:F

.field protected editModeTouchOffsetX:F

.field protected editModeTouchOffsetY:F

.field protected height:I

.field protected isEditMode:Z

.field protected isPressed:Z

.field protected isRight:Z

.field private lastCalculatedBitmap:Landroid/graphics/Bitmap;

.field protected lastX:F

.field protected lastY:F

.field protected mBitmapPaint:Landroid/graphics/Paint;

.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mCtx:Landroid/content/Context;

.field public mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

.field private mLinePaint:Landroid/graphics/Paint;

.field protected mRawTextPaint:Landroid/graphics/Paint;

.field protected mRect:Landroid/graphics/Rect;

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected matrix:Landroid/graphics/Matrix;

.field protected moveAnim:Landroid/animation/ValueAnimator;

.field protected name:Ljava/lang/String;

.field protected needShowRawKey:Z

.field protected nowPointID:I

.field protected offsetAnim:F

.field protected pre:Ljava/lang/String;

.field protected final radius:F

.field protected random:Ljava/util/Random;

.field protected rawName:Ljava/lang/String;

.field protected rockerCenterTextPaint:Landroid/graphics/Paint;

.field protected rotateAnim:Landroid/animation/ValueAnimator;

.field private scanlineHitTest:Lcom/haima/hmcp/virtual/views/ScanlineHitTest;

.field protected screenHeight:I

.field protected screenScale:F

.field protected screenWidth:I

.field protected sourceType:I

.field protected textShowRawOffsetY:I

.field protected viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

.field protected viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

.field protected width:I

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->pre:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    const/16 v1, 0x190

    .line 4
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->INTERVAL:I

    const/4 v1, 0x5

    .line 5
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->ROCKER_CENTER_BITMAP_SCALE:I

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 8
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentX:F

    .line 9
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentY:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 10
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->radius:F

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->pre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error : viewBean is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    move-result v2

    const/16 v3, 0xd

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 17
    :cond_1
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->pre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error : getKeys is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    move-result-object v2

    if-nez v2, :cond_3

    .line 20
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->pre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error : position is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_3
    iput p4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 23
    iput-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 24
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 25
    iput v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->nowPointID:I

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 27
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 28
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 29
    new-instance p3, Landroid/graphics/Point;

    sget p4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    sget v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerHeight:I

    invoke-direct {p3, p4, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 30
    sget p4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerHeight:I

    if-eqz p4, :cond_4

    sget p4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    if-nez p4, :cond_5

    .line 31
    :cond_4
    invoke-static {p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p3

    .line 32
    :cond_5
    iget p4, p3, Landroid/graphics/Point;->x:I

    iput p4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenWidth:I

    .line 33
    iget p3, p3, Landroid/graphics/Point;->y:I

    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenHeight:I

    int-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p3, v0

    .line 34
    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 35
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    move-result-object p3

    .line 36
    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getX()D

    move-result-wide v0

    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenWidth:I

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 37
    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getY()D

    move-result-wide v0

    iget p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenHeight:I

    int-to-double v2, p3

    mul-double v0, v0, v2

    double-to-int p3, v0

    iput p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 38
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->calcWidthHeight()V

    .line 39
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 46
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mLinePaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mLinePaint:Landroid/graphics/Paint;

    const p4, -0xff0100

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->initTextPaint()V

    .line 55
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenWidth:I

    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenHeight:I

    move-object v0, p1

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;-><init>(IIIIIILandroid/content/Context;Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 56
    sget p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->setTransparency(F)V

    .line 57
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->calcName()V

    .line 58
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateTextSize()V

    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lambda$startShake$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lambda$startShake$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calcName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, "+"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x1

    .line 62
    if-lez v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr v1, v2

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rawName:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 92
    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rawName:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-le v0, v2, :cond_3

    .line 117
    .line 118
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ne v0, v2, :cond_4

    .line 140
    .line 141
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_4

    .line 164
    .line 165
    iput-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 166
    .line 167
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "needShowDraw="

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, ";"

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method private calcWidthHeight()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getBaseScale()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "calcWidthHeight baseScale="

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getW()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 43
    .line 44
    mul-float v2, v2, v3

    .line 45
    .line 46
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    mul-float v2, v2, v3

    .line 53
    .line 54
    mul-float v2, v2, v1

    .line 55
    .line 56
    float-to-int v2, v2

    .line 57
    iput v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getH()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    int-to-float v0, v0

    .line 64
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 65
    .line 66
    mul-float v0, v0, v2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    mul-float v0, v0, v2

    .line 75
    .line 76
    mul-float v0, v0, v1

    .line 77
    .line 78
    float-to-int v0, v0

    .line 79
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private initTextPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private synthetic lambda$startShake$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$startShake$1(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    float-to-double v2, p1

    .line 17
    mul-double v2, v2, v0

    .line 18
    .line 19
    double-to-float p1, v2

    .line 20
    float-to-double v0, p1

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    double-to-float p1, v2

    .line 26
    const/high16 v2, 0x40400000    # 3.0f

    .line 27
    .line 28
    mul-float p1, p1, v2

    .line 29
    .line 30
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->offsetAnim:F

    .line 31
    .line 32
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    const/high16 v4, 0x40000000    # 2.0f

    .line 39
    .line 40
    div-float/2addr v3, v4

    .line 41
    add-float/2addr p1, v3

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    double-to-float v3, v5

    .line 47
    mul-float v3, v3, v2

    .line 48
    .line 49
    add-float/2addr p1, v3

    .line 50
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentX:F

    .line 51
    .line 52
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 53
    .line 54
    int-to-float p1, p1

    .line 55
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    div-float/2addr v3, v4

    .line 59
    add-float/2addr p1, v3

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    double-to-float v0, v0

    .line 65
    mul-float v0, v0, v2

    .line 66
    .line 67
    add-float/2addr p1, v0

    .line 68
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentY:F

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public changeName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setName(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->calcName()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateTextSize()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public changeScale(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setScale(F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->calcWidthHeight()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateTextSize()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->clearScanlineCache()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected checkPosition()V
    .locals 0

    return-void
.end method

.method protected clearScanlineCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->scanlineHitTest:Lcom/haima/hmcp/virtual/views/ScanlineHitTest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastCalculatedBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showAlignLine:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 13
    .line 14
    int-to-float v3, v0

    .line 15
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 16
    .line 17
    int-to-float v4, v1

    .line 18
    int-to-float v5, v0

    .line 19
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mLinePaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 26
    .line 27
    int-to-float v2, v0

    .line 28
    const/4 v3, 0x0

    .line 29
    int-to-float v4, v0

    .line 30
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 31
    .line 32
    int-to-float v5, v0

    .line 33
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mLinePaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method protected drawBitmapAnim(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v0, v1

    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    div-float/2addr v2, v1

    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 41
    .line 42
    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentX:F

    .line 48
    .line 49
    sub-float/2addr v3, v0

    .line 50
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentY:F

    .line 51
    .line 52
    sub-float/2addr v0, v2

    .line 53
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method protected drawTextAnim(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-eqz p5, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 21
    .line 22
    .line 23
    iget p3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 24
    .line 25
    int-to-float p3, p3

    .line 26
    const/high16 p4, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr p3, p4

    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-float/2addr v0, v1

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    div-float/2addr v0, p4

    .line 47
    float-to-int v0, v0

    .line 48
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 49
    .line 50
    div-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    add-int/2addr v1, v0

    .line 53
    if-eqz p6, :cond_1

    .line 54
    .line 55
    iget-boolean p6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 56
    .line 57
    if-eqz p6, :cond_1

    .line 58
    .line 59
    sget-boolean p6, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 60
    .line 61
    if-eqz p6, :cond_1

    .line 62
    .line 63
    iget p6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->textShowRawOffsetY:I

    .line 64
    .line 65
    sub-int/2addr v1, p6

    .line 66
    int-to-float p6, v1

    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    div-float/2addr v0, p4

    .line 74
    add-float/2addr p6, v0

    .line 75
    iget p4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 76
    .line 77
    int-to-float p4, p4

    .line 78
    const/high16 v0, 0x41000000    # 8.0f

    .line 79
    .line 80
    div-float/2addr p4, v0

    .line 81
    add-float/2addr p6, p4

    .line 82
    invoke-virtual {p1, p2, p3, p6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-boolean p4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->needShowRawKey:Z

    .line 87
    .line 88
    if-eqz p4, :cond_2

    .line 89
    .line 90
    sget-boolean p4, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 91
    .line 92
    if-eqz p4, :cond_2

    .line 93
    .line 94
    iget p4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->textShowRawOffsetY:I

    .line 95
    .line 96
    sub-int/2addr v1, p4

    .line 97
    int-to-float p4, v1

    .line 98
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    int-to-float p4, v1

    .line 103
    iget-object p5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method

.method public enterEditMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "enterEditMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->stopShake()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public exitEditMode()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "exitEditMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->random:Ljava/util/Random;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/Random;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->random:Ljava/util/Random;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->random:Ljava/util/Random;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->random:Ljava/util/Random;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->startShake(FF)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getImageUrlFromConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterMD5()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionMD5()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_4
    :goto_0
    return-object v1
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewBean()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 2
    .line 3
    return v0
.end method

.method protected isPointInInscribedCircle(FF)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    const/high16 v2, 0x40000000    # 2.0f

    .line 31
    .line 32
    div-float/2addr v0, v2

    .line 33
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    int-to-float v4, v4

    .line 38
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    div-float/2addr v3, v2

    .line 44
    add-float/2addr v4, v3

    .line 45
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    int-to-float v5, v5

    .line 50
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    int-to-float v3, v3

    .line 55
    div-float/2addr v3, v2

    .line 56
    add-float/2addr v5, v3

    .line 57
    sub-float/2addr p1, v4

    .line 58
    sub-float/2addr p2, v5

    .line 59
    mul-float p1, p1, p1

    .line 60
    .line 61
    mul-float p2, p2, p2

    .line 62
    .line 63
    add-float/2addr p1, p2

    .line 64
    float-to-double p1, p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    double-to-float p1, p1

    .line 70
    cmpg-float p1, p1, v0

    .line 71
    .line 72
    if-gtz p1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    :cond_1
    :goto_0
    return v1
.end method

.method public isPointInView(FF)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getCurrentDisplayBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->scanlineHitTest:Lcom/haima/hmcp/virtual/views/ScanlineHitTest;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastCalculatedBitmap:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    if-eq v1, v0, :cond_3

    .line 34
    .line 35
    :cond_2
    new-instance v1, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->scanlineHitTest:Lcom/haima/hmcp/virtual/views/ScanlineHitTest;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->calculateScanlines(Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastCalculatedBitmap:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    sub-float v0, p1, v0

    .line 51
    .line 52
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 53
    .line 54
    int-to-float v1, v1

    .line 55
    div-float/2addr v0, v1

    .line 56
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    sub-float v1, p2, v1

    .line 60
    .line 61
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 62
    .line 63
    int-to-float v2, v2

    .line 64
    div-float/2addr v1, v2

    .line 65
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "isPointInView: normalizedX:"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " normalizedY:"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, " x="

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " y="

    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " width="

    .line 105
    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 110
    .line 111
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, " height="

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 120
    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, " this.x="

    .line 125
    .line 126
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 130
    .line 131
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p1, " this.y="

    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 140
    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->scanlineHitTest:Lcom/haima/hmcp/virtual/views/ScanlineHitTest;

    .line 152
    .line 153
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->hitTest(FF)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    return p1

    .line 158
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 159
    return p1

    .line 160
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 161
    return p1
.end method

.method public notifyBaseScale()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "notifyScale"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->calcWidthHeight()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateTextSize()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->clearScanlineCache()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic onSave()V
    .locals 0

    .line 1
    invoke-static {p0}, Lj5/a;->a(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x5

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "editMode not support more pointer down"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public synthetic prepareShake()V
    .locals 0

    .line 1
    invoke-static {p0}, Lj5/a;->b(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    return-void
.end method

.method protected registerDownloadListener(Ljava/lang/String;IILcom/haima/hmcp/virtual/BitmapRef;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$3;

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    move-object v4, p0

    .line 20
    move-object v5, p4

    .line 21
    move v6, p2

    .line 22
    move v7, p3

    .line 23
    move-object v8, p1

    .line 24
    invoke-direct/range {v3 .. v8}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$3;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;Lcom/haima/hmcp/virtual/BitmapRef;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v3, p1

    .line 28
    move-object v4, v0

    .line 29
    move v5, p2

    .line 30
    move v6, p3

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p4, "registerDownloadListener: registered listener for "

    .line 42
    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v0, "registerDownloadListener: invalid params, url="

    .line 65
    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, ", bitmapRef="

    .line 73
    .line 74
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public setTransparency(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    mul-float v2, p1, v1

    .line 8
    .line 9
    float-to-int v2, v2

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    mul-float v2, p1, v1

    .line 18
    .line 19
    float-to-int v2, v2

    .line 20
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    mul-float p1, p1, v1

    .line 28
    .line 29
    const v1, 0x3f4ccccd    # 0.8f

    .line 30
    .line 31
    .line 32
    mul-float p1, p1, v1

    .line 33
    .line 34
    float-to-int p1, p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public startShake(FF)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    const-wide/16 v1, 0x190

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 27
    .line 28
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v4, 0x10

    .line 35
    .line 36
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->setFrameDelay(J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    new-instance v4, Lcom/haima/hmcp/virtual/views/a;

    .line 42
    .line 43
    invoke-direct {v4, p0}, Lcom/haima/hmcp/virtual/views/a;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    .line 53
    .line 54
    const/high16 v0, 0x43c80000    # 400.0f

    .line 55
    .line 56
    mul-float p1, p1, v0

    .line 57
    .line 58
    float-to-long v4, p1

    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    new-instance v4, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$1;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$1;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x2

    .line 80
    new-array p1, p1, [F

    .line 81
    .line 82
    fill-array-data p1, :array_1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 102
    .line 103
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    new-instance v1, Lcom/haima/hmcp/virtual/views/b;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/b;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    .line 118
    .line 119
    mul-float p2, p2, v0

    .line 120
    .line 121
    float-to-long p1, p2

    .line 122
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    new-instance p2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$2;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView$2;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :array_0
    .array-data 4
        -0x3f700000    # -4.5f
        0x40900000    # 4.5f
        -0x3f700000    # -4.5f
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopShake()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    add-float/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentX:F

    .line 15
    .line 16
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    div-float/2addr v1, v2

    .line 23
    add-float/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentY:F

    .line 25
    .line 26
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rotateAnim:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->moveAnim:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method protected updateRect()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 4
    .line 5
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 6
    .line 7
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 8
    .line 9
    add-int/2addr v3, v1

    .line 10
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 11
    .line 12
    add-int/2addr v4, v2

    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    mul-float v1, v1, v2

    .line 34
    .line 35
    sget v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    div-float/2addr v1, v3

    .line 39
    invoke-static {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getDecimalAfterThereSize(F)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    float-to-double v3, v1

    .line 44
    invoke-virtual {v0, v3, v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setX(D)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    mul-float v1, v1, v2

    .line 57
    .line 58
    sget v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerHeight:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    div-float/2addr v1, v2

    .line 62
    invoke-static {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getDecimalAfterThereSize(F)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    float-to-double v1, v1

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setY(D)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method protected updateTextSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    mul-float v1, v1, v2

    .line 29
    .line 30
    const/high16 v3, 0x40800000    # 4.0f

    .line 31
    .line 32
    div-float/2addr v1, v3

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mTextPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    mul-float v1, v1, v2

    .line 43
    .line 44
    const v3, 0x4099999a    # 4.8f

    .line 45
    .line 46
    .line 47
    div-float/2addr v1, v3

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 52
    .line 53
    int-to-float v1, v0

    .line 54
    mul-float v1, v1, v2

    .line 55
    .line 56
    const/high16 v3, 0x41200000    # 10.0f

    .line 57
    .line 58
    div-float/2addr v1, v3

    .line 59
    float-to-int v1, v1

    .line 60
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->textShowRawOffsetY:I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mRawTextPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    mul-float v0, v0, v2

    .line 66
    .line 67
    const/high16 v3, 0x40c00000    # 6.0f

    .line 68
    .line 69
    div-float/2addr v0, v3

    .line 70
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->rockerCenterTextPaint:Landroid/graphics/Paint;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 78
    .line 79
    int-to-float v1, v1

    .line 80
    mul-float v1, v1, v2

    .line 81
    .line 82
    const/high16 v2, 0x40a00000    # 5.0f

    .line 83
    .line 84
    div-float/2addr v1, v2

    .line 85
    const/high16 v2, 0x40000000    # 2.0f

    .line 86
    .line 87
    div-float/2addr v1, v2

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    return-void
.end method

.method public updateVirtualViewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->updateVirtualViewList(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
