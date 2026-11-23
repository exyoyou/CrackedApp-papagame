.class public Lcom/byazt/px/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b2,
        0xd
    }
.end annotation


# static fields
.field public static volatile ve:Lcom/byazt/px/tt;


# instance fields
.field public c:Lcom/byazt/yf/sl;

.field public final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/ly/uj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/px/tt;->tt:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static c()Lcom/byazt/px/tt;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/px/tt;->ve:Lcom/byazt/px/tt;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/px/tt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/px/tt;->ve:Lcom/byazt/px/tt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/px/tt;

    invoke-direct {v1}, Lcom/byazt/px/tt;-><init>()V

    sput-object v1, Lcom/byazt/px/tt;->ve:Lcom/byazt/px/tt;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/px/tt;->ve:Lcom/byazt/px/tt;

    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ly/uj;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/px/tt;->tt:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private tt(Ljava/lang/String;)Lcom/byazt/ly/uj;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/px/tt;->tt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ly/uj;

    return-object p1
.end method

.method private ve(Ljava/lang/String;)Lcom/byazt/ly/uj;
    .locals 1

    const-string v0, "pangle"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/byazt/xf/c;

    invoke-direct {p1}, Lcom/byazt/xf/c;-><init>()V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lcom/byazt/px/uj;

    invoke-direct {p1}, Lcom/byazt/px/uj;-><init>()V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized c(Ljava/lang/String;)Lcom/byazt/ly/uj;
    .locals 5

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/px/tt;->tt(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/byazt/px/tt;->c:Lcom/byazt/yf/sl;

    if-eqz v2, :cond_0

    .line 12
    new-instance v1, Lcom/byazt/nbs/c;

    invoke-virtual {v2}, Lcom/byazt/yf/sl;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/px/tt;->c:Lcom/byazt/yf/sl;

    invoke-virtual {v3}, Lcom/byazt/yf/sl;->ve()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/px/tt;->c:Lcom/byazt/yf/sl;

    invoke-virtual {v4}, Lcom/byazt/yf/sl;->uj()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/nbs/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/byazt/px/tt;->c:Lcom/byazt/yf/sl;

    :cond_0
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/byazt/nbs/c;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-direct {p0, p1}, Lcom/byazt/px/tt;->ve(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/byazt/px/tt;->c(Ljava/lang/String;Lcom/byazt/ly/uj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/yf/sl;)Lcom/byazt/ly/uj;
    .locals 0

    .line 7
    iput-object p2, p0, Lcom/byazt/px/tt;->c:Lcom/byazt/yf/sl;

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/ly/uj;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/px/tt;->tt:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ve()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/byazt/ly/uj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/px/tt;->tt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
