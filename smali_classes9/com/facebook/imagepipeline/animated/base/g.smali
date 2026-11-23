.class public Lcom/facebook/imagepipeline/animated/base/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/d;

.field private b:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:Lm4/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/d;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->a:Lcom/facebook/imagepipeline/animated/base/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/animated/base/f;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/base/f;-><init>(Lcom/facebook/imagepipeline/animated/base/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/CloseableReference;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/CloseableReference;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->i(Ljava/lang/Iterable;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 20
    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/CloseableReference;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/CloseableReference;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->i(Ljava/lang/Iterable;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 36
    .line 37
    throw v1
.end method

.method public b()Lm4/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->e:Lm4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->g(Ljava/util/Collection;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->a:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->f(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g(Lm4/a;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .param p1    # Lm4/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapTransformation"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->e:Lm4/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodedFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/animated/base/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->g(Ljava/util/Collection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->c:Ljava/util/List;

    .line 6
    .line 7
    return-object p0
.end method

.method public i(I)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameForPreview"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 0
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewBitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/imagepipeline/animated/base/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->f(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/g;->b:Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    return-object p0
.end method
