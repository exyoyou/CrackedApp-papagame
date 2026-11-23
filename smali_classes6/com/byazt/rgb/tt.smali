.class public Lcom/byazt/rgb/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33a,
        0xd
    }
.end annotation


# static fields
.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public static c()Lcom/byazt/lh/ve;
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/ve;

    return-object v0
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/byazt/lh/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/byazt/ky/uj;

    invoke-direct {v1}, Lcom/byazt/ky/uj;-><init>()V

    invoke-virtual {v0, p3, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 4
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/wi/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/byazt/wi/uj;

    invoke-direct {v1}, Lcom/byazt/wi/uj;-><init>()V

    invoke-virtual {v0, p3, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 6
    :cond_1
    new-instance v1, Lcom/byazt/rgb/tt$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/rgb/tt$1;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    invoke-virtual {v0, p3, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 7
    invoke-static {p3}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    sget-object v1, Lcom/byazt/hi/ve;->c:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 2

    .line 16
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Lcom/byazt/rgb/tt$4;

    invoke-direct {v1, p1}, Lcom/byazt/rgb/tt$4;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 18
    sget-object p1, Lcom/byazt/hi/ve;->uj:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, p1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/byazt/rgb/tt;->n(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 2

    .line 13
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Lcom/byazt/rgb/tt$3;

    invoke-direct {v1, p1}, Lcom/byazt/rgb/tt$3;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 15
    sget-object p1, Lcom/byazt/hi/ve;->ve:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, p1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;ZZ)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/byazt/rgb/tt$2;

    invoke-direct {v1, p1, p2}, Lcom/byazt/rgb/tt$2;-><init>(ZZ)V

    invoke-virtual {v0, p0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 12
    sget-object p1, Lcom/byazt/hi/ve;->ve:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, p1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method private static n(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    sget-object v1, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v2, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/byazt/hi/ve;->tt:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;I)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/rgb/tt$5;

    invoke-direct {v1, p1}, Lcom/byazt/rgb/tt$5;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 5
    sget-object p1, Lcom/byazt/hi/ve;->n:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, p1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public static uj(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/byazt/rgb/tt;->n(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static uj(Ljava/lang/String;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/byazt/rgb/tt;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/byazt/hi/ve;->a:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public static ve(Ljava/lang/String;I)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/rgb/tt;->c()Lcom/byazt/lh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/rgb/tt$6;

    invoke-direct {v1, p1}, Lcom/byazt/rgb/tt$6;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 5
    sget-object v1, Lcom/byazt/hi/ve;->sp:Lcom/byazt/hi/ve;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6
    :cond_1
    invoke-static {p0, p1}, Lcom/byazt/rgb/uj;->tt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
