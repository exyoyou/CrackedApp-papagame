.class public Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;
.super Lcom/kwad/components/core/innerEc/live/widget/e;
.source "SourceFile"


# instance fields
.field private MQ:F

.field private ZF:Landroid/graphics/Paint;

.field private ZG:Landroid/graphics/Matrix;

.field private ZH:Landroid/graphics/Shader;

.field private ZI:I

.field private ZJ:I

.field private ZK:Z

.field private ZL:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/core/innerEc/live/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->MQ:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZK:Z

    .line 6
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZL:Z

    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->init()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZK:Z

    .line 3
    .line 4
    return p1
.end method

.method private bj(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZI:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZJ:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZG:Landroid/graphics/Matrix;

    .line 10
    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    .line 13
    int-to-float v5, v2

    .line 14
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZG:Landroid/graphics/Matrix;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    int-to-float v5, v0

    .line 21
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZH:Landroid/graphics/Shader;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZG:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZF:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZH:Landroid/graphics/Shader;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    int-to-float v8, v1

    .line 41
    add-int/2addr v0, v2

    .line 42
    int-to-float v9, v0

    .line 43
    iget-object v10, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZF:Landroid/graphics/Paint;

    .line 44
    .line 45
    move-object v5, p1

    .line 46
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private init()V
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZF:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/high16 v6, -0x1000000

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZH:Landroid/graphics/Shader;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZF:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZF:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 34
    .line 35
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZG:Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/high16 v1, 0x41f00000    # 30.0f

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZJ:I

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->tc()V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZL:Z

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->mTouchSlop:I

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->tb()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private tb()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private tc()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->td()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static td()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZL:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->bj(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZK:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->bj(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    if-gez p1, :cond_2

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->bj(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZJ:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->td()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->c(Landroid/graphics/Canvas;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public getCustomFadingEdgeTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZI:I

    .line 2
    .line 3
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZL:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->MQ:F

    .line 25
    .line 26
    sub-float/2addr v0, v1

    .line 27
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->mTouchSlop:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    cmpl-float v0, v0, v1

    .line 31
    .line 32
    if-ltz v0, :cond_3

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZK:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->MQ:F

    .line 43
    .line 44
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZK:Z

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 58
    .line 59
    .line 60
    :cond_4
    return p1
.end method

.method public setCustomFadingEdgeLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZJ:I

    .line 2
    .line 3
    return-void
.end method

.method public setCustomFadingEdgeTop(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZI:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZJ:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->ZI:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
