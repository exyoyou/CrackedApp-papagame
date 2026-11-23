.class public Lcom/facebook/fresco/animation/factory/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/b;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ll3/c;

.field private final e:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final f:Lcom/facebook/imagepipeline/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ll3/c;Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/cache/i;Lcom/facebook/common/internal/l;Lcom/facebook/common/internal/l;Lcom/facebook/common/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animatedDrawableBackendProvider",
            "scheduledExecutorServiceForUiThread",
            "executorServiceForFramePreparing",
            "monotonicClock",
            "platformBitmapFactory",
            "backingCache",
            "cachingStrategySupplier",
            "numberOfFramesToPrepareSupplier",
            "useDeepEqualsForCacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/impl/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ll3/c;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/fresco/animation/factory/a;->d:Ll3/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/cache/i;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/l;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/l;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/facebook/fresco/animation/factory/a;->i:Lcom/facebook/common/internal/l;

    .line 21
    .line 22
    return-void
.end method

.method private c(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedImageResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "animatedImageResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/cache/a;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->i:Lcom/facebook/common/internal/l;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v1, p1, v2}, Lcom/facebook/fresco/animation/bitmap/cache/a;-><init>(IZ)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/cache/i;

    .line 25
    .line 26
    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/cache/i;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method private e(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/backend/a;
    .locals 8
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedImageResult",
            "animatedBitmapConig"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->c(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->f(Lcom/facebook/imagepipeline/animated/base/f;)Lu3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-instance v5, Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    .line 10
    .line 11
    invoke-direct {v5, v3, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/b;-><init>(Lu3/a;Lcom/facebook/imagepipeline/animated/base/a;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/l;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/d;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/d;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v5, p2}, Lcom/facebook/fresco/animation/factory/a;->g(Lu3/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/bitmap/preparation/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    move-object v7, p1

    .line 38
    move-object v6, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    move-object v6, p1

    .line 42
    move-object v7, v6

    .line 43
    :goto_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 46
    .line 47
    new-instance v4, Lcom/facebook/fresco/animation/bitmap/wrapper/a;

    .line 48
    .line 49
    invoke-direct {v4, v0}, Lcom/facebook/fresco/animation/bitmap/wrapper/a;-><init>(Lcom/facebook/imagepipeline/animated/base/a;)V

    .line 50
    .line 51
    .line 52
    move-object v1, p1

    .line 53
    invoke-direct/range {v1 .. v7}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Lcom/facebook/imagepipeline/bitmaps/f;Lu3/a;Lcom/facebook/fresco/animation/backend/d;Lu3/b;Lcom/facebook/fresco/animation/bitmap/preparation/a;Lcom/facebook/fresco/animation/bitmap/preparation/b;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->d:Ll3/c;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    .line 60
    invoke-static {p1, p2, v0}, Lcom/facebook/fresco/animation/backend/c;->s(Lcom/facebook/fresco/animation/backend/a;Ll3/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method private f(Lcom/facebook/imagepipeline/animated/base/f;)Lu3/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedImageResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/d;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/d;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/cache/c;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/facebook/fresco/animation/bitmap/cache/c;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/b;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/b;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/b;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/f;)Lcom/facebook/imagepipeline/animated/impl/c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/cache/b;-><init>(Lcom/facebook/imagepipeline/animated/impl/c;Z)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method private g(Lu3/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/bitmap/preparation/b;
    .locals 3
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapFrameRenderer",
            "animatedBitmapConig"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    :goto_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/c;-><init>(Lcom/facebook/imagepipeline/bitmaps/f;Lu3/b;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->h(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/fresco/animation/drawable/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lcom/facebook/imagepipeline/image/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Lcom/facebook/imagepipeline/image/a;

    .line 2
    .line 3
    return p1
.end method

.method public h(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/fresco/animation/drawable/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/a;->h()Lcom/facebook/imagepipeline/animated/base/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/facebook/fresco/animation/drawable/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/a;->j()Lcom/facebook/imagepipeline/animated/base/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/facebook/imagepipeline/animated/base/f;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->i()Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/fresco/animation/factory/a;->e(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/animation/backend/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/drawable/a;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method
