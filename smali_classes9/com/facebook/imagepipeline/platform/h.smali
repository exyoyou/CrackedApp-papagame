.class public Lcom/facebook/imagepipeline/platform/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/i0;Z)Lcom/facebook/imagepipeline/platform/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "poolFactory",
            "gingerbreadDecoderEnabled"
        }
    .end annotation

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1a

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/i0;->e()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v0, Lcom/facebook/imagepipeline/platform/f;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/i0;->b()Lcom/facebook/imagepipeline/memory/j;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/imagepipeline/platform/f;-><init>(Lcom/facebook/imagepipeline/memory/j;ILandroidx/core/util/Pools$SynchronizedPool;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/i0;->e()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    new-instance v0, Lcom/facebook/imagepipeline/platform/a;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/i0;->b()Lcom/facebook/imagepipeline/memory/j;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/imagepipeline/platform/a;-><init>(Lcom/facebook/imagepipeline/memory/j;ILandroidx/core/util/Pools$SynchronizedPool;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method
