.class Lcom/facebook/imagepipeline/cache/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/e;->w(Lcom/facebook/cache/common/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/facebook/cache/common/c;

.field final synthetic d:Lcom/facebook/imagepipeline/cache/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$key",
            "val$token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e$e;->d:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e$e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/e$e;->c:Lcom/facebook/cache/common/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/e$e;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$e;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li4/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$e;->d:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/e;->c(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/y;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$e;->c:Lcom/facebook/cache/common/c;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/y;->g(Lcom/facebook/cache/common/c;)Z

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$e;->d:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/e;->b(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/cache/disk/h;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$e;->c:Lcom/facebook/cache/common/c;

    invoke-interface {v2, v3}, Lcom/facebook/cache/disk/h;->i(Lcom/facebook/cache/common/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$e;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Li4/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 7
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 8
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    .line 9
    throw v1
.end method
