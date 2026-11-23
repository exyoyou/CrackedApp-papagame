.class public Lcom/melnykov/fab/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/melnykov/fab/FloatingActionButton$d;,
        Lcom/melnykov/fab/FloatingActionButton$c;,
        Lcom/melnykov/fab/FloatingActionButton$b;,
        Lcom/melnykov/fab/FloatingActionButton$TYPE;
    }
.end annotation


# static fields
.field private static final m:I = 0x1f4

.field public static final n:I = 0x0

.field public static final o:I = 0x1


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private final l:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->l:Landroid/view/animation/Interpolator;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p3, p0, Lcom/melnykov/fab/FloatingActionButton;->l:Landroid/view/animation/Interpolator;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private C(ZZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->b:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_4

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->b:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$a;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton$a;-><init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    div-int/lit8 p3, p3, 0x2

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->getMarginRight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr p3, v0

    .line 51
    :goto_0
    if-eqz p2, :cond_3

    .line 52
    .line 53
    invoke-static {p0}, Lcom/nineoldandroids/view/b;->c(Landroid/view/View;)Lcom/nineoldandroids/view/b;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->l:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/nineoldandroids/view/b;->r(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/b;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-wide/16 v0, 0x1f4

    .line 64
    .line 65
    invoke-virtual {p2, v0, v1}, Lcom/nineoldandroids/view/b;->q(J)Lcom/nineoldandroids/view/b;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    int-to-float p3, p3

    .line 70
    invoke-virtual {p2, p3}, Lcom/nineoldandroids/view/b;->v(F)Lcom/nineoldandroids/view/b;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    int-to-float p2, p3

    .line 75
    invoke-static {p0, p2}, Lcom/nineoldandroids/view/a;->y(Landroid/view/View;F)V

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->p()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method private D()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x10100a7

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->k(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    const v1, -0x101009e

    .line 23
    .line 24
    .line 25
    filled-new-array {v1}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->f:I

    .line 30
    .line 31
    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->k(I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [I

    .line 40
    .line 41
    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 42
    .line 43
    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->k(I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method static synthetic a(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getMarginBottom()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private getMarginRight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private k(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->g:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->r()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    sget v0, Lcom/melnykov/fab/R$drawable;->fab_shadow:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget v0, Lcom/melnykov/fab/R$drawable;->fab_shadow_mini:I

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    aput-object p1, v2, v3

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    aput-object v1, v2, p1

    .line 55
    .line 56
    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    iget v7, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    .line 61
    .line 62
    move-object v2, v0

    .line 63
    move v4, v7

    .line 64
    move v5, v7

    .line 65
    move v6, v7

    .line 66
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_1
    return-object v1
.end method

.method private static l(I)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    aget v1, v0, p0

    .line 9
    .line 10
    const v2, 0x3f666666    # 0.9f

    .line 11
    .line 12
    .line 13
    mul-float v1, v1, v2

    .line 14
    .line 15
    aput v1, v0, p0

    .line 16
    .line 17
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private m(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private n(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method private q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method private r()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private v(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->b:Z

    .line 3
    .line 4
    sget v1, Lcom/melnykov/fab/R$color;->material_blue_500:I

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 11
    .line 12
    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->l(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 17
    .line 18
    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->y(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    .line 25
    .line 26
    const/high16 v1, 0x1060000

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->f:I

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->g:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget v1, Lcom/melnykov/fab/R$dimen;->fab_scroll_threshold:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->j:I

    .line 50
    .line 51
    sget v0, Lcom/melnykov/fab/R$dimen;->fab_shadow_size:I

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->n(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->r()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    sget v0, Lcom/melnykov/fab/R$anim;->fab_press_elevation:I

    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    if-eqz p2, :cond_1

    .line 75
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->w(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private w(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorNormal:I

    .line 10
    .line 11
    sget v0, Lcom/melnykov/fab/R$color;->material_blue_500:I

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 22
    .line 23
    sget v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorPressed:I

    .line 24
    .line 25
    invoke-static {p2}, Lcom/melnykov/fab/FloatingActionButton;->l(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 34
    .line 35
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorRipple:I

    .line 36
    .line 37
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/melnykov/fab/FloatingActionButton;->y(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    .line 48
    .line 49
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    .line 50
    .line 51
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->f:I

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->f:I

    .line 58
    .line 59
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_shadow:I

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton;->g:Z

    .line 67
    .line 68
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_type:I

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p2

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method private static y(I)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    aget v1, v0, p0

    .line 9
    .line 10
    const v2, 0x3f8ccccd    # 1.1f

    .line 11
    .line 12
    .line 13
    mul-float v1, v1, v2

    .line 14
    .line 15
    aput v1, v0, p0

    .line 16
    .line 17
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private z()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 20
    .line 21
    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->i:I

    .line 22
    .line 23
    sub-int/2addr v1, v2

    .line 24
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 25
    .line 26
    sub-int/2addr v3, v2

    .line 27
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 28
    .line 29
    sub-int/2addr v4, v2

    .line 30
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 31
    .line 32
    sub-int/2addr v5, v2

    .line 33
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->k:Z

    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->B(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public B(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->d(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->d(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public d(Landroid/widget/AbsListView;Lcom/melnykov/fab/d;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$b;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$b;->h(Lcom/melnykov/fab/FloatingActionButton$b;Lcom/melnykov/fab/d;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$b;->i(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/melnykov/fab/a;->f(Landroid/widget/AbsListView;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->j:I

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/melnykov/fab/a;->g(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->g(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->g(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView;Lcom/melnykov/fab/d;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$c;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$c;->p(Lcom/melnykov/fab/FloatingActionButton$c;Lcom/melnykov/fab/d;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$c;->q(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->j:I

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/melnykov/fab/c;->o(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public h(Lcom/melnykov/fab/ObservableScrollView;)V
    .locals 1
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->j(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;Lcom/melnykov/fab/ObservableScrollView$a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public i(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;)V
    .locals 1
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->j(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;Lcom/melnykov/fab/ObservableScrollView$a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public j(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/d;Lcom/melnykov/fab/ObservableScrollView$a;)V
    .locals 2
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$d;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$d;->e(Lcom/melnykov/fab/FloatingActionButton$d;Lcom/melnykov/fab/d;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$d;->f(Lcom/melnykov/fab/ObservableScrollView$a;)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->j:I

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/melnykov/fab/e;->d(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/melnykov/fab/ObservableScrollView;->setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget p2, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p2, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    .line 12
    .line 13
    :goto_0
    invoke-direct {p0, p2}, Lcom/melnykov/fab/FloatingActionButton;->n(I)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorNormal(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorPressed(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->e:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->m(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorRipple(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShadow(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->g:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->g:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->h:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->u(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->b:Z

    .line 2
    .line 3
    return v0
.end method
