.class public abstract Lcom/facebook/imagepipeline/datasource/a;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/request/c;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;",
        "Lcom/facebook/imagepipeline/request/c;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/y0;

.field private final j:Lj4/e;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/y0;Lj4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "producer",
            "settableProducerContext",
            "requestListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/y0;",
            "Lj4/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "AbstractProducerToDataSourceAdapter()"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p2, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lj4/e;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->D()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .line 29
    .line 30
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-interface {p3, p2}, Lj4/e;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    const-string p3, "AbstractProducerToDataSourceAdapter()->produceResult"

    .line 52
    .line 53
    invoke-static {p3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->y()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/q0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 79
    .line 80
    .line 81
    :cond_5
    return-void
.end method

.method private declared-synchronized A()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method private B(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/a;->z(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->o(Ljava/lang/Throwable;Ljava/util/Map;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lj4/e;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lj4/e;->i(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->getExtras()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/datasource/a;)Lcom/facebook/imagepipeline/producers/y0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/datasource/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/a;->B(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/datasource/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/facebook/imagepipeline/datasource/a;F)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->q(F)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private y()Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/datasource/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/a$a;-><init>(Lcom/facebook/imagepipeline/datasource/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method protected C(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
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
            "result",
            "status",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p3}, Lcom/facebook/imagepipeline/datasource/a;->z(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lj4/e;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 20
    .line 21
    invoke-interface {p1, p2}, Lj4/e;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public a()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public close()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->j:Lj4/e;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lj4/e;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->i:Lcom/facebook/imagepipeline/producers/y0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->u()V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method protected z(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
