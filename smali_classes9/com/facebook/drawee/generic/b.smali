.class public Lcom/facebook/drawee/generic/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final t:I = 0x12c

.field public static final u:Lcom/facebook/drawee/drawable/s$c;

.field public static final v:Lcom/facebook/drawee/drawable/s$c;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:I

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private m:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/graphics/ColorFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private p:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private r:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/facebook/drawee/generic/RoundingParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->h:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/drawee/generic/b;->u:Lcom/facebook/drawee/drawable/s$c;

    .line 4
    .line 5
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 6
    .line 7
    sput-object v0, Lcom/facebook/drawee/generic/b;->v:Lcom/facebook/drawee/drawable/s$c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->s()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    const/16 v0, 0x12c

    .line 2
    .line 3
    iput v0, p0, Lcom/facebook/drawee/generic/b;->b:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/facebook/drawee/generic/b;->c:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    sget-object v1, Lcom/facebook/drawee/generic/b;->u:Lcom/facebook/drawee/drawable/s$c;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 26
    .line 27
    sget-object v1, Lcom/facebook/drawee/generic/b;->v:Lcom/facebook/drawee/drawable/s$c;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->m:Landroid/graphics/Matrix;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    .line 44
    .line 45
    return-void
.end method

.method public static t(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/generic/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/b;-><init>(Landroid/content/res/Resources;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public A(I)Lcom/facebook/drawee/generic/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fadeDuration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/drawee/generic/b;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public B(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-object p0
.end method

.method public C(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "failureImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 10
    .line 11
    return-object p0
.end method

.method public D(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureDrawable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public E(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failureDrawable",
            "failureImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 4
    .line 5
    return-object p0
.end method

.method public F(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public G(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p1, v0, v1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 18
    .line 19
    :goto_0
    return-object p0
.end method

.method public H(Ljava/util/List;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/facebook/drawee/generic/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public I(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-object p0
.end method

.method public J(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "placeholderImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 10
    .line 11
    return-object p0
.end method

.method public K(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderDrawable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public L(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "placeholderDrawable",
            "placeholderImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 4
    .line 5
    return-object p0
.end method

.method public M(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public N(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 10
    .line 11
    .line 12
    const v1, 0x10100a7

    .line 13
    .line 14
    .line 15
    filled-new-array {v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public O(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-object p0
.end method

.method public P(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "progressBarImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 10
    .line 11
    return-object p0
.end method

.method public Q(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressBarDrawable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public R(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progressBarDrawable",
            "progressBarImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 4
    .line 5
    return-object p0
.end method

.method public S(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressBarImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public T(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-object p0
.end method

.method public U(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "retryImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 10
    .line 11
    return-object p0
.end method

.method public V(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryDrawable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public W(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "retryDrawable",
            "retryImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 4
    .line 5
    return-object p0
.end method

.method public X(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public Y(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundingParams"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public a()Lcom/facebook/drawee/generic/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->Z()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/drawee/generic/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/a;-><init>(Lcom/facebook/drawee/generic/b;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public b()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/generic/b;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/generic/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lcom/facebook/drawee/generic/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->s()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public v(Landroid/graphics/ColorFilter;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Landroid/graphics/PointF;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object p0
.end method

.method public x(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->m:Landroid/graphics/Matrix;

    .line 5
    .line 6
    return-object p0
.end method

.method public y(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public z(F)Lcom/facebook/drawee/generic/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desiredAspectRatio"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/drawee/generic/b;->c:F

    .line 2
    .line 3
    return-object p0
.end method
