.class public Lcom/facebook/imagepipeline/cache/r;
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

.method public static a(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/p;)Lcom/facebook/imagepipeline/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bitmapMemoryCache",
            "imageCacheStatsTracker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/p;",
            ")",
            "Lcom/facebook/imagepipeline/cache/q<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/facebook/imagepipeline/cache/p;->m(Lcom/facebook/imagepipeline/cache/t;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/cache/r$a;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/r$a;-><init>(Lcom/facebook/imagepipeline/cache/p;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/facebook/imagepipeline/cache/q;

    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, Lcom/facebook/imagepipeline/cache/q;-><init>(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/v;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
