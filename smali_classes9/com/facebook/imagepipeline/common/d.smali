.class public Lcom/facebook/imagepipeline/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/imagepipeline/common/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Lm4/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/ColorSpace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/common/d;->a:I

    .line 7
    .line 8
    const v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lcom/facebook/imagepipeline/common/d;->b:I

    .line 12
    .line 13
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/d;->g:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/d;->h:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public A(Z)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useLastFrameForPreview"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/d;->d:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public a()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/common/c;-><init>(Lcom/facebook/imagepipeline/common/d;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/d;->h:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/d;->g:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lm4/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/d;->j:Lm4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Landroid/graphics/ColorSpace;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/d;->k:Landroid/graphics/ColorSpace;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/common/d;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/d;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/d;->a:I

    .line 2
    .line 3
    return v0
.end method

.method protected m()Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public o(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedBitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/d;->h:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public p(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/d;->g:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public q(Lm4/a;)Lcom/facebook/imagepipeline/common/d;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm4/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/d;->j:Lm4/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public r(Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorSpace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/d;->k:Landroid/graphics/ColorSpace;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public s(Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/decoder/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customImageDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/d;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public t(Z)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeAllFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/d;->e:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public u(Z)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodePreviewFrame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/d;->c:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public v(Z)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excludeBitmapConfigFromComparison"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/d;->l:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public w(Z)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceStaticImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/d;->f:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public x(Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/common/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 2
    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/common/d;->a:I

    .line 4
    .line 5
    iget v0, p1, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 6
    .line 7
    iput v0, p0, Lcom/facebook/imagepipeline/common/d;->b:I

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->c:Z

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->d:Z

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->e:Z

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/d;->f:Z

    .line 24
    .line 25
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/d;->g:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/d;->h:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/d;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/d;->j:Lm4/a;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/d;->k:Landroid/graphics/ColorSpace;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public y(I)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDimensionPx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/common/d;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public z(I)Lcom/facebook/imagepipeline/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/common/d;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/d;->m()Lcom/facebook/imagepipeline/common/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
