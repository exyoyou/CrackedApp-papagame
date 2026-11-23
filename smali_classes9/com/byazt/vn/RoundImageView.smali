.class public Lcom/byazt/vn/RoundImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rb/sp;
.implements Lcom/byazt/sz/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x294,
        0x75f
    }
.end annotation


# static fields
.field public static final c:Landroid/graphics/Shader$TileMode;

.field public static final synthetic tt:Z = true

.field public static final uj:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/RectF;

.field public da:Z

.field public gr:Landroid/graphics/Path;

.field public gt:Lcom/byazt/sa/uj;

.field public gu:F

.field public h:Landroid/graphics/Bitmap;

.field public i:Landroid/graphics/ColorFilter;

.field public m:I

.field public md:Landroid/graphics/Canvas;

.field public my:Landroid/graphics/Shader$TileMode;

.field public final n:[F

.field public nu:Landroid/widget/ImageView$ScaleType;

.field public p:F

.field public qy:Z

.field public rh:Landroid/graphics/Shader$TileMode;

.field public rl:Lcom/byazt/rb/x;

.field public sl:Landroid/graphics/drawable/Drawable;

.field public sp:Landroid/content/res/ColorStateList;

.field public t:Z

.field public u:Z

.field public ve:F

.field public x:F

.field public yp:Z

.field public yv:F

.field public z:I

.field public zm:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 2
    .line 3
    sput-object v0, Lcom/byazt/vn/RoundImageView;->c:Landroid/graphics/Shader$TileMode;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    aput-object v2, v0, v1

    .line 38
    .line 39
    const/4 v1, 0x6

    .line 40
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    aput-object v2, v0, v1

    .line 48
    .line 49
    sput-object v0, Lcom/byazt/vn/RoundImageView;->uj:[Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    new-array p1, p1, [F

    .line 6
    .line 7
    fill-array-data p1, :array_0

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->n:[F

    .line 11
    .line 12
    const/high16 p1, -0x1000000

    .line 13
    .line 14
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->sp:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->x:F

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->i:Landroid/graphics/ColorFilter;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->da:Z

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->t:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->u:Z

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->yp:Z

    .line 34
    .line 35
    sget-object v0, Lcom/byazt/vn/RoundImageView;->c:Landroid/graphics/Shader$TileMode;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/vn/RoundImageView;->rh:Landroid/graphics/Shader$TileMode;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/vn/RoundImageView;->my:Landroid/graphics/Shader$TileMode;

    .line 40
    .line 41
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->qy:Z

    .line 42
    .line 43
    const/high16 p1, 0x42480000    # 50.0f

    .line 44
    .line 45
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->gu:F

    .line 46
    .line 47
    new-instance p1, Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->d:Landroid/graphics/RectF;

    .line 53
    .line 54
    new-instance p1, Lcom/byazt/rb/x;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/byazt/rb/x;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/byazt/vn/RoundImageView;->z:I

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/byazt/vn/RoundImageView;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/vn/RoundImageView;->z:I

    .line 6
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/byazt/vn/c;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/byazt/vn/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11
    check-cast p1, Lcom/byazt/vn/c;

    .line 12
    invoke-virtual {p1, p2}, Lcom/byazt/vn/c;->c(Landroid/widget/ImageView$ScaleType;)Lcom/byazt/vn/c;

    move-result-object p2

    iget v0, p0, Lcom/byazt/vn/RoundImageView;->x:F

    .line 13
    invoke-virtual {p2, v0}, Lcom/byazt/vn/c;->c(F)Lcom/byazt/vn/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->sp:Landroid/content/res/ColorStateList;

    .line 14
    invoke-virtual {p2, v0}, Lcom/byazt/vn/c;->c(Landroid/content/res/ColorStateList;)Lcom/byazt/vn/c;

    move-result-object p2

    iget-boolean v0, p0, Lcom/byazt/vn/RoundImageView;->u:Z

    .line 15
    invoke-virtual {p2, v0}, Lcom/byazt/vn/c;->c(Z)Lcom/byazt/vn/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rh:Landroid/graphics/Shader$TileMode;

    .line 16
    invoke-virtual {p2, v0}, Lcom/byazt/vn/c;->c(Landroid/graphics/Shader$TileMode;)Lcom/byazt/vn/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->my:Landroid/graphics/Shader$TileMode;

    .line 17
    invoke-virtual {p2, v0}, Lcom/byazt/vn/c;->tt(Landroid/graphics/Shader$TileMode;)Lcom/byazt/vn/c;

    .line 18
    iget-object p2, p0, Lcom/byazt/vn/RoundImageView;->n:[F

    if-eqz p2, :cond_1

    .line 19
    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/byazt/vn/c;->c(FFFF)Lcom/byazt/vn/c;

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->uj()V

    return-void

    .line 21
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 22
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 24
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/byazt/vn/RoundImageView;->c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/byazt/vn/RoundImageView;->yp:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/byazt/vn/c;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/byazt/vn/RoundImageView;->c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private tt()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget v2, p0, Lcom/byazt/vn/RoundImageView;->m:I

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Unable to find resource: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v3, p0, Lcom/byazt/vn/RoundImageView;->m:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "RoundedImageView"

    .line 36
    .line 37
    invoke-static {v3, v2, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/byazt/vn/RoundImageView;->m:I

    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/byazt/vn/c;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/byazt/vn/RoundImageView;->da:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/byazt/vn/RoundImageView;->t:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/vn/RoundImageView;->i:Landroid/graphics/ColorFilter;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/vn/RoundImageView;->nu:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/byazt/vn/RoundImageView;->c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(FFFF)V
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->n:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v2, v0, v4

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    .line 26
    :cond_0
    aput p1, v0, v1

    .line 27
    aput p2, v0, v5

    .line 28
    aput p3, v0, v4

    .line 29
    aput p4, v0, v3

    .line 30
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 31
    invoke-direct {p0, v1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(Lcom/byazt/sa/uj;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/sa/uj;->tt(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->sp:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->sp:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBorderRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vn/RoundImageView;->x:F

    .line 2
    .line 3
    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/vn/RoundImageView;->getMaxCornerRadius()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->n:[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget v4, v0, v3

    .line 9
    .line 10
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return v2
.end method

.method public getRipple()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vn/RoundImageView;->ve:F

    .line 2
    .line 3
    return v0
.end method

.method public getRubIn()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->getRubIn()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->nu:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShine()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->getShine()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->getStretch()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rh:Landroid/graphics/Shader$TileMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->my:Landroid/graphics/Shader$TileMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sa/uj;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sa/uj;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->md:Landroid/graphics/Canvas;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->h:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/vn/RoundImageView;->md:Landroid/graphics/Canvas;

    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/vn/RoundImageView;->qy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->md:Landroid/graphics/Canvas;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/vn/RoundImageView;->h:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->md:Landroid/graphics/Canvas;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/vn/RoundImageView;->gr:Landroid/graphics/Path;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->h:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, p1, p0}, Lcom/byazt/sa/uj;->c(Landroid/graphics/Canvas;Lcom/byazt/sz/n;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/byazt/sa/uj;->c(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/byazt/sa/uj;->c(IIII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/sa/uj;->c(II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    aget p2, p1, p2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget p1, p1, v0

    .line 14
    .line 15
    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p4, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-interface {p4, p1, p2, p3, p3}, Lcom/byazt/sa/uj;->tt(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-lez p1, :cond_1

    .line 12
    .line 13
    if-lez p2, :cond_1

    .line 14
    .line 15
    iget-boolean p3, p0, Lcom/byazt/vn/RoundImageView;->qy:Z

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->h:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    new-instance p1, Landroid/graphics/Canvas;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/byazt/vn/RoundImageView;->h:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->md:Landroid/graphics/Canvas;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/byazt/vn/RoundImageView;->qy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/sa/uj;->n()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string v2, "eraseState"

    .line 23
    .line 24
    const-string v3, "state"

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-eq p1, v4, :cond_1

    .line 31
    .line 32
    if-eq p1, v5, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    cmpl-float v2, v0, p1

    .line 38
    .line 39
    if-lez v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    cmpg-float v2, v0, v2

    .line 47
    .line 48
    if-gez v2, :cond_3

    .line 49
    .line 50
    cmpl-float p1, v1, p1

    .line 51
    .line 52
    if-lez p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    cmpg-float p1, v1, p1

    .line 60
    .line 61
    if-gez p1, :cond_3

    .line 62
    .line 63
    iget p1, p0, Lcom/byazt/vn/RoundImageView;->yv:F

    .line 64
    .line 65
    add-float v2, p1, v0

    .line 66
    .line 67
    const/high16 v3, 0x40000000    # 2.0f

    .line 68
    .line 69
    div-float/2addr v2, v3

    .line 70
    iget v5, p0, Lcom/byazt/vn/RoundImageView;->p:F

    .line 71
    .line 72
    add-float v6, v5, v1

    .line 73
    .line 74
    div-float/2addr v6, v3

    .line 75
    iget-object v3, p0, Lcom/byazt/vn/RoundImageView;->gr:Landroid/graphics/Path;

    .line 76
    .line 77
    invoke-virtual {v3, p1, v5, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 78
    .line 79
    .line 80
    iput v0, p0, Lcom/byazt/vn/RoundImageView;->yv:F

    .line 81
    .line 82
    iput v1, p0, Lcom/byazt/vn/RoundImageView;->p:F

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->gr:Landroid/graphics/Path;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->d:Landroid/graphics/RectF;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 90
    .line 91
    .line 92
    :try_start_0
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->d:Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->d:Landroid/graphics/RectF;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    mul-float p1, p1, v0

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    mul-int v0, v0, v1

    .line 115
    .line 116
    int-to-float v0, v0

    .line 117
    div-float/2addr p1, v0

    .line 118
    const/high16 v0, 0x42c80000    # 100.0f

    .line 119
    .line 120
    mul-float p1, p1, v0

    .line 121
    .line 122
    float-to-int p1, p1

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v1, "percent"

    .line 138
    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 147
    .line 148
    invoke-interface {p1, v2, v0}, Lcom/byazt/sa/uj;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->gr:Landroid/graphics/Path;

    .line 153
    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    .line 156
    .line 157
    iput v0, p0, Lcom/byazt/vn/RoundImageView;->yv:F

    .line 158
    .line 159
    iput v1, p0, Lcom/byazt/vn/RoundImageView;->p:F

    .line 160
    .line 161
    new-instance p1, Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 174
    .line 175
    invoke-interface {v0, v2, p1}, Lcom/byazt/sa/uj;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 179
    .line 180
    .line 181
    return v4

    .line 182
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->gt:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/sa/uj;->c(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/vn/RoundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/vn/RoundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vn/RoundImageView;->m:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->m:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->tt()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/byazt/vn/RoundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/vn/RoundImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->sp:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->sp:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 6
    iget p1, p0, Lcom/byazt/vn/RoundImageView;->x:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->c(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/vn/RoundImageView;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->x:F

    .line 4
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/vn/RoundImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->i:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->i:Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->t:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->da:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->uj()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/byazt/vn/RoundImageView;->c(FFFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/byazt/vn/RoundImageView;->c(FFFF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setEraseEnabled(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->gr:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 35
    .line 36
    iget v2, p0, Lcom/byazt/vn/RoundImageView;->gu:F

    .line 37
    .line 38
    const/high16 v3, 0x40000000    # 2.0f

    .line 39
    .line 40
    mul-float v2, v2, v3

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 46
    .line 47
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 53
    .line 54
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 60
    .line 61
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 62
    .line 63
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 64
    .line 65
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, p0, Lcom/byazt/vn/RoundImageView;->qy:Z

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iput-boolean v0, p0, Lcom/byazt/vn/RoundImageView;->qy:Z

    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public setEraseRadius(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->gu:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->zm:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    mul-float p1, p1, v1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/vn/RoundImageView;->z:I

    .line 3
    .line 4
    invoke-static {p1}, Lcom/byazt/vn/c;->c(Landroid/graphics/Bitmap;)Lcom/byazt/vn/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/vn/RoundImageView;->z:I

    .line 3
    .line 4
    invoke-static {p1}, Lcom/byazt/vn/c;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/vn/RoundImageView;->z:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->z:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->c()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/vn/RoundImageView;->sl:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/vn/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/vn/RoundImageView;->u:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRipple(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/byazt/vn/RoundImageView;->ve:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->tt(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRubIn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->n(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/vn/RoundImageView;->tt:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->nu:Landroid/widget/ImageView$ScaleType;

    .line 15
    .line 16
    if-eq v0, p1, :cond_3

    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->nu:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    sget-object v0, Lcom/byazt/vn/RoundImageView$1;->c:[I

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    aget v0, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public setShine(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->ve(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setStretch(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rl:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->uj(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->rh:Landroid/graphics/Shader$TileMode;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->rh:Landroid/graphics/Shader$TileMode;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vn/RoundImageView;->my:Landroid/graphics/Shader$TileMode;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/byazt/vn/RoundImageView;->my:Landroid/graphics/Shader$TileMode;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/vn/RoundImageView;->ve()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/vn/RoundImageView;->c(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
