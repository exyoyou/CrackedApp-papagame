.class public Lcom/facebook/imagepipeline/producers/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/p0$d;,
        Lcom/facebook/imagepipeline/producers/p0$c;,
        Lcom/facebook/imagepipeline/producers/p0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "PriorityStarvingThrottlingProducer"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/imagepipeline/producers/p0$b<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "maxSimultaneousRequests",
            "executor",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/producers/p0;->b:I

    .line 5
    .line 6
    invoke-static {p2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->d:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/facebook/imagepipeline/producers/q0;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->a:Lcom/facebook/imagepipeline/producers/q0;

    .line 21
    .line 22
    new-instance p1, Ljava/util/PriorityQueue;

    .line 23
    .line 24
    new-instance p2, Lcom/facebook/imagepipeline/producers/p0$c;

    .line 25
    .line 26
    invoke-direct {p2}, Lcom/facebook/imagepipeline/producers/p0$c;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 p3, 0xb

    .line 30
    .line 31
    invoke-direct {p1, p3, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Ljava/util/Queue;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    .line 38
    .line 39
    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/p0;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/p0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/p0;->g(Lcom/facebook/imagepipeline/producers/p0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/producers/p0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/p0;->d:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Lcom/facebook/imagepipeline/producers/p0$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/p0$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 8
    .line 9
    const-string v2, "PriorityStarvingThrottlingProducer"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/t0;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0;->a:Lcom/facebook/imagepipeline/producers/q0;

    .line 16
    .line 17
    new-instance v1, Lcom/facebook/imagepipeline/producers/p0$d;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/facebook/imagepipeline/producers/p0$b;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 20
    .line 21
    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/imagepipeline/producers/p0$d;-><init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/p0$a;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/p0$b;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/q0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "PriorityStarvingThrottlingProducer"

    .line 10
    .line 11
    invoke-interface {v2, p2, v3}, Lcom/facebook/imagepipeline/producers/t0;->b(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget v2, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    .line 16
    .line 17
    iget v3, p0, Lcom/facebook/imagepipeline/producers/p0;->b:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-lt v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/p0;->c:Ljava/util/Queue;

    .line 23
    .line 24
    new-instance v3, Lcom/facebook/imagepipeline/producers/p0$b;

    .line 25
    .line 26
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/p0$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;J)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    add-int/2addr v2, v4

    .line 34
    iput v2, p0, Lcom/facebook/imagepipeline/producers/p0;->e:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    new-instance v2, Lcom/facebook/imagepipeline/producers/p0$b;

    .line 41
    .line 42
    invoke-direct {v2, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/p0$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;J)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/producers/p0;->g(Lcom/facebook/imagepipeline/producers/p0$b;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method
