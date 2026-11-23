.class final Lorg/jboss/netty/channel/socket/nio/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lorg/jboss/netty/channel/socket/nio/b;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$b;->b:Lorg/jboss/netty/channel/socket/nio/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$b;->b:Lorg/jboss/netty/channel/socket/nio/b;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$b;->b:Lorg/jboss/netty/channel/socket/nio/b;

    .line 10
    .line 11
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->y(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
