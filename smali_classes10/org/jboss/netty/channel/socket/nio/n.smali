.class public Lorg/jboss/netty/channel/socket/nio/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/b;


# static fields
.field private static final e:I = 0x1


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lorg/jboss/netty/channel/socket/nio/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/jboss/netty/channel/socket/nio/o;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/jboss/netty/util/c;

    invoke-direct {v0}, Lorg/jboss/netty/util/c;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;Lorg/jboss/netty/util/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;Lorg/jboss/netty/util/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;",
            "Lorg/jboss/netty/util/g;",
            ")V"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lorg/jboss/netty/channel/socket/nio/l;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V

    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Lorg/jboss/netty/channel/socket/nio/h;Lorg/jboss/netty/channel/socket/nio/y;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2

    const/4 v0, 0x1

    .line 3
    sget v1, Lorg/jboss/netty/channel/socket/nio/v;->a:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;II)V
    .locals 1

    .line 5
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/u;

    invoke-direct {v0, p2, p4}, Lorg/jboss/netty/channel/socket/nio/u;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {p0, p1, p3, v0}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/y;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/h;Lorg/jboss/netty/channel/socket/nio/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/h<",
            "Lorg/jboss/netty/channel/socket/nio/k;",
            ">;",
            "Lorg/jboss/netty/channel/socket/nio/y<",
            "Lorg/jboss/netty/channel/socket/nio/t;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 9
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/n;->a:Lorg/jboss/netty/channel/socket/nio/h;

    .line 10
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    .line 11
    new-instance p2, Lorg/jboss/netty/channel/socket/nio/o;

    invoke-direct {p2, p1}, Lorg/jboss/netty/channel/socket/nio/o;-><init>(Lorg/jboss/netty/channel/socket/nio/h;)V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/n;->c:Lorg/jboss/netty/channel/socket/nio/o;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "workerPool"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bossPool"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->a:Lorg/jboss/netty/channel/socket/nio/h;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/jboss/netty/util/b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lorg/jboss/netty/util/b;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/jboss/netty/util/b;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    .line 13
    .line 14
    instance-of v1, v0, Lorg/jboss/netty/util/b;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lorg/jboss/netty/util/b;

    .line 19
    .line 20
    invoke-interface {v0}, Lorg/jboss/netty/util/b;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/n;->shutdown()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/n;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b(Lorg/jboss/netty/channel/n;)Led/d;
    .locals 3

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/m;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/n;->c:Lorg/jboss/netty/channel/socket/nio/o;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/y;->e()Led/f;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/t;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jboss/netty/channel/socket/nio/m;-><init>(Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/t;)V

    return-object v0
.end method

.method public bridge synthetic b(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/n;->b(Lorg/jboss/netty/channel/n;)Led/d;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->a:Lorg/jboss/netty/channel/socket/nio/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/q;->shutdown()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->b:Lorg/jboss/netty/channel/socket/nio/y;

    .line 7
    .line 8
    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/q;->shutdown()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/n;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/n;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
