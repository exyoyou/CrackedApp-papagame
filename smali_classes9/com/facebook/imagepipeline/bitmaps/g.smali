.class public Lcom/facebook/imagepipeline/bitmaps/g;
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

.method public static a(Lcom/facebook/imagepipeline/memory/i0;Lcom/facebook/imagepipeline/platform/g;Lcom/facebook/imagepipeline/core/a;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "poolFactory",
            "platformDecoder",
            "closeableReferenceFactory"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/facebook/imagepipeline/bitmaps/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/i0;->b()Lcom/facebook/imagepipeline/memory/j;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/facebook/imagepipeline/bitmaps/a;-><init>(Lcom/facebook/imagepipeline/memory/j;Lcom/facebook/imagepipeline/core/a;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
