.class Lcn/fly/tcp/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcn/fly/mcl/TcpStatusListener;

.field private c:Lcn/fly/mcl/TcpStatus;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/fly/tcp/e/d;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private a(Lcn/fly/mcl/TcpStatusListener;Lcn/fly/mcl/TcpStatus;)V
    .locals 0

    .line 16
    :try_start_0
    invoke-interface {p1, p2}, Lcn/fly/mcl/TcpStatusListener;->onStatus(Lcn/fly/mcl/TcpStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Lcn/fly/mcl/TcpStatus;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/e/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/e/d;->b:Lcn/fly/mcl/TcpStatusListener;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iput-object p1, p0, Lcn/fly/tcp/e/d;->c:Lcn/fly/mcl/TcpStatus;

    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 14
    invoke-direct {p0, v1, p1}, Lcn/fly/tcp/e/d;->a(Lcn/fly/mcl/TcpStatusListener;Lcn/fly/mcl/TcpStatus;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a(Lcn/fly/mcl/TcpStatusListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg TpSt lis. prev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/fly/tcp/e/d;->b:Lcn/fly/mcl/TcpStatusListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", curr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcn/fly/tcp/e/d;->b:Lcn/fly/mcl/TcpStatusListener;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 4
    iput-object v1, p0, Lcn/fly/tcp/e/d;->c:Lcn/fly/mcl/TcpStatus;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcn/fly/tcp/e/d;->c:Lcn/fly/mcl/TcpStatus;

    if-eqz v2, :cond_1

    .line 6
    iput-object v1, p0, Lcn/fly/tcp/e/d;->c:Lcn/fly/mcl/TcpStatus;

    move-object v1, v2

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 8
    invoke-direct {p0, p1, v1}, Lcn/fly/tcp/e/d;->a(Lcn/fly/mcl/TcpStatusListener;Lcn/fly/mcl/TcpStatus;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Lcn/fly/mcl/TcpStatusListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/e/d;->b:Lcn/fly/mcl/TcpStatusListener;

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcn/fly/tcp/e/d;->b:Lcn/fly/mcl/TcpStatusListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcn/fly/tcp/e/d;->c:Lcn/fly/mcl/TcpStatus;

    .line 12
    .line 13
    :cond_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
