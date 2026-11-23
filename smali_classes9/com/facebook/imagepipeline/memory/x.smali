.class public Lcom/facebook/imagepipeline/memory/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/j;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field protected final a:Lcom/facebook/imagepipeline/memory/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/g0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private final d:Lcom/facebook/imagepipeline/memory/k0;

.field private e:I


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/memory/k0;Lcom/facebook/common/memory/c;)V
    .locals 1
    .param p4    # Lcom/facebook/common/memory/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxPoolSize",
            "maxBitmapSize",
            "poolStatsTracker",
            "memoryTrimmableRegistry"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/memory/k;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 10
    .line 11
    iput p1, p0, Lcom/facebook/imagepipeline/memory/x;->b:I

    .line 12
    .line 13
    iput p2, p0, Lcom/facebook/imagepipeline/memory/x;->c:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/x;->d:Lcom/facebook/imagepipeline/memory/k0;

    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    invoke-interface {p4, p0}, Lcom/facebook/common/memory/c;->b(Lcom/facebook/common/memory/b;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private g(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->d:Lcom/facebook/imagepipeline/memory/k0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/k0;->a(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private declared-synchronized t(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSize"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 3
    .line 4
    if-le v0, p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/g0;->pop()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/g0;->a(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 24
    .line 25
    sub-int/2addr v1, v0

    .line 26
    iput v1, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->d:Lcom/facebook/imagepipeline/memory/k0;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/k0;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->r(I)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/x;->b:I

    .line 2
    .line 3
    int-to-double v0, v0

    .line 4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    sub-double/2addr v2, v4

    .line 11
    mul-double v0, v0, v2

    .line 12
    .line 13
    double-to-int p1, v0

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->t(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public declared-synchronized r(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 3
    .line 4
    iget v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:I

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/memory/x;->t(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/g0;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/graphics/Bitmap;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/memory/g0;->a(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget v1, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 28
    .line 29
    sub-int/2addr v1, p1

    .line 30
    iput v1, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 31
    .line 32
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->d:Lcom/facebook/imagepipeline/memory/k0;

    .line 33
    .line 34
    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/k0;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-object v0

    .line 39
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->g(I)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->s(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/g0;->a(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/facebook/imagepipeline/memory/x;->c:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->d:Lcom/facebook/imagepipeline/memory/k0;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/k0;->f(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/imagepipeline/memory/g0;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/g0;->put(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    iput p1, p0, Lcom/facebook/imagepipeline/memory/x;->e:I

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    return-void
.end method
