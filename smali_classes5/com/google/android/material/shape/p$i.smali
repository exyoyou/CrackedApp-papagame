.class public Lcom/google/android/material/shape/p$i;
.super Lcom/google/android/material/shape/p$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/p$h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/shape/p$i;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/p$i;->j(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/shape/p$i;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/p$i;->k(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/shape/p$i;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/p$i;->l(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/shape/p$i;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/p$i;->m(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/p$i;->b:F

    .line 2
    .line 3
    return v0
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/p$i;->c:F

    .line 2
    .line 3
    return v0
.end method

.method private h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/p$i;->d:F

    .line 2
    .line 3
    return v0
.end method

.method private i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/p$i;->e:F

    .line 2
    .line 3
    return v0
.end method

.method private j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/p$i;->b:F

    .line 2
    .line 3
    return-void
.end method

.method private k(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/p$i;->c:F

    .line 2
    .line 3
    return-void
.end method

.method private l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/p$i;->d:F

    .line 2
    .line 3
    return-void
.end method

.method private m(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/p$i;->e:F

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/p$h;->a:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/shape/p$i;->f()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/shape/p$i;->g()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/shape/p$i;->h()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/shape/p$i;->i()F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
