.class public Lcom/windmill/sdk/widget/TbLightingAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private c:Landroid/animation/ValueAnimator;

.field private d:I

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/RectF;

.field private g:[I

.field private h:[F

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I


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
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/widget/TbLightingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/widget/TbLightingAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ","

    const-string v3, ":"

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    const/4 v4, 0x0

    .line 6
    iput-object v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    .line 7
    iput v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 8
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->e:Landroid/graphics/Path;

    .line 9
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->f:Landroid/graphics/RectF;

    const v5, 0xffffff

    .line 10
    filled-new-array {v5, v4, v5}, [I

    move-result-object v5

    iput-object v5, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->g:[I

    const/4 v5, 0x3

    new-array v6, v5, [F

    .line 11
    fill-array-data v6, :array_0

    iput-object v6, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->h:[F

    const/4 v6, 0x1

    .line 12
    iput v6, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->i:I

    const/16 v7, 0x3e8

    .line 13
    iput v7, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->j:I

    .line 14
    iput v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    const-wide v7, 0x3fe38c35418a5bf6L    # 0.6108652381980153

    .line 15
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->l:F

    .line 16
    iput v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    const v7, 0x3f19999a    # 0.6f

    .line 17
    :try_start_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    const-string v7, "tobid_la_colors"

    .line 18
    invoke-static {v0, v7}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const-string v8, "tobid_la_positions"

    .line 19
    invoke-static {v0, v8}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const-string v9, "tobid_la_play_mode"

    .line 20
    invoke-static {v0, v9}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const-string v10, "tobid_la_repeat"

    .line 21
    invoke-static {v0, v10}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    const-string v11, "tobid_la_duration"

    .line 22
    invoke-static {v0, v11}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    const-string v12, "tobid_la_radius"

    .line 23
    invoke-static {v0, v12}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    const-string v13, "tobid_la_k"

    .line 24
    invoke-static {v0, v13}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tobid_la_w"

    .line 25
    invoke-static {v0, v14}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    const-string v15, "TbLightingAnimationView"

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbLightingAnimationView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v7, v3, v4

    aput v8, v3, v6

    const/4 v5, 0x2

    aput v9, v3, v5

    const/4 v5, 0x3

    aput v10, v3, v5

    const/4 v5, 0x4

    aput v11, v3, v5

    const/4 v5, 0x5

    aput v12, v3, v5

    const/4 v5, 0x6

    aput v13, v3, v5

    const/4 v5, 0x7

    aput v14, v3, v5

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    move-object/from16 v5, p2

    .line 28
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    invoke-static {v3, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {v3, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    array-length v6, v5

    .line 34
    array-length v7, v2

    if-ne v6, v7, :cond_0

    .line 35
    new-array v7, v6, [I

    iput-object v7, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->g:[I

    .line 36
    new-array v7, v6, [F

    iput-object v7, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->h:[F

    :goto_0
    if-ge v4, v6, :cond_0

    .line 37
    iget-object v7, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->g:[I

    aget-object v8, v5, v4

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    .line 38
    iget-object v7, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->h:[F

    aget-object v8, v2, v4

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v3, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    iget v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->i:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->i:I

    .line 40
    invoke-static {v3, v10}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    iget v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    if-gez v2, :cond_1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 41
    iput v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    .line 42
    :cond_1
    invoke-static {v3, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    iget v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->j:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->j:I

    .line 43
    invoke-static {v3, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    iget v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 44
    invoke-static {v3, v13}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    iget v4, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->l:F

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->l:F

    .line 45
    invoke-static {v3, v14}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    iget v3, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic a(FFLandroid/animation/ValueAnimator;)V
    .locals 8

    .line 19
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 20
    new-instance p3, Landroid/graphics/LinearGradient;

    mul-float v2, p1, v1

    add-float v3, v1, p2

    mul-float v4, p1, v3

    iget-object v5, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->g:[I

    iget-object v6, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->h:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 21
    iget-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private a(IIIJ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "repeatCount",
            "duration"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    int-to-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    int-to-float v2, p2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 7
    iget v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->l:F

    .line 8
    iget v2, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    if-gez v2, :cond_0

    .line 9
    iput p2, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    .line 10
    :cond_0
    iget p2, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    int-to-float p2, p2

    .line 11
    iget-object v2, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, p2

    sub-float/2addr v1, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v1, 0x1

    add-float/2addr p1, v3

    aput p1, v2, v1

    .line 13
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iget-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/windmill/sdk/widget/g;

    invoke-direct {p3, p0, v0, p2}, Lcom/windmill/sdk/widget/g;-><init>(Lcom/windmill/sdk/widget/TbLightingAnimationView;FF)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    iget-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/windmill/sdk/widget/TbLightingAnimationView;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public getMk()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public getMw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->c:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
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
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->e:Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iput v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->f:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->e:Landroid/graphics/Path;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->f:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget v2, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 42
    .line 43
    int-to-float v3, v2

    .line 44
    int-to-float v2, v2

    .line 45
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->e:Landroid/graphics/Path;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->b:Landroid/graphics/Path;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onMeasure(II)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->i:I

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget v3, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    .line 18
    .line 19
    iget p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->j:I

    .line 20
    .line 21
    int-to-long v4, p1

    .line 22
    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a(IIIJ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public setColorAndPositions([I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colors",
            "positions"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p2

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->g:[I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->h:[F

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string p2, "colors and positions \u6570\u7ec4\u5927\u5c0f\u5fc5\u987b\u4e00\u81f4"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setMk(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mk"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->l:F

    .line 2
    .line 3
    return-void
.end method

.method public setMw(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mw"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRadius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public startLightingAnimation()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    iget v0, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->j:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a(IIIJ)V

    return-void
.end method

.method public startLightingAnimation(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/windmill/sdk/widget/TbLightingAnimationView;->k:I

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a(IIIJ)V

    return-void
.end method

.method public startLightingAnimation(JI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "repeatCount"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a(IIIJ)V

    return-void
.end method
