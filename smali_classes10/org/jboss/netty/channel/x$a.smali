.class final Lorg/jboss/netty/channel/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field volatile a:Lorg/jboss/netty/channel/x$a;

.field volatile b:Lorg/jboss/netty/channel/x$a;

.field private final c:Ljava/lang/String;

.field private final d:Lorg/jboss/netty/channel/ChannelHandler;

.field private final e:Z

.field private final f:Z

.field private volatile g:Ljava/lang/Object;

.field final synthetic h:Lorg/jboss/netty/channel/x;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_3

    .line 7
    .line 8
    if-eqz p5, :cond_2

    .line 9
    .line 10
    instance-of p1, p5, Lorg/jboss/netty/channel/r;

    .line 11
    .line 12
    iput-boolean p1, p0, Lorg/jboss/netty/channel/x$a;->e:Z

    .line 13
    .line 14
    instance-of v0, p5, Lorg/jboss/netty/channel/g;

    .line 15
    .line 16
    iput-boolean v0, p0, Lorg/jboss/netty/channel/x$a;->f:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p3, "handler must be either "

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-class p3, Lorg/jboss/netty/channel/r;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p3, " or "

    .line 45
    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-class p3, Lorg/jboss/netty/channel/g;

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 p3, 0x2e

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 72
    .line 73
    iput-object p3, p0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 74
    .line 75
    iput-object p4, p0, Lorg/jboss/netty/channel/x$a;->c:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p5, p0, Lorg/jboss/netty/channel/x$a;->d:Lorg/jboss/netty/channel/ChannelHandler;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 81
    .line 82
    const-string p2, "handler"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 89
    .line 90
    const-string p2, "name"

    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1
.end method


# virtual methods
.method public K()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public a(Lorg/jboss/netty/channel/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/x;->o(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 12
    .line 13
    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/x;->E(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public b(Lorg/jboss/netty/channel/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/x;->n(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x;->f()Lorg/jboss/netty/channel/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/channel/p;->b(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 31
    .line 32
    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/x;->D(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/x$a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/x$a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/x$a;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x$a;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->d:Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x$a;->h:Lorg/jboss/netty/channel/x;

    .line 2
    .line 3
    return-object v0
.end method
