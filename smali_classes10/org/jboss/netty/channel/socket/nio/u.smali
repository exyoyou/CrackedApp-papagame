.class public Lorg/jboss/netty/channel/socket/nio/u;
.super Lorg/jboss/netty/channel/socket/nio/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/f<",
        "Lorg/jboss/netty/channel/socket/nio/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lorg/jboss/netty/util/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/u;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/f;-><init>(Ljava/util/concurrent/Executor;IZ)V

    .line 3
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/u;->e:Lorg/jboss/netty/util/d;

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/f;->g()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic f(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/u;->j(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected j(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/t;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/t;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/u;->e:Lorg/jboss/netty/util/d;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/t;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
