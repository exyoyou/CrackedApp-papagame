.class public Lcom/byazt/vy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74e,
        0x14
    }
.end annotation


# static fields
.field public static volatile tt:Lcom/byazt/vy/c;


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/byazt/ix/sp;",
            ">;>;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/ix/sp;",
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
    iput-object v0, p0, Lcom/byazt/vy/c;->c:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/vy/c$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/vy/c$1;-><init>(Lcom/byazt/vy/c;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/vy/c;->ve:Ljava/util/Comparator;

    .line 17
    .line 18
    return-void
.end method

.method public static c()Lcom/byazt/vy/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/vy/c;->tt:Lcom/byazt/vy/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/hk/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/vy/c;->tt:Lcom/byazt/vy/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/vy/c;

    invoke-direct {v1}, Lcom/byazt/vy/c;-><init>()V

    sput-object v1, Lcom/byazt/vy/c;->tt:Lcom/byazt/vy/c;

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
    sget-object v0, Lcom/byazt/vy/c;->tt:Lcom/byazt/vy/c;

    return-object v0
.end method

.method public static c(Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_8

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_8

    .line 49
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->gr()I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    .line 52
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    .line 54
    invoke-static {p1, v1}, Lcom/byazt/vy/c;->tt(Ljava/util/List;Lcom/byazt/yl/ve;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p0, :cond_7

    .line 56
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result v2

    if-nez v2, :cond_5

    .line 57
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result v2

    if-nez v2, :cond_5

    .line 58
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isNormalAd()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getStrategyCpm()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_5

    .line 59
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public static c(Lcom/byazt/ll/tt;Ljava/lang/String;)V
    .locals 4

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->da()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ll/tt;->ve(Ljava/lang/String;)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 69
    :cond_2
    new-instance v0, Lcom/byazt/dj/tt$c;

    new-instance v1, Lcom/byazt/dj/tt;

    invoke-virtual {p0}, Lcom/byazt/ll/tt;->qp()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/byazt/dj/tt$c;-><init>(Lcom/byazt/dj/tt;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/byazt/dj/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 71
    invoke-virtual {v0}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/ch/c;->c(Lcom/byazt/dj/tt;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/ll/tt;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    invoke-virtual {p2}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->d()I

    move-result v1

    invoke-virtual {p2}, Lcom/byazt/ll/tt;->d()I

    move-result v2

    if-ne v1, v2, :cond_3

    return v3

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->qy()I

    move-result v1

    invoke-virtual {p2}, Lcom/byazt/ll/tt;->qy()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gu()I

    move-result p1

    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gu()I

    move-result p2

    if-ne p1, p2, :cond_5

    return v3

    :cond_5
    :goto_0
    return v0
.end method

.method private c(Ljava/util/List;Lcom/byazt/yl/ve;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ix/sp;",
            ">;",
            "Lcom/byazt/yl/ve;",
            ")Z"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ix/sp;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 61
    iget-object v0, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static tt(Ljava/util/List;Lcom/byazt/yl/ve;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/yl/ve;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/byazt/yl/ve;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method


# virtual methods
.method public declared-synchronized c(Lcom/byazt/ll/tt;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/ix/sp;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 30
    monitor-exit p0

    return-object v0

    .line 31
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/byazt/vy/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gr()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 35
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ix/sp;

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v0, :cond_5

    .line 38
    invoke-virtual {v5}, Lcom/byazt/ix/sp;->sp()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz v6, :cond_4

    const-string v6, "TTMediationSDK"

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--==-- \u516c\u5171\u7f13\u5b58\u6c60\uff0c\u5e7f\u544a\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/ix/sp;->tt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  adnName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v8}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " showSort:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v8}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u6682\u4e0d\u53ef\u7528\uff0c \u5df2\u7ecf\u88ab\u4f7f\u7528\u4e2d..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_4
    invoke-virtual {v5}, Lcom/byazt/ix/sp;->uj()Lcom/byazt/ll/tt;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/ll/tt;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/byazt/ix/sp;->n()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/byazt/ix/sp;->sp()Z

    move-result v6

    if-nez v6, :cond_3

    .line 41
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ix/sp;

    .line 44
    invoke-virtual {v0, v3}, Lcom/byazt/ix/sp;->tt(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 45
    :cond_6
    monitor-exit p0

    return-object v2

    .line 46
    :cond_7
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/byazt/ll/tt;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->x()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->tk()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 11
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "TTMediationSDK"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e7f\u544a\u4f4d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " show\u540e\u628a\u4e8c\u4ef7\u5e7f\u544a\u653e\u5165\u516c\u5171\u7f13\u5b58\u6c60 \u6570\u91cf\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    const-string v2, "\u6ca1\u6709\u4e8c\u4ef7"

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 13
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/byazt/vy/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_5

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    const-string v2, "TTMediationSDK"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5e7f\u544a\u4f4d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  \u4ee3\u7801\u4f4d\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   adnName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  loadSort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  showSort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  ecpm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/byazt/vy/c;->c(Ljava/util/List;Lcom/byazt/yl/ve;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 19
    new-instance v2, Lcom/byazt/ix/sp;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/byazt/ix/sp;-><init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ix/sp;

    .line 21
    invoke-virtual {v1}, Lcom/byazt/ix/sp;->n()Z

    move-result v2

    if-nez v2, :cond_8

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_9
    iget-object p2, p0, Lcom/byazt/vy/c;->ve:Ljava/util/Comparator;

    invoke-static {v0, p2}, Lcom/byazt/vx/h;->c(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    const/4 v1, 0x3

    if-ge v1, p2, :cond_a

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const-string p2, "TTMediationSDK"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e7f\u544a\u4f4d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u516c\u5171\u7f13\u5b58\u6c60\u4e8c\u4ef7\u5e7f\u544a\u7684\u6570\u91cf\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/byazt/vy/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 29
    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
