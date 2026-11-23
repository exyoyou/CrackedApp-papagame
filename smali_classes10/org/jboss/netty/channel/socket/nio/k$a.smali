.class Lorg/jboss/netty/channel/socket/nio/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/util/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/socket/nio/k;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k$a;->a:Lorg/jboss/netty/channel/socket/nio/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/util/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k$a;->a:Lorg/jboss/netty/channel/socket/nio/k;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$a;->a:Lorg/jboss/netty/channel/socket/nio/k;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
