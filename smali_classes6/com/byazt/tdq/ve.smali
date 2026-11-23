.class public Lcom/byazt/tdq/ve;
.super Lcom/byazt/tdq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x36
    }
.end annotation


# static fields
.field public static da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/byazt/tdq/tt;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static sp:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/tdq/tt;",
            ">;"
        }
    .end annotation
.end field

.field public static x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public volatile sl:Lcom/byazt/eti/sp;


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
    sput-object v0, Lcom/byazt/tdq/ve;->sp:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/tdq/ve;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/tdq/ve;->i:Ljava/lang/ref/ReferenceQueue;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/byazt/tdq/ve;->da:Ljava/util/Map;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tdq/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/ete/x;->c()Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/ete/x;->c()Lcom/byazt/ete/x$ve;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->uj()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static synthetic c(Lcom/byazt/tdq/ve;)Lcom/byazt/eti/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/byazt/tdq/ve;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUsedReqIdList: list : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lqmt"

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    :try_start_0
    sget-object v0, Lcom/byazt/tdq/ve;->sp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2, p3}, Lcom/byazt/tdq/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/tdq/tt;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p3, Ljava/lang/ref/PhantomReference;

    sget-object v0, Lcom/byazt/tdq/ve;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p1, "lqmt"

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/byazt/tdq/tt;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cuuid\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/byazt/tdq/tt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " watching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lcom/byazt/tdq/ve;->da:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/byazt/tdq/ve$4;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/tdq/ve$4;-><init>(Lcom/byazt/tdq/ve;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 97
    sget-object v0, Lcom/byazt/tdq/ve;->sp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/byazt/tdq/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/byazt/tdq/ve;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkCaches>>: list1 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lqmt"

    invoke-static {v2, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkCaches>>: rmCache : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    sget-object p2, Lcom/byazt/tdq/ve;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/byazt/tdq/ve;->a()I

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateMemoryRecord>> start rit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cacheStrategyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lqmt"

    invoke-static {v2, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/byazt/tdq/ve;->sp:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/byazt/tdq/tt;

    invoke-direct {v1, p3, p4, p2}, Lcom/byazt/tdq/tt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-gt p4, p1, :cond_1

    const-string p1, "updateMemoryRecord>> :status <= CACHE_STATUS_NOUSE"

    .line 84
    invoke-static {v2, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    sget-object p1, Lcom/byazt/tdq/ve;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 86
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "updateMemoryRecord>>: list1 : "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 87
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 88
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 90
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "updateMemoryRecord>>: list2 : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p3, Lcom/byazt/tdq/ve;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/tdq/ve;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/byazt/tdq/ve;->i:Ljava/lang/ref/ReferenceQueue;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget-object v1, Lcom/byazt/tdq/ve;->da:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/byazt/tdq/tt;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v2, v1, Lcom/byazt/tdq/tt;->ve:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/byazt/tdq/tt;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v2, v1}, Lcom/byazt/tdq/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object v1, Lcom/byazt/tdq/ve;->da:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/byazt/tdq/ve;->i:Ljava/lang/ref/ReferenceQueue;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    :cond_2
    return-void
.end method

.method private tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uj()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lcom/byazt/eti/sp;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    invoke-direct {v2, v3}, Lcom/byazt/eti/sp;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "NewCache \u521d\u59cb\u5316\u8017\u65f6: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v3, v0

    .line 25
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "lqmt"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ete/os;Lcom/byazt/dj/tt;Z)V
    .locals 6

    const-string v0, "lqmt"

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/byazt/ete/os;->c()Lcom/byazt/ete/ic;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/tdq/ve;->tt()V

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveCache start >>  rit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isUsing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/byazt/ete/os;->c()Lcom/byazt/ete/ic;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-direct {p0, p2, v2}, Lcom/byazt/tdq/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/byazt/tdq/ve;->sp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 11
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "save-updateMemoryRecord start >>  rit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  reqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const/4 p3, 0x2

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    .line 12
    :goto_0
    invoke-direct {p0, v3, p2, v2, p3}, Lcom/byazt/tdq/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    new-instance p3, Lcom/byazt/tdq/ve$1;

    invoke-direct {p3, p0, v1, p1, p2}, Lcom/byazt/tdq/ve$1;-><init>(Lcom/byazt/tdq/ve;Lcom/byazt/ete/ic;Lcom/byazt/ete/os;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/byazt/tdq/ve;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/gat/uj;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "Lcom/byazt/dj/tt;",
            "Z)V"
        }
    .end annotation

    const-string p4, "lqmt"

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/byazt/tdq/ve;->tt()V

    :cond_1
    :try_start_0
    const-string v0, "removeCache>> start "

    .line 57
    invoke-static {p4, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p3

    .line 59
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-direct {p0, p3, v0}, Lcom/byazt/tdq/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/byazt/tdq/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p2, "removeCache-mIsRemoveCacheAd: true"

    .line 62
    invoke-static {p4, p2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/byazt/tdq/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x3

    .line 64
    invoke-direct {p0, v1, p3, v0, v2}, Lcom/byazt/tdq/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "removeCache-updateMemoryRecord: \u5b8c\u6210"

    .line 65
    invoke-static {p4, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance p4, Lcom/byazt/tdq/ve$3;

    invoke-direct {p4, p0, p3, p2}, Lcom/byazt/tdq/ve$3;-><init>(Lcom/byazt/tdq/ve;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    invoke-direct {p0, p4}, Lcom/byazt/tdq/ve;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-eqz p1, :cond_3

    .line 67
    invoke-interface {p1}, Lcom/byazt/gat/uj;->c()V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/im/sp;Ljava/lang/String;Lcom/byazt/tdq/c$c;Lcom/byazt/tdq/n;)V
    .locals 9

    const-string v0, "lqmt"

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/byazt/tdq/ve;->tt()V

    .line 16
    :cond_1
    iput-object p4, p0, Lcom/byazt/tdq/c;->a:Lcom/byazt/tdq/n;

    const/4 p4, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    invoke-direct {p0}, Lcom/byazt/tdq/ve;->n()V

    .line 19
    invoke-direct {p0, p2}, Lcom/byazt/tdq/ve;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readcache start >>  rit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  usedReqIdList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v4, p0, Lcom/byazt/tdq/c;->a:Lcom/byazt/tdq/n;

    if-nez v4, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_3
    iget-wide v6, v4, Lcom/byazt/tdq/n;->c:J

    .line 22
    :goto_1
    iget-object v4, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    invoke-virtual {v4, p2, v6, v7, v3}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;JLjava/util/List;)Lcom/byazt/eti/sp$tt;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "readcache-getCacheMeta cost: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "no cache"

    const/4 v2, 0x1

    if-nez v3, :cond_5

    :try_start_2
    const-string p4, "readcache-cacheMeta: null "

    .line 24
    invoke-static {v0, p4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1, v5}, Lcom/byazt/im/sp;->uj(I)V

    .line 26
    invoke-virtual {p1, v2}, Lcom/byazt/im/sp;->tt(I)V

    .line 27
    invoke-virtual {p1, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 28
    :cond_4
    invoke-interface {p3}, Lcom/byazt/tdq/c$c;->c()V

    return-void

    .line 29
    :cond_5
    iget-object v4, v3, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    .line 30
    invoke-direct {p0, p2, v4}, Lcom/byazt/tdq/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "readcache-mapkey: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v7, Lcom/byazt/tdq/ve;->sp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/byazt/tdq/tt;

    if-eqz v7, :cond_7

    .line 33
    iget v7, v7, Lcom/byazt/tdq/tt;->tt:I

    if-le v7, v2, :cond_7

    const-string p4, "readcache-cacheRecord != null && cacheRecord.status > CACHE_STATUS_NOUSE"

    .line 34
    invoke-static {v0, p4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {p1, v5}, Lcom/byazt/im/sp;->uj(I)V

    .line 36
    invoke-virtual {p1, v2}, Lcom/byazt/im/sp;->tt(I)V

    .line 37
    invoke-virtual {p1, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 38
    :cond_6
    invoke-interface {p3}, Lcom/byazt/tdq/c$c;->c()V

    return-void

    :cond_7
    const/4 p1, 0x2

    .line 39
    invoke-direct {p0, v6, p2, v4, p1}, Lcom/byazt/tdq/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iget-object p1, v3, Lcom/byazt/eti/sp$tt;->ve:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/byazt/omf/gr$c;->c(Lorg/json/JSONObject;)Lcom/byazt/omf/gr$c;

    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/byazt/omf/gr$c;->x:Lcom/byazt/ete/c;

    .line 43
    new-instance v1, Lcom/byazt/im/a;

    invoke-direct {v1, p1, v2}, Lcom/byazt/im/a;-><init>(Lcom/byazt/ete/c;Z)V

    if-eqz p1, :cond_8

    .line 44
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 45
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 46
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/ic;

    goto :goto_2

    :cond_8
    move-object p1, p4

    :goto_2
    if-eqz p1, :cond_9

    .line 47
    invoke-virtual {v1, p1}, Lcom/byazt/im/c;->c(Lcom/byazt/ete/ic;)V

    .line 48
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "readcache-updateMemoryRecord start >>  rit: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  reqId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/byazt/apd/tt;->ve(Lcom/byazt/ete/ic;)I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_a

    move-object p4, v1

    goto :goto_3

    .line 50
    :cond_a
    invoke-virtual {v1, p4}, Lcom/byazt/im/c;->c(Lcom/byazt/ete/ic;)V

    .line 51
    :goto_3
    invoke-interface {p3, p4}, Lcom/byazt/tdq/c$c;->c(Lcom/byazt/im/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    nop

    move-object p4, v3

    goto :goto_4

    :catchall_1
    nop

    :goto_4
    move-object v3, p4

    .line 52
    :goto_5
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/by/n;->da()Z

    move-result p1

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "isSplashCacheRemoveChange: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_b

    .line 54
    new-instance p1, Lcom/byazt/tdq/ve$2;

    invoke-direct {p1, p0, p2, v3}, Lcom/byazt/tdq/ve$2;-><init>(Lcom/byazt/tdq/ve;Ljava/lang/String;Lcom/byazt/eti/sp$tt;)V

    invoke-direct {p0, p1}, Lcom/byazt/tdq/ve;->c(Ljava/lang/Runnable;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/byazt/tdq/ve;->tt()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V
    .locals 2

    .line 72
    invoke-static {}, Lcom/byazt/tdq/ve;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0, p5, p1, p2}, Lcom/byazt/tdq/ve;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/tdq/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/tdq/ve;->uj()V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/tdq/ve;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/tdq/ve;->sl:Lcom/byazt/eti/sp;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/eti/sp;->c()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
