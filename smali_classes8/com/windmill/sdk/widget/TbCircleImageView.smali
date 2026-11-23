.class public Lcom/windmill/sdk/widget/TbCircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/BitmapShader;

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I


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
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/widget/TbCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/widget/TbCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const-string v2, "TbCircleImageView:"

    const-string v3, "TbCircleImageView"

    const-string v4, ":"

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v5, 0x4

    .line 4
    iput v5, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    const/4 v6, -0x1

    .line 5
    iput v6, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->k:I

    const/4 v7, 0x0

    .line 6
    iput-boolean v7, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    .line 7
    iput v7, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->m:I

    .line 8
    iput v7, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->n:I

    const/16 v8, 0x14

    .line 9
    iput v8, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    const/4 v9, 0x2

    .line 10
    iput v9, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    .line 11
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/windmill/sdk/widget/TbCircleImageView;->a()V

    const-string v10, "tobid_ci_shape_type"

    .line 12
    invoke-static {v0, v10}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    const-string v11, "tobid_ci_create_border"

    .line 13
    invoke-static {v0, v11}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    const-string v12, "tobid_ci_border_color"

    .line 14
    invoke-static {v0, v12}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    const-string v13, "tobid_ci_border_width"

    .line 15
    invoke-static {v0, v13}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tobid_ci_round_radius"

    .line 16
    invoke-static {v0, v14}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getAttrId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 17
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    filled-new-array {v10, v11, v12, v13, v14}, [I

    move-result-object v15

    .line 19
    invoke-static {v15}, Ljava/util/Arrays;->sort([I)V

    move-object/from16 v8, p2

    .line 20
    invoke-virtual {v0, v8, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v8, v5, :cond_5

    .line 22
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 23
    invoke-static {v15, v10}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 24
    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    :cond_0
    :goto_1
    const/16 v6, 0x14

    goto :goto_2

    .line 25
    :cond_1
    invoke-static {v15, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 26
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    goto :goto_1

    .line 27
    :cond_2
    invoke-static {v15, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v6, -0x1

    .line 28
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->k:I

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {v15, v13}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ne v5, v6, :cond_4

    const/4 v6, 0x4

    .line 30
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    goto :goto_1

    .line 31
    :cond_4
    invoke-static {v15, v14}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ne v5, v6, :cond_0

    const/16 v6, 0x14

    .line 32
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private a()V
    .locals 3

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->c:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->f:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->i:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->h:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "radius",
            "halfBorderWidth"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    .line 10
    iget-boolean v1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    if-eqz v1, :cond_0

    sub-float p3, p2, p3

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12
    iget p2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height",
            "doubleBorderWidth",
            "halfBorderWidth"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->h:Landroid/graphics/RectF;

    sub-float v1, p2, p5

    sub-float v2, p3, p5

    invoke-virtual {v0, p5, p5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->i:Landroid/graphics/RectF;

    sub-float/2addr p2, p4

    sub-float/2addr p3, p4

    const/4 p4, 0x0

    invoke-virtual {v0, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget p2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    iget p3, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 4
    iget-boolean p3, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    if-eqz p3, :cond_0

    .line 5
    iget p3, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    int-to-float p3, p3

    sub-float/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 6
    iget-object p4, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->h:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7
    iget p3, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    int-to-float p4, p3

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->i:Landroid/graphics/RectF;

    iget-object p4, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public createBitmapShader(Landroid/graphics/Bitmap;II)Landroid/graphics/BitmapShader;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "mTileX",
            "mTileY"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p2, v1, :cond_1

    .line 4
    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    sget-object p2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object p2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 14
    .line 15
    :goto_0
    if-eq p3, v1, :cond_3

    .line 16
    .line 17
    if-eq p3, v0, :cond_2

    .line 18
    .line 19
    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    sget-object p3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    sget-object p3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 26
    .line 27
    :goto_1
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 28
    .line 29
    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    sub-int/2addr v2, v0

    .line 30
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    .line 38
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->f:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->d:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRectBitmap()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->i:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRectBorder()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoundRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getShader()Landroid/graphics/BitmapShader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShapeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getTileX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getTileY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public isCreateBorder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/widget/TbCircleImageView;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sub-int/2addr v5, v1

    .line 32
    sub-int/2addr v5, v2

    .line 33
    int-to-float v8, v5

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v1, v3

    .line 39
    sub-int/2addr v1, v4

    .line 40
    int-to-float v9, v1

    .line 41
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget v2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    move v4, v8

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v4, v1

    .line 53
    :goto_0
    if-ne v2, v3, :cond_1

    .line 54
    .line 55
    move v2, v9

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v2, v1

    .line 58
    :goto_1
    iget v5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    .line 59
    .line 60
    int-to-float v6, v5

    .line 61
    const/high16 v7, 0x40000000    # 2.0f

    .line 62
    .line 63
    mul-float v10, v6, v7

    .line 64
    .line 65
    int-to-float v5, v5

    .line 66
    div-float v11, v5, v7

    .line 67
    .line 68
    iget-object v5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    iget-object v5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->d:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 79
    .line 80
    :cond_2
    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->d:Landroid/graphics/Bitmap;

    .line 81
    .line 82
    iget v5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->n:I

    .line 83
    .line 84
    iget v6, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->m:I

    .line 85
    .line 86
    invoke-virtual {p0, v0, v5, v6}, Lcom/windmill/sdk/widget/TbCircleImageView;->createBitmapShader(Landroid/graphics/Bitmap;II)Landroid/graphics/BitmapShader;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 91
    .line 92
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->f:Landroid/graphics/Matrix;

    .line 97
    .line 98
    sub-float/2addr v4, v10

    .line 99
    iget-object v5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->d:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    int-to-float v5, v5

    .line 106
    div-float/2addr v4, v5

    .line 107
    sub-float/2addr v2, v10

    .line 108
    iget-object v5, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->d:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    int-to-float v5, v5

    .line 115
    div-float/2addr v2, v5

    .line 116
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->f:Landroid/graphics/Matrix;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->c:Landroid/graphics/Paint;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 131
    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    .line 138
    .line 139
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    .line 145
    .line 146
    iget v2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    .line 147
    .line 148
    int-to-float v2, v2

    .line 149
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    .line 153
    .line 154
    iget-boolean v2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    .line 155
    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    iget v2, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->k:I

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    const/4 v2, 0x0

    .line 162
    :goto_2
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget v0, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    .line 166
    .line 167
    if-ne v0, v3, :cond_7

    .line 168
    .line 169
    move-object v6, p0

    .line 170
    move-object v7, p1

    .line 171
    invoke-direct/range {v6 .. v11}, Lcom/windmill/sdk/widget/TbCircleImageView;->a(Landroid/graphics/Canvas;FFFF)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    div-float/2addr v1, v7

    .line 176
    invoke-direct {p0, p1, v1, v11}, Lcom/windmill/sdk/widget/TbCircleImageView;->a(Landroid/graphics/Canvas;FF)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    .line 182
    .line 183
    :goto_3
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderPaint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderWidth"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setCreateBorder(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createBorder"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->f:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-void
.end method

.method public setRawBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawBitmap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->d:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public setRectBitmap(Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectBitmap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->i:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-void
.end method

.method public setRectBorder(Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectBorder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundRadius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public setShader(Landroid/graphics/BitmapShader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shader"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->e:Landroid/graphics/BitmapShader;

    .line 2
    .line 3
    return-void
.end method

.method public setShapeType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public setTileX(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileX"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setTileY(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileY"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/TbCircleImageView;->m:I

    .line 2
    .line 3
    return-void
.end method
