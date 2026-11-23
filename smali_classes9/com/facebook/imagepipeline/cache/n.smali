.class public Lcom/facebook/imagepipeline/cache/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
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

.method public static a(Lcom/facebook/common/internal/l;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/i;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedMemoryCacheParamsSupplier",
            "memoryTrimmableRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            ")",
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/facebook/imagepipeline/cache/n$a;

    .line 2
    .line 3
    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/n$a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/facebook/imagepipeline/cache/w;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/facebook/imagepipeline/cache/w;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v7, Lcom/facebook/imagepipeline/cache/s;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, v7

    .line 17
    move-object v3, p0

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/cache/s;-><init>(Lcom/facebook/imagepipeline/cache/z;Lcom/facebook/imagepipeline/cache/t$a;Lcom/facebook/common/internal/l;Lcom/facebook/imagepipeline/cache/i$b;ZZ)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v7}, Lcom/facebook/common/memory/c;->b(Lcom/facebook/common/memory/b;)V

    .line 22
    .line 23
    .line 24
    return-object v7
.end method
