.class public Lcom/facebook/datasource/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/d$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/d$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/datasource/d$a;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/i;->u()Lcom/facebook/datasource/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/i;->setResult(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/i;->u()Lcom/facebook/datasource/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/i;->n(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static d(Lcom/facebook/datasource/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/facebook/datasource/d$d;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lcom/facebook/datasource/d$d;-><init>(Lcom/facebook/datasource/d$a;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/facebook/datasource/d$d;

    .line 14
    .line 15
    invoke-direct {v3, v2}, Lcom/facebook/datasource/d$d;-><init>(Lcom/facebook/datasource/d$a;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/facebook/datasource/d$b;

    .line 19
    .line 20
    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/datasource/d$b;-><init>(Lcom/facebook/datasource/d$d;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/datasource/d$d;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/facebook/datasource/d$c;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/facebook/datasource/d$c;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v2, v4}, Lcom/facebook/datasource/c;->c(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 32
    .line 33
    .line 34
    iget-object p0, v3, Lcom/facebook/datasource/d$d;->a:Ljava/lang/Object;

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    iget-object p0, v1, Lcom/facebook/datasource/d$d;->a:Ljava/lang/Object;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    .line 42
    .line 43
    throw p0
.end method
