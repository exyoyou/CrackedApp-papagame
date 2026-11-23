.class public Lcom/join/mgps/customview/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final s:I = -0x1


# instance fields
.field private b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:Landroidx/viewpager/widget/ViewPager;

.field private g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:F

.field private q:I

.field private r:Z


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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const v0, 0x7f040817

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/join/mgps/customview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 6
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/join/mgps/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    const/high16 v5, -0x40800000    # -1.0f

    .line 7
    iput v5, v0, Lcom/join/mgps/customview/CirclePageIndicator;->p:F

    const/4 v5, -0x1

    .line 8
    iput v5, v0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600ee

    .line 11
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f0600ed

    .line 12
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v8, 0x7f0b0008

    .line 13
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0600ef

    .line 14
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v10, 0x7f0700a6

    .line 15
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f0700a5

    .line 16
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const v12, 0x7f050003

    .line 17
    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const v13, 0x7f050004

    .line 18
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 19
    sget-object v13, Lcom/join/android/app/mgsim/wufun/R$styleable;->CirclePageIndicator:[I

    const/4 v14, 0x0

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move/from16 v5, p3

    invoke-virtual {v15, v2, v13, v5, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x2

    .line 20
    invoke-virtual {v2, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/join/mgps/customview/CirclePageIndicator;->m:Z

    .line 21
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 22
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v5, 0x4

    .line 23
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x7

    .line 25
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x8

    .line 26
    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x3

    .line 28
    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x5

    .line 29
    invoke-virtual {v2, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    const/4 v1, 0x6

    move/from16 v3, v16

    .line 30
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/join/mgps/customview/CirclePageIndicator;->n:Z

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/join/mgps/customview/CirclePageIndicator;->o:I

    return-void
.end method

.method private c(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/CirclePageIndicator;->getCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/2addr v2, v3

    .line 31
    int-to-float v2, v2

    .line 32
    mul-int/lit8 v3, v1, 0x2

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    iget v4, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 36
    .line 37
    mul-float v3, v3, v4

    .line 38
    .line 39
    add-float/2addr v2, v3

    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    mul-float v1, v1, v4

    .line 44
    .line 45
    add-float/2addr v2, v1

    .line 46
    const/high16 v1, 0x40000000    # 2.0f

    .line 47
    .line 48
    add-float/2addr v2, v1

    .line 49
    float-to-int v1, v2

    .line 50
    const/high16 v2, -0x80000000

    .line 51
    .line 52
    if-ne v0, v2, :cond_1

    .line 53
    .line 54
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move p1, v1

    .line 60
    :cond_2
    :goto_0
    return p1
.end method

.method private d(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    iget v2, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 17
    .line 18
    mul-float v2, v2, v1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    add-float/2addr v2, v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    add-float/2addr v2, v1

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    add-float/2addr v2, v1

    .line 35
    float-to-int v1, v2

    .line 36
    const/high16 v2, -0x80000000

    .line 37
    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p1, v1

    .line 46
    :goto_0
    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method protected getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/join/mgps/customview/n;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getPageColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
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
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/CirclePageIndicator;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 17
    .line 18
    if-lt v1, v0, :cond_2

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CirclePageIndicator;->setCurrentItem(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_0
    iget v5, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 64
    .line 65
    const/high16 v6, 0x40400000    # 3.0f

    .line 66
    .line 67
    mul-float v6, v6, v5

    .line 68
    .line 69
    int-to-float v4, v4

    .line 70
    add-float/2addr v4, v5

    .line 71
    int-to-float v7, v2

    .line 72
    add-float/2addr v7, v5

    .line 73
    iget-boolean v8, p0, Lcom/join/mgps/customview/CirclePageIndicator;->m:Z

    .line 74
    .line 75
    const/high16 v9, 0x40000000    # 2.0f

    .line 76
    .line 77
    if-eqz v8, :cond_4

    .line 78
    .line 79
    sub-int/2addr v1, v2

    .line 80
    sub-int/2addr v1, v3

    .line 81
    int-to-float v1, v1

    .line 82
    div-float/2addr v1, v9

    .line 83
    int-to-float v2, v0

    .line 84
    mul-float v2, v2, v6

    .line 85
    .line 86
    div-float/2addr v2, v9

    .line 87
    div-float v3, v5, v9

    .line 88
    .line 89
    sub-float/2addr v2, v3

    .line 90
    sub-float/2addr v1, v2

    .line 91
    add-float/2addr v7, v1

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v2, 0x0

    .line 99
    cmpl-float v1, v1, v2

    .line 100
    .line 101
    if-lez v1, :cond_5

    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    div-float/2addr v1, v9

    .line 110
    sub-float/2addr v5, v1

    .line 111
    :cond_5
    const/4 v1, 0x0

    .line 112
    :goto_1
    if-ge v1, v0, :cond_9

    .line 113
    .line 114
    int-to-float v2, v1

    .line 115
    mul-float v2, v2, v6

    .line 116
    .line 117
    add-float/2addr v2, v7

    .line 118
    iget v3, p0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 119
    .line 120
    if-nez v3, :cond_6

    .line 121
    .line 122
    move v3, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move v3, v2

    .line 125
    move v2, v4

    .line 126
    :goto_2
    iget-object v8, p0, Lcom/join/mgps/customview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-lez v8, :cond_7

    .line 133
    .line 134
    iget-object v8, p0, Lcom/join/mgps/customview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p1, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget v8, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 140
    .line 141
    cmpl-float v9, v5, v8

    .line 142
    .line 143
    if-eqz v9, :cond_8

    .line 144
    .line 145
    iget-object v9, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 146
    .line 147
    invoke-virtual {p1, v2, v3, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_9
    iget-boolean v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->n:Z

    .line 154
    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    iget v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->i:I

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_a
    iget v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 161
    .line 162
    :goto_3
    int-to-float v1, v1

    .line 163
    mul-float v1, v1, v6

    .line 164
    .line 165
    if-nez v0, :cond_b

    .line 166
    .line 167
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->j:F

    .line 168
    .line 169
    mul-float v0, v0, v6

    .line 170
    .line 171
    add-float/2addr v1, v0

    .line 172
    :cond_b
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 173
    .line 174
    if-nez v0, :cond_c

    .line 175
    .line 176
    add-float/2addr v7, v1

    .line 177
    move v10, v7

    .line 178
    move v7, v4

    .line 179
    move v4, v10

    .line 180
    goto :goto_4

    .line 181
    :cond_c
    add-float/2addr v7, v1

    .line 182
    :goto_4
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 183
    .line 184
    iget-object v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    .line 185
    .line 186
    invoke-virtual {p1, v4, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
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
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CirclePageIndicator;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/CirclePageIndicator;->d(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CirclePageIndicator;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/CirclePageIndicator;->c(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/CirclePageIndicator;->j:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->k:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 10
    .line 11
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->i:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/customview/CirclePageIndicator$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Lcom/join/mgps/customview/CirclePageIndicator$SavedState;->b:I

    .line 11
    .line 12
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 13
    .line 14
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->i:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/customview/CirclePageIndicator$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/join/mgps/customview/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 11
    .line 12
    iput v0, v1, Lcom/join/mgps/customview/CirclePageIndicator$SavedState;->b:I

    .line 13
    .line 14
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_10

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/CirclePageIndicator;->getCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    .line 28
    if-eqz v0, :cond_e

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq v0, v2, :cond_9

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v0, v4, :cond_6

    .line 35
    .line 36
    if-eq v0, v3, :cond_9

    .line 37
    .line 38
    const/4 v3, 0x5

    .line 39
    if-eq v0, v3, :cond_5

    .line 40
    .line 41
    const/4 v3, 0x6

    .line 42
    if-eq v0, v3, :cond_2

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget v4, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 55
    .line 56
    if-ne v3, v4, :cond_4

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    :cond_3
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 66
    .line 67
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 68
    .line 69
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->p:F

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iput v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->p:F

    .line 90
    .line 91
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 100
    .line 101
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->p:F

    .line 110
    .line 111
    sub-float v0, p1, v0

    .line 112
    .line 113
    iget-boolean v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->r:Z

    .line 114
    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iget v3, p0, Lcom/join/mgps/customview/CirclePageIndicator;->o:I

    .line 122
    .line 123
    int-to-float v3, v3

    .line 124
    cmpl-float v1, v1, v3

    .line 125
    .line 126
    if-lez v1, :cond_7

    .line 127
    .line 128
    iput-boolean v2, p0, Lcom/join/mgps/customview/CirclePageIndicator;->r:Z

    .line 129
    .line 130
    :cond_7
    iget-boolean v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->r:Z

    .line 131
    .line 132
    if-eqz v1, :cond_f

    .line 133
    .line 134
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->p:F

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_f

    .line 151
    .line 152
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_9
    iget-boolean v4, p0, Lcom/join/mgps/customview/CirclePageIndicator;->r:Z

    .line 159
    .line 160
    if-nez v4, :cond_d

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/mgps/customview/CirclePageIndicator;->getCount()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    int-to-float v5, v5

    .line 171
    const/high16 v6, 0x40000000    # 2.0f

    .line 172
    .line 173
    div-float v6, v5, v6

    .line 174
    .line 175
    const/high16 v7, 0x40c00000    # 6.0f

    .line 176
    .line 177
    div-float/2addr v5, v7

    .line 178
    iget v7, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 179
    .line 180
    if-lez v7, :cond_b

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    sub-float v8, v6, v5

    .line 187
    .line 188
    cmpg-float v7, v7, v8

    .line 189
    .line 190
    if-gez v7, :cond_b

    .line 191
    .line 192
    if-eq v0, v3, :cond_a

    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 195
    .line 196
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 197
    .line 198
    sub-int/2addr v0, v2

    .line 199
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 200
    .line 201
    .line 202
    :cond_a
    return v2

    .line 203
    :cond_b
    iget v7, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 204
    .line 205
    sub-int/2addr v4, v2

    .line 206
    if-ge v7, v4, :cond_d

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    add-float/2addr v6, v5

    .line 213
    cmpl-float p1, p1, v6

    .line 214
    .line 215
    if-lez p1, :cond_d

    .line 216
    .line 217
    if-eq v0, v3, :cond_c

    .line 218
    .line 219
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 220
    .line 221
    iget v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 222
    .line 223
    add-int/2addr v0, v2

    .line 224
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 225
    .line 226
    .line 227
    :cond_c
    return v2

    .line 228
    :cond_d
    iput-boolean v1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->r:Z

    .line 229
    .line 230
    const/4 p1, -0x1

    .line 231
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 232
    .line 233
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_f

    .line 240
    .line 241
    iget-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_e
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    iput v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->q:I

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->p:F

    .line 258
    .line 259
    :cond_f
    :goto_0
    return v2

    .line 260
    :cond_10
    :goto_1
    return v1
.end method

.method public setCentered(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centered"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->m:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->h:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "ViewPager has not been bound."

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fillColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Orientation must be either HORIZONTAL or VERTICAL."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->l:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setPageColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->b:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snap"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeWidth"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/CirclePageIndicator;->f:Landroidx/viewpager/widget/ViewPager;

    .line 5
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "initialPosition"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method
