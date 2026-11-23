.class public Lcom/facebook/imagepipeline/animated/base/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->b:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/b;-><init>(Lcom/facebook/imagepipeline/animated/base/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public f(Z)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowPrefetching"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Z)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableDebugging"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Z)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceKeepAllFramesInMemory"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->a:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public i(I)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumBytes"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/c;->c:I

    .line 2
    .line 3
    return-object p0
.end method
