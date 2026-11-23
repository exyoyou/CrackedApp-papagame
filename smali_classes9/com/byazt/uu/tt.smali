.class public abstract Lcom/byazt/uu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5d9,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ly/ve;

.field public final tt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Z

.field public ve:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/uu/tt;->tt:Ljava/util/Set;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/uu/tt;->uj:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/byazt/uu/tt;->ve:Z

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic c(Lcom/byazt/uu/tt;)Lcom/byazt/ly/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uu/tt;->c:Lcom/byazt/ly/ve;

    return-object p0
.end method

.method private declared-synchronized c(Lcom/byazt/ly/uj;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ly/uj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "TMe"

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--==--time: start "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/byazt/uu/tt$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/byazt/uu/tt$1;-><init>(Lcom/byazt/uu/tt;J)V

    invoke-interface {p1, v2, p2, v3}, Lcom/byazt/ly/tt;->initAdn(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/ly/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic tt(Lcom/byazt/uu/tt;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uu/tt;->tt:Ljava/util/Set;

    return-object p0
.end method

.method private tt(Lcom/byazt/yf/sl;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const-string v0, "pangle"

    .line 3
    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/uu/tt;->ve(Lcom/byazt/yf/sl;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized ve(Lcom/byazt/yf/sl;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/uu/tt;->uj:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/uu/tt;->ve:Z

    invoke-static {v0, v1}, Lcom/byazt/px/c;->ve(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/uu/tt;->ve()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/byazt/uu/tt;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "adn_name"

    .line 6
    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "q_x_c"

    .line 7
    invoke-static {}, Lcom/byazt/ck/tt;->c()Lcom/byazt/ck/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ck/tt;->uj()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wf_q_x_c"

    .line 8
    invoke-static {}, Lcom/byazt/ck/tt;->c()Lcom/byazt/ck/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ck/tt;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/byazt/px/tt;->c(Ljava/lang/String;Lcom/byazt/yf/sl;)Lcom/byazt/ly/uj;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/byazt/uu/tt;->c(Lcom/byazt/ly/uj;Ljava/util/Map;)V

    .line 11
    iget-boolean p1, p0, Lcom/byazt/uu/tt;->uj:Z

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/byazt/uu/tt;->ve:Z

    invoke-static {p1, v0}, Lcom/byazt/px/c;->tt(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_1
    monitor-exit p0

    return-void

    .line 14
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "configuration is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "adn init getConfig() is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "adn init "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/byazt/px/c;->c(Ljava/lang/String;Landroid/util/Pair;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public c(Lcom/byazt/yf/sl;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/uu/tt;->uj:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/uu/tt;->tt(Lcom/byazt/yf/sl;)V

    return-void
.end method

.method public c(Lcom/byazt/yf/sl;Lcom/byazt/ly/ve;)V
    .locals 0

    .line 4
    iput-object p2, p0, Lcom/byazt/uu/tt;->c:Lcom/byazt/ly/ve;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/byazt/uu/tt;->uj:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/uu/tt;->tt(Lcom/byazt/yf/sl;)V

    return-void
.end method

.method public abstract tt()Ljava/lang/String;
.end method

.method public uj()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/byazt/uu/tt;->tt(Lcom/byazt/yf/sl;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract ve()Ljava/lang/String;
.end method
