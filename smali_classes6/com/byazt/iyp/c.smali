.class public final Lcom/byazt/iyp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iyp/c$c;,
        Lcom/byazt/iyp/c$tt;
    }
.end annotation


# static fields
.field public static volatile c:J

.field public static volatile tt:J

.field public static final uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/iyp/c$tt<",
            "Lorg/json/JSONArray;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/iyp/c$tt<",
            "Lcom/byazt/iyp/c$c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/iyp/c$1;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    const/high16 v2, 0x3f400000    # 0.75f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/iyp/c$1;-><init>(IFZ)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/byazt/iyp/c;->ve:Ljava/util/Map;

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/iyp/c$2;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/iyp/c$2;-><init>(IFZ)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/byazt/iyp/c;->uj:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method

.method private static c()J
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Lcom/byazt/iyp/c$c;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/byazt/iyp/c;->ve:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/iyp/c$tt;

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/byazt/iyp/c$tt;->tt:J

    const-wide/32 v3, 0x493e0

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/iyp/c;->c(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/byazt/iyp/c$tt;->c:Ljava/lang/Object;

    check-cast p0, Lcom/byazt/iyp/c$c;

    return-object p0
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/iyp/c$c;)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/byazt/iyp/c;->ve:Ljava/util/Map;

    new-instance v1, Lcom/byazt/iyp/c$tt;

    invoke-static {}, Lcom/byazt/iyp/c;->c()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/byazt/iyp/c$tt;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/byazt/iyp/c;->tt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcom/byazt/iyp/c;->uj:Ljava/util/Map;

    new-instance v1, Lcom/byazt/iyp/c$tt;

    invoke-static {}, Lcom/byazt/iyp/c;->c()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/byazt/iyp/c$tt;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/byazt/iyp/c;->ve()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/byazt/iyp/c;->ve:Ljava/util/Map;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/iyp/c$tt;

    if-nez v1, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iget-wide v2, v1, Lcom/byazt/iyp/c$tt;->tt:J

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v3, v4, v5}, Lcom/byazt/iyp/c;->c(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_2
    iget-object p0, v1, Lcom/byazt/iyp/c$tt;->c:Ljava/lang/Object;

    check-cast p0, Lcom/byazt/iyp/c$c;

    if-nez p0, :cond_3

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_3
    iput-object p1, p0, Lcom/byazt/iyp/c$c;->n:Lorg/json/JSONArray;

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p2, " "

    :goto_0
    iput-object p2, p0, Lcom/byazt/iyp/c$c;->a:Ljava/lang/String;

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c(Ljava/util/Map;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/iyp/c$tt<",
            "TT;>;>;JJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 21
    :cond_0
    monitor-enter p0

    .line 22
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/iyp/c$tt;

    if-eqz v1, :cond_2

    .line 26
    iget-wide v1, v1, Lcom/byazt/iyp/c$tt;->tt:J

    sub-long v1, p3, v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1

    .line 27
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 28
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static c(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 20
    invoke-static {}, Lcom/byazt/iyp/c;->c()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tt(Ljava/lang/String;)Lcom/byazt/iyp/c$c;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/byazt/iyp/c;->ve:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/iyp/c$tt;

    if-nez v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-wide v3, v2, Lcom/byazt/iyp/c$tt;->tt:J

    const-wide/32 v5, 0x493e0

    invoke-static {v3, v4, v5, v6}, Lcom/byazt/iyp/c;->c(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_2
    iget-object p0, v2, Lcom/byazt/iyp/c$tt;->c:Ljava/lang/Object;

    check-cast p0, Lcom/byazt/iyp/c$c;

    return-object p0
.end method

.method private static tt()V
    .locals 7

    .line 5
    invoke-static {}, Lcom/byazt/iyp/c;->c()J

    move-result-wide v0

    .line 6
    sget-wide v2, Lcom/byazt/iyp/c;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 7
    :cond_0
    sput-wide v0, Lcom/byazt/iyp/c;->c:J

    .line 8
    sget-object v2, Lcom/byazt/iyp/c;->ve:Ljava/util/Map;

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/byazt/iyp/c;->c(Ljava/util/Map;JJ)V

    return-void
.end method

.method public static ve(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/byazt/iyp/c;->uj:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/iyp/c$tt;

    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-wide v1, p0, Lcom/byazt/iyp/c$tt;->tt:J

    const-wide/32 v3, 0x927c0

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/iyp/c;->c(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/byazt/iyp/c$tt;->c:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    return-object p0
.end method

.method private static ve()V
    .locals 7

    .line 4
    invoke-static {}, Lcom/byazt/iyp/c;->c()J

    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/byazt/iyp/c;->tt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 6
    :cond_0
    sput-wide v0, Lcom/byazt/iyp/c;->tt:J

    .line 7
    sget-object v2, Lcom/byazt/iyp/c;->uj:Ljava/util/Map;

    const-wide/32 v3, 0x927c0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/byazt/iyp/c;->c(Ljava/util/Map;JJ)V

    return-void
.end method
