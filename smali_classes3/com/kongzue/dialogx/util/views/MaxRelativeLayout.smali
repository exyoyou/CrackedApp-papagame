.class public Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

.field n:I

.field o:Landroid/graphics/Paint;

.field private p:Landroid/view/View$OnTouchListener;

.field q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->g:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j:F

    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->k:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->l:I

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->g:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j:F

    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->k:F

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->l:I

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->g:Z

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j:F

    iput p3, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->k:F

    const/4 p3, -0x1

    .line 14
    iput p3, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->l:I

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->k:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->m:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_maxLayoutWidth:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->b:I

    .line 17
    .line 18
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_maxLayoutHeight:I

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->c:I

    .line 25
    .line 26
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_minLayoutWidth:I

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->d:I

    .line 33
    .line 34
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_minLayoutHeight:I

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e:I

    .line 41
    .line 42
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_lockWidth:I

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput-boolean p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->f:Z

    .line 49
    .line 50
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_interceptTouch:I

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput-boolean p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->g:Z

    .line 58
    .line 59
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_dialogXSafetyMode:I

    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->d:I

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    :cond_1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->d:I

    .line 79
    .line 80
    iget p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e:I

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :cond_2
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e:I

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p2, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;

    .line 101
    .line 102
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;-><init>(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method


# virtual methods
.method public d(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->p:Landroid/view/View$OnTouchListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->q:Z

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public g(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public getDialogXSafetyMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnYChanged()Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->m:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Z)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->c:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public j(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->b:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public k(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->m:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

    .line 2
    .line 3
    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->n:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget v0, Lcom/kongzue/dialogx/DialogX;->I:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->o:Landroid/graphics/Paint;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->o:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget v1, Lcom/kongzue/dialogx/DialogX;->I:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->n:I

    .line 34
    .line 35
    sub-int/2addr v0, v1

    .line 36
    int-to-float v4, v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v5, v0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-float v6, v0

    .line 47
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->o:Landroid/graphics/Paint;

    .line 48
    .line 49
    move-object v2, p1

    .line 50
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->q:Z

    .line 2
    .line 3
    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->l:I

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->l:I

    .line 25
    .line 26
    :cond_0
    iget-boolean v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->f:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->b:I

    .line 31
    .line 32
    iget v3, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->l:I

    .line 33
    .line 34
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->b:I

    .line 43
    .line 44
    :cond_1
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->c:I

    .line 45
    .line 46
    if-le p2, v2, :cond_2

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    add-int/2addr v2, p2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    add-int/2addr p2, v2

    .line 60
    :cond_2
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->b:I

    .line 61
    .line 62
    if-le p1, v2, :cond_3

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    add-int/2addr v2, p1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    add-int/2addr p1, v2

    .line 76
    :cond_3
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->h:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->d:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setNavBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->n:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->p:Landroid/view/View$OnTouchListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->m:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;->a(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
