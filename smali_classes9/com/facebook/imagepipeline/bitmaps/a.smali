.class public Lcom/facebook/imagepipeline/bitmaps/a;
.super Lcom/facebook/imagepipeline/bitmaps/f;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/j;

.field private final b:Lcom/facebook/imagepipeline/core/a;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/j;Lcom/facebook/imagepipeline/core/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapPool",
            "closeableReferenceFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Lcom/facebook/imagepipeline/memory/j;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/core/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/facebook/imageutils/a;->f(IILandroid/graphics/Bitmap$Config;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Lcom/facebook/imagepipeline/memory/j;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    mul-int v2, p1, p2

    .line 18
    .line 19
    invoke-static {p3}, Lcom/facebook/imageutils/a;->e(Landroid/graphics/Bitmap$Config;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    mul-int v2, v2, v3

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/core/a;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Lcom/facebook/imagepipeline/memory/j;

    .line 43
    .line 44
    invoke-virtual {p1, v0, p2}, Lcom/facebook/imagepipeline/core/a;->c(Ljava/lang/Object;Lcom/facebook/common/references/g;)Lcom/facebook/common/references/CloseableReference;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
