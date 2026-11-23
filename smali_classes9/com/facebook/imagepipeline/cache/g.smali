.class public Lcom/facebook/imagepipeline/cache/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/a;


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


# virtual methods
.method public a(Lcom/facebook/common/internal/l;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/t$a;ZZLcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i;
    .locals 8
    .param p6    # Lcom/facebook/imagepipeline/cache/i$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
            "bitmapMemoryCacheParamsSupplier",
            "memoryTrimmableRegistry",
            "trimStrategy",
            "storeEntrySize",
            "ignoreSizeMismatch",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            "Lcom/facebook/imagepipeline/cache/t$a;",
            "ZZ",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "Lcom/facebook/cache/common/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/facebook/imagepipeline/cache/g$a;

    .line 2
    .line 3
    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/cache/g$a;-><init>(Lcom/facebook/imagepipeline/cache/g;)V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/facebook/imagepipeline/cache/s;

    .line 7
    .line 8
    move-object v0, v7

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p6

    .line 12
    move v5, p4

    .line 13
    move v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/cache/s;-><init>(Lcom/facebook/imagepipeline/cache/z;Lcom/facebook/imagepipeline/cache/t$a;Lcom/facebook/common/internal/l;Lcom/facebook/imagepipeline/cache/i$b;ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v7}, Lcom/facebook/common/memory/c;->b(Lcom/facebook/common/memory/b;)V

    .line 18
    .line 19
    .line 20
    return-object v7
.end method
