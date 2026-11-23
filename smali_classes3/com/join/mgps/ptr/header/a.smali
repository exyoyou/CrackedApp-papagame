.class public Lcom/join/mgps/ptr/header/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/header/a$h;,
        Lcom/join/mgps/ptr/header/a$g;,
        Lcom/join/mgps/ptr/header/a$f;,
        Lcom/join/mgps/ptr/header/a$i;
    }
.end annotation


# static fields
.field private static final A:F = 3.0f

.field private static final B:I = 0x535

.field private static final C:F = 5.0f

.field private static final D:I = 0xa

.field private static final E:I = 0x5

.field private static final F:F = 5.0f

.field private static final G:I = 0xc

.field private static final H:I = 0x6

.field private static final I:F = 0.8f

.field private static final J:I = 0x1e000000

.field private static final K:I = 0x3d000000

.field private static final L:F = 3.5f

.field private static final M:F = 0.0f

.field private static final N:F = 1.75f

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field private static final r:Landroid/view/animation/Interpolator;

.field private static final s:Landroid/view/animation/Interpolator;

.field private static final t:Landroid/view/animation/Interpolator;

.field private static final u:Landroid/view/animation/Interpolator;

.field private static final v:I = 0x28

.field private static final w:F = 8.75f

.field private static final x:F = 2.5f

.field private static final y:I = 0x38

.field private static final z:F = 12.5f


# instance fields
.field private final b:[I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/join/mgps/ptr/header/a$h;

.field private final e:Landroid/graphics/drawable/Drawable$Callback;

.field private f:F

.field private g:Landroid/content/res/Resources;

.field private h:Landroid/view/View;

.field private i:Landroid/view/animation/Animation;

.field private j:F

.field private k:D

.field private l:D

.field private m:Landroid/view/animation/Animation;

.field private n:I

.field private o:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/ptr/header/a;->r:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/ptr/header/a$f;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/a$f;-><init>(Lcom/join/mgps/ptr/header/a$a;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/join/mgps/ptr/header/a;->s:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/ptr/header/a$i;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/a$i;-><init>(Lcom/join/mgps/ptr/header/a$a;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/join/mgps/ptr/header/a;->t:Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/join/mgps/ptr/header/a;->u:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parent"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, -0x82dc2

    .line 5
    .line 6
    .line 7
    const v1, -0xcb5cb0

    .line 8
    .line 9
    .line 10
    const v2, -0x36cbc9

    .line 11
    .line 12
    .line 13
    const v3, -0xc8a40f

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v3, v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/ptr/header/a;->b:[I

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/ptr/header/a;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/ptr/header/a$a;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/header/a$a;-><init>(Lcom/join/mgps/ptr/header/a;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/ptr/header/a;->e:Landroid/graphics/drawable/Drawable$Callback;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/content/res/Resources;

    .line 43
    .line 44
    new-instance p1, Lcom/join/mgps/ptr/header/a$h;

    .line 45
    .line 46
    invoke-direct {p1, v1}, Lcom/join/mgps/ptr/header/a$h;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->w([I)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/header/a;->r(I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/a;->p()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ptr/header/a;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/header/a;->i:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/ptr/header/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/ptr/header/a;->t:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/ptr/header/a;->s:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e(Lcom/join/mgps/ptr/header/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/a;->j:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/ptr/header/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/a;->j:F

    .line 2
    .line 3
    return p1
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/header/a;->f:F

    .line 2
    .line 3
    return v0
.end method

.method private m(DDDDFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progressCircleWidth",
            "progressCircleHeight",
            "centerRadius",
            "strokeWidth",
            "arrowWidth",
            "arrowHeight"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    float-to-double v2, v1

    .line 12
    mul-double p1, p1, v2

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/join/mgps/ptr/header/a;->k:D

    .line 15
    .line 16
    mul-double p3, p3, v2

    .line 17
    .line 18
    iput-wide p3, p0, Lcom/join/mgps/ptr/header/a;->l:D

    .line 19
    .line 20
    double-to-float p1, p7

    .line 21
    mul-float p1, p1, v1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->C(F)V

    .line 24
    .line 25
    .line 26
    mul-double p5, p5, v2

    .line 27
    .line 28
    invoke-virtual {v0, p5, p6}, Lcom/join/mgps/ptr/header/a$h;->t(D)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    .line 33
    .line 34
    .line 35
    mul-float p9, p9, v1

    .line 36
    .line 37
    mul-float p10, p10, v1

    .line 38
    .line 39
    invoke-virtual {v0, p9, p10}, Lcom/join/mgps/ptr/header/a$h;->q(FF)V

    .line 40
    .line 41
    .line 42
    iget-wide p1, p0, Lcom/join/mgps/ptr/header/a;->k:D

    .line 43
    .line 44
    double-to-int p1, p1

    .line 45
    iget-wide p2, p0, Lcom/join/mgps/ptr/header/a;->l:D

    .line 46
    .line 47
    double-to-int p2, p2

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ptr/header/a$h;->y(II)V

    .line 49
    .line 50
    .line 51
    iget-wide p1, p0, Lcom/join/mgps/ptr/header/a;->k:D

    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/header/a;->o(D)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private o(D)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "diameter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lz6/b;->c(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 11
    .line 12
    invoke-static {v0}, Lz6/b;->b(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Lz6/b;->b(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x40600000    # 3.5f

    .line 22
    .line 23
    invoke-static {v2}, Lz6/b;->b(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v3, Lcom/join/mgps/ptr/header/a$g;

    .line 28
    .line 29
    double-to-int p1, p1

    .line 30
    invoke-direct {v3, p0, v2, p1}, Lcom/join/mgps/ptr/header/a$g;-><init>(Lcom/join/mgps/ptr/header/a;II)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    .line 34
    .line 35
    invoke-direct {p1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a;->o:Landroid/graphics/drawable/ShapeDrawable;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, v3, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a;->o:Landroid/graphics/drawable/ShapeDrawable;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    int-to-float p2, v2

    .line 57
    int-to-float v1, v1

    .line 58
    int-to-float v0, v0

    .line 59
    const/high16 v2, 0x1e000000

    .line 60
    .line 61
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/ptr/header/a$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/ptr/header/a$b;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/join/mgps/ptr/header/a;->u:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x29a

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/join/mgps/ptr/header/a$c;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/ptr/header/a$c;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/ptr/header/a$d;

    .line 27
    .line 28
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/ptr/header/a$d;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/join/mgps/ptr/header/a;->r:Landroid/view/animation/Interpolator;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v3, 0x535

    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/join/mgps/ptr/header/a$e;

    .line 50
    .line 51
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/ptr/header/a$e;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/join/mgps/ptr/header/a;->m:Landroid/view/animation/Animation;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/join/mgps/ptr/header/a;->i:Landroid/view/animation/Animation;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->o:Landroid/graphics/drawable/ShapeDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/join/mgps/ptr/header/a;->n:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->o:Landroid/graphics/drawable/ShapeDrawable;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, p0, Lcom/join/mgps/ptr/header/a;->f:F

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 41
    .line 42
    invoke-virtual {v2, p1, v0}, Lcom/join/mgps/ptr/header/a$h;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ptr/header/a;->l:D

    .line 2
    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ptr/header/a;->k:D

    .line 2
    .line 3
    double-to-int v0, v0

    .line 4
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->r(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/a;->n:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->s(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroid/view/animation/Animation;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v2
.end method

.method public varargs j([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->w([I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public k(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->z(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method l(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/a;->f:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startAngle",
            "endAngle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->B(F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/join/mgps/ptr/header/a$h;->x(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public q(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->A(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(I)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    .line 4
    .line 5
    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    .line 6
    .line 7
    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    .line 8
    .line 9
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 10
    .line 11
    const/high16 v9, 0x41400000    # 12.0f

    .line 12
    .line 13
    const/high16 v10, 0x40c00000    # 6.0f

    .line 14
    .line 15
    move-object/from16 v0, p0

    .line 16
    .line 17
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/ptr/header/a;->m(DDDDFF)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 22
    .line 23
    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    .line 24
    .line 25
    const-wide v16, 0x4021800000000000L    # 8.75

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    .line 31
    .line 32
    const/high16 v20, 0x41200000    # 10.0f

    .line 33
    .line 34
    const/high16 v21, 0x40a00000    # 5.0f

    .line 35
    .line 36
    move-object/from16 v11, p0

    .line 37
    .line 38
    invoke-direct/range {v11 .. v21}, Lcom/join/mgps/ptr/header/a;->m(DDDDFF)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->p(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->u(Landroid/graphics/ColorFilter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->i:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->D()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->e()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/ptr/header/a$h;->h()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->m:Landroid/view/animation/Animation;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->o()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->i:Landroid/view/animation/Animation;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/a;->l(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a$h;->A(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->d:Lcom/join/mgps/ptr/header/a$h;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->o()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
