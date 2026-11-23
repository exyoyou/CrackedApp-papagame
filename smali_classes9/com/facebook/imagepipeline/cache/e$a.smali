.class Lcom/facebook/imagepipeline/cache/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/e;->m(Lcom/facebook/cache/common/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e$a;->d:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e$a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/e$a;->c:Lcom/facebook/cache/common/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$a;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li4/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$a;->d:Lcom/facebook/imagepipeline/cache/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$a;->c:Lcom/facebook/cache/common/c;

    invoke-static {v1, v2}, Lcom/facebook/imagepipeline/cache/e;->a(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$a;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Li4/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 7
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    .line 8
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/e$a;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
