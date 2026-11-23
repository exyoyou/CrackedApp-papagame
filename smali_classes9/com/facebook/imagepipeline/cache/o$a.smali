.class final Lcom/facebook/imagepipeline/cache/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/o;->a(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/p;)Lcom/facebook/imagepipeline/cache/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/v<",
        "Lcom/facebook/cache/common/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/p;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$imageCacheStatsTracker"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/o$a;->a:Lcom/facebook/imagepipeline/cache/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/o$a;->d(Lcom/facebook/cache/common/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/o$a;->e(Lcom/facebook/cache/common/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/o$a;->f(Lcom/facebook/cache/common/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o$a;->a:Lcom/facebook/imagepipeline/cache/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->l(Lcom/facebook/cache/common/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o$a;->a:Lcom/facebook/imagepipeline/cache/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->i(Lcom/facebook/cache/common/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/o$a;->a:Lcom/facebook/imagepipeline/cache/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->g(Lcom/facebook/cache/common/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
