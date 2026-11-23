.class public interface abstract Lcom/facebook/imagepipeline/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/facebook/common/internal/l;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/t$a;ZZLcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i;
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
.end method
