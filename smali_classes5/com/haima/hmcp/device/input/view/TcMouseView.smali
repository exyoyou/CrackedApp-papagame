.class public Lcom/haima/hmcp/device/input/view/TcMouseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;
    }
.end annotation


# static fields
.field private static final MAX_OFFSET_PIXEL:I = 0x1f4

.field private static final MAX_OFFSET_RATIO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TcMouseView"


# instance fields
.field private isLastSetByRatio:Z

.field private mGifView:Lcom/haima/hmcp/device/input/view/GifView;

.field private mLastMouseX:I

.field private mLastMouseY:I

.field private mMouseBitmap:Landroid/graphics/Bitmap;

.field private mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

.field private mMouseView:Landroid/widget/ImageView;

.field private mMouseX:I

.field private mMouseY:I

.field private mMoveDis:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOnMouseListener:Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;

.field private mResId:I

.field private mType:I

.field private mouseBottomOffset:I

.field private mouseMeasuredHeight:I

.field private mouseMeasuredWidth:I

.field private mouseRightOffset:I

.field private ratioX:F

.field private ratioY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioX:F

    .line 4
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioY:F

    const/16 p1, 0xfa

    .line 5
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    const/16 v0, 0x15e

    .line 6
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 7
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseX:I

    .line 8
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseY:I

    .line 9
    sget p1, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->MOUSE_MOVE_STEP:I

    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/device/input/manager/TcMouseManager;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioX:F

    .line 13
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioY:F

    const/16 p1, 0xfa

    .line 14
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    const/16 v0, 0x15e

    .line 15
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 16
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseX:I

    .line 17
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseY:I

    .line 18
    sget p1, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->MOUSE_MOVE_STEP:I

    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    .line 19
    invoke-direct {p0, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->init(Lcom/haima/hmcp/device/input/manager/TcMouseManager;)V

    return-void
.end method

.method private drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x32

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method private getResIdDrawable(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "drawable"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "mipmap"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    return v0
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private init(Lcom/haima/hmcp/device/input/manager/TcMouseManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v0, Lcom/haima/hmcp/R$mipmap;->haima_hmcp_icon_shubiao:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mResId:I

    .line 24
    .line 25
    new-instance p1, Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 42
    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .line 45
    const/4 v1, -0x2

    .line 46
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->initOffset(II)V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetX:I

    .line 68
    .line 69
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 70
    .line 71
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    .line 72
    .line 73
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 74
    .line 75
    return-void
.end method

.method private initOffset(II)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x1e

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x54

    .line 4
    .line 5
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetX:I

    .line 6
    .line 7
    mul-int/lit8 p2, p2, 0x14

    .line 8
    .line 9
    div-int/lit8 p2, p2, 0x61

    .line 10
    .line 11
    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    .line 12
    .line 13
    return-void
.end method

.method private mouseDown()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 18
    .line 19
    return-void
.end method

.method private mouseLeft()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 12
    .line 13
    return-void
.end method

.method private mouseRight()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 18
    .line 19
    return-void
.end method

.method private mouseUp()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 12
    .line 13
    return-void
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    new-instance v6, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    return-object p2

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method

.method private rotateGifView(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    aput p1, v2, v3

    .line 14
    .line 15
    const-string p1, "rotation"

    .line 16
    .line 17
    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 22
    .line 23
    new-array v2, v1, [F

    .line 24
    .line 25
    const/high16 v4, 0x3f800000    # 1.0f

    .line 26
    .line 27
    aput v4, v2, v3

    .line 28
    .line 29
    const-string v5, "scaleX"

    .line 30
    .line 31
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 36
    .line 37
    new-array v1, v1, [F

    .line 38
    .line 39
    aput v4, v1, v3

    .line 40
    .line 41
    const-string v3, "scaleY"

    .line 42
    .line 43
    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 61
    .line 62
    .line 63
    const-wide/16 v0, 0x104

    .line 64
    .line 65
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private scrollView(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->getCurrentActivityType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x13

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dispatchKeyEvent(), action="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " keycode="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "dispatchKeyEvent"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x60

    .line 44
    .line 45
    if-eq v0, v1, :cond_0

    .line 46
    .line 47
    packed-switch v0, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOnMouseListener:Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-interface {v0, p0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;->onclick(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOnMouseListener()Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOnMouseListener:Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public moveMouse(IF)V
    .locals 2

    const-string v0, "BdMainView"

    const-string v1, "wrapper moveMouse() ENTER"

    .line 2
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->MOUSE_MOVE_STEP:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMoveDis:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-boolean p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseUp()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRight()V

    goto :goto_0

    .line 7
    :pswitch_1
    sget-boolean p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseDown()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseLeft()V

    goto :goto_0

    .line 10
    :pswitch_2
    sget-boolean p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRight()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseDown()V

    goto :goto_0

    .line 13
    :pswitch_3
    sget-boolean p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    if-eqz p1, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseLeft()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseUp()V

    .line 16
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseX:I

    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    if-ne p1, p2, :cond_4

    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseY:I

    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    if-ne p1, v0, :cond_4

    return-void

    .line 17
    :cond_4
    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseX:I

    .line 18
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mLastMouseY:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetX:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->sendMouseHoverEvent(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moveMouse(Landroid/view/KeyEvent;F)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->moveMouse(IF)V

    return-void
.end method

.method public onCenterButtonClicked(Landroid/view/KeyEvent;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onCenterButtonClicked mMouseX:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " mMouseY:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "mOffsetY: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " mGifView getHeight:"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 70
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "mType = "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mType:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "setMouseIcon"

    .line 88
    .line 89
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 93
    .line 94
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 95
    .line 96
    sget-boolean v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    iget v3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mType:I

    .line 102
    .line 103
    if-ne v3, v4, :cond_2

    .line 104
    .line 105
    iget-object v3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iget-object v5, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget-object v5, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 125
    .line 126
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    :goto_2
    sub-int/2addr v3, v5

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    const/4 v3, 0x0

    .line 133
    :goto_3
    add-int/2addr v1, v3

    .line 134
    iget v3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 135
    .line 136
    sget-boolean v5, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    .line 137
    .line 138
    if-eqz v5, :cond_5

    .line 139
    .line 140
    iget v2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mType:I

    .line 141
    .line 142
    if-ne v2, v4, :cond_4

    .line 143
    .line 144
    iget-object v2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    .line 152
    .line 153
    mul-int/lit8 v2, v2, 0x61

    .line 154
    .line 155
    div-int/lit8 v2, v2, 0x14

    .line 156
    .line 157
    :cond_5
    :goto_4
    add-int/2addr v3, v2

    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {v0, v1, v3, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->sendCenterClickEvent(III)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 6
    .line 7
    iget p3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    add-int/2addr p4, p2

    .line 14
    iget p5, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr p5, v0

    .line 23
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 31
    .line 32
    iget p3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    add-int/2addr p4, p2

    .line 39
    iget p5, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr p5, v0

    .line 48
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 5
    .line 6
    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseMeasuredWidth:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseMeasuredHeight:I

    .line 77
    .line 78
    :cond_2
    iget-boolean p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioX:F

    .line 83
    .line 84
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioY:F

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setMouseOffSetRatio(FF)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/view/GifView;->play()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public rotateMouseView(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->rotateGifView(Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mResId:I

    .line 21
    .line 22
    if-lez v0, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mResId:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method public setMouseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->initOffset(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setMouseIcon(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " TYPE: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "setMouseIcon"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mType:I

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->getResIdDrawable(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mResId:I

    .line 42
    .line 43
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseBitmap:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->initOffset(II)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p2, "raw"

    .line 85
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-lez p1, :cond_1

    .line 91
    .line 92
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mResId:I

    .line 93
    .line 94
    iget-object p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseView:Landroid/widget/ImageView;

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    const/4 p2, 0x1

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 104
    .line 105
    .line 106
    new-instance p2, Lcom/haima/hmcp/device/input/view/GifView;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p2, v0, p1}, Lcom/haima/hmcp/device/input/view/GifView;-><init>(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    iput-object p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 116
    .line 117
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    const/4 v0, -0x2

    .line 120
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iget-object p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mGifView:Lcom/haima/hmcp/device/input/view/GifView;

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->initOffset(II)V

    .line 140
    .line 141
    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method public setMouseOffSet(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x1f4

    .line 7
    .line 8
    if-le v0, v2, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 11
    .line 12
    iget v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetX:I

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v0

    .line 18
    :goto_0
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    .line 22
    .line 23
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 24
    .line 25
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-le p1, v2, :cond_3

    .line 30
    .line 31
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 32
    .line 33
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    .line 34
    .line 35
    if-eq p1, p2, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move p1, p2

    .line 39
    :goto_2
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    .line 43
    .line 44
    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 45
    .line 46
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string p2, "mouseRightOffset="

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p2, " mouseBottomOffset="

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "setMouseOffSet"

    .line 76
    .line 77
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public setMouseOffSetRatio(FF)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    cmpg-float v3, p1, v2

    .line 6
    .line 7
    if-lez v3, :cond_1

    .line 8
    .line 9
    cmpl-float v3, p1, v1

    .line 10
    .line 11
    if-lez v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    .line 15
    .line 16
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioX:F

    .line 17
    .line 18
    iget v3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseMeasuredWidth:I

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    mul-float p1, p1, v3

    .line 22
    .line 23
    float-to-int p1, p1

    .line 24
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 28
    .line 29
    iget v3, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetX:I

    .line 30
    .line 31
    if-eq p1, v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move p1, v3

    .line 35
    :goto_1
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 36
    .line 37
    :goto_2
    cmpg-float p1, p2, v2

    .line 38
    .line 39
    if-lez p1, :cond_4

    .line 40
    .line 41
    cmpl-float p1, p2, v1

    .line 42
    .line 43
    if-lez p1, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->isLastSetByRatio:Z

    .line 47
    .line 48
    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->ratioY:F

    .line 49
    .line 50
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseMeasuredHeight:I

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    mul-float p2, p2, p1

    .line 54
    .line 55
    float-to-int p1, p2

    .line 56
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_4
    :goto_3
    iget p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 60
    .line 61
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOffsetY:I

    .line 62
    .line 63
    if-eq p1, p2, :cond_5

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    move p1, p2

    .line 67
    :goto_4
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 68
    .line 69
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p2, "mouseRightOffset="

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseRightOffset:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p2, " mouseBottomOffset="

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mouseBottomOffset:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p2, "setMouseOffSetRatio"

    .line 99
    .line 100
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public setMousePoint(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseX:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, ":"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mMouseY:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "setMousePoint View"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setOnMouseListener(Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/view/TcMouseView;->mOnMouseListener:Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;

    .line 2
    .line 3
    return-void
.end method
