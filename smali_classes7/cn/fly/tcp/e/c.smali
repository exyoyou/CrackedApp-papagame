.class public Lcn/fly/tcp/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/fly/tcp/e/c;


# instance fields
.field private b:Lcn/fly/tcp/a/c;

.field private c:Lcn/fly/tcp/e/a;

.field private d:Lcn/fly/tcp/e/b;

.field private e:Lcn/fly/tcp/a/d;

.field private f:Lcn/fly/tcp/e/d;

.field private g:Lcn/fly/tcp/e/e;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "TP tcpService init"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcn/fly/tcp/a/c;

    .line 14
    .line 15
    invoke-direct {v0}, Lcn/fly/tcp/a/c;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcn/fly/tcp/e/c;->b:Lcn/fly/tcp/a/c;

    .line 19
    .line 20
    new-instance v0, Lcn/fly/tcp/e/d;

    .line 21
    .line 22
    invoke-direct {v0}, Lcn/fly/tcp/e/d;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcn/fly/tcp/e/c;->f:Lcn/fly/tcp/e/d;

    .line 26
    .line 27
    new-instance v0, Lcn/fly/tcp/e/e;

    .line 28
    .line 29
    invoke-direct {v0}, Lcn/fly/tcp/e/e;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcn/fly/tcp/e/c;->g:Lcn/fly/tcp/e/e;

    .line 33
    .line 34
    new-instance v0, Lcn/fly/tcp/e/a;

    .line 35
    .line 36
    iget-object v1, p0, Lcn/fly/tcp/e/c;->b:Lcn/fly/tcp/a/c;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcn/fly/tcp/e/a;-><init>(Lcn/fly/tcp/a/c;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 42
    .line 43
    new-instance v1, Lcn/fly/tcp/e/b;

    .line 44
    .line 45
    iget-object v2, p0, Lcn/fly/tcp/e/c;->b:Lcn/fly/tcp/a/c;

    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Lcn/fly/tcp/e/b;-><init>(Lcn/fly/tcp/a/c;Lcn/fly/tcp/e/a;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcn/fly/tcp/e/c;->d:Lcn/fly/tcp/e/b;

    .line 51
    .line 52
    new-instance v0, Lcn/fly/tcp/a/d;

    .line 53
    .line 54
    iget-object v2, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 55
    .line 56
    invoke-direct {v0, v2, v1}, Lcn/fly/tcp/a/d;-><init>(Lcn/fly/tcp/e/a;Lcn/fly/tcp/e/b;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcn/fly/tcp/e/c;->e:Lcn/fly/tcp/a/d;

    .line 60
    .line 61
    iget-object v1, p0, Lcn/fly/tcp/e/c;->b:Lcn/fly/tcp/a/c;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcn/fly/tcp/a/c;->a(Lcn/fly/tcp/a/b;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static f()Lcn/fly/tcp/e/c;
    .locals 2

    .line 1
    sget-object v0, Lcn/fly/tcp/e/c;->a:Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcn/fly/tcp/e/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcn/fly/tcp/e/c;->a:Lcn/fly/tcp/e/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcn/fly/tcp/e/c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcn/fly/tcp/e/c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcn/fly/tcp/e/c;->a:Lcn/fly/tcp/e/c;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcn/fly/tcp/e/c;->a:Lcn/fly/tcp/e/c;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public a(I)Lcn/fly/mcl/TcpStatus;
    .locals 1

    .line 9
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/a;->a(I)Lcn/fly/mcl/TcpStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcn/fly/mcl/BusinessMessageListener;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcn/fly/tcp/e/c;->d:Lcn/fly/tcp/e/b;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tcp/e/b;->a(ILcn/fly/mcl/BusinessMessageListener;)V

    return-void
.end method

.method public a(Lcn/fly/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcn/fly/tcp/e/c;->g()Z

    move-result v0

    .line 8
    new-instance v1, Lcn/fly/tcp/e/c$1;

    invoke-direct {v1, p0, p1, v0}, Lcn/fly/tcp/e/c$1;-><init>(Lcn/fly/tcp/e/c;Lcn/fly/mcl/BusinessCallBack;Z)V

    const/4 p1, 0x0

    invoke-static {p1, v1}, Lcn/fly/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public a(Lcn/fly/mcl/TcpStatus;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcn/fly/tcp/e/c;->f:Lcn/fly/tcp/e/d;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/d;->a(Lcn/fly/mcl/TcpStatus;)V

    return-void
.end method

.method public a(Lcn/fly/mcl/TcpStatusListener;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcn/fly/tcp/e/c;->f:Lcn/fly/tcp/e/d;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/d;->a(Lcn/fly/mcl/TcpStatusListener;)V

    return-void
.end method

.method public a(Lcn/fly/mgs/OnIdChangeListener;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcn/fly/tcp/e/c;->g:Lcn/fly/tcp/e/e;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/e;->a(Lcn/fly/mgs/OnIdChangeListener;)V

    .line 13
    iget-object p1, p0, Lcn/fly/tcp/e/c;->g:Lcn/fly/tcp/e/e;

    invoke-virtual {p1}, Lcn/fly/tcp/e/e;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/e/c;->d:Lcn/fly/tcp/e/b;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tcp/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/fly/tcp/e/c;->d:Lcn/fly/tcp/e/b;

    invoke-virtual {p1}, Lcn/fly/tcp/e/b;->a()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->e()Z

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    invoke-virtual {v0, p1, p2}, Lcn/fly/tcp/e/a;->a(II)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/fly/mcl/TcpStatusListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/e/c;->f:Lcn/fly/tcp/e/d;

    invoke-virtual {v0, p1}, Lcn/fly/tcp/e/d;->b(Lcn/fly/mcl/TcpStatusListener;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->f()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->c:Lcn/fly/tcp/e/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->g:Lcn/fly/tcp/e/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/e;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/c;->g:Lcn/fly/tcp/e/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/tcp/e/e;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
