.class public final Lcom/facebook/imagepipeline/producers/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:F = 1.3333334f

.field private static final b:I = 0x5a

.field private static final c:I = 0x10e


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

.method public static a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    int-to-float p0, p0

    const v0, 0x3faaaaab

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static b(IILcom/facebook/imagepipeline/common/e;)Z
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "resizeOptions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/h1;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-float p0, p0

    .line 10
    const/high16 p2, 0x45000000    # 2048.0f

    .line 11
    .line 12
    cmpl-float p0, p0, p2

    .line 13
    .line 14
    if-ltz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/h1;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/16 p1, 0x800

    .line 21
    .line 22
    if-lt p0, p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/h1;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iget v2, p2, Lcom/facebook/imagepipeline/common/e;->a:I

    .line 32
    .line 33
    if-lt p0, v2, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/h1;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iget p1, p2, Lcom/facebook/imagepipeline/common/e;->b:I

    .line 40
    .line 41
    if-lt p0, p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_1
    return v0
.end method

.method public static c(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;)Z
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "resizeOptions"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->s()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x5a

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x10e

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/h1;->b(IILcom/facebook/imagepipeline/common/e;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/h1;->b(IILcom/facebook/imagepipeline/common/e;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method
