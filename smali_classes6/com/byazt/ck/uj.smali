.class public Lcom/byazt/ck/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25b,
        0xf
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/ck/uj;


# instance fields
.field public volatile tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/it/ve;",
            ">;"
        }
    .end annotation
.end field

.field public uj:I

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/nbs/tt;",
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
    iput-object v0, p0, Lcom/byazt/ck/uj;->tt:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/byazt/ck/uj;->uj:I

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ck/uj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ck/uj;->uj:I

    return p0
.end method

.method public static c()Lcom/byazt/ck/uj;
    .locals 2

    .line 4
    sget-object v0, Lcom/byazt/ck/uj;->c:Lcom/byazt/ck/uj;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/byazt/ck/uj;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/byazt/ck/uj;->c:Lcom/byazt/ck/uj;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/byazt/ck/uj;

    invoke-direct {v1}, Lcom/byazt/ck/uj;-><init>()V

    sput-object v1, Lcom/byazt/ck/uj;->c:Lcom/byazt/ck/uj;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ck/uj;->c:Lcom/byazt/ck/uj;

    return-object v0
.end method

.method private c(I)Lcom/byazt/it/ve;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/ck/uj;->tt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/it/ve;

    if-nez v0, :cond_0

    .line 11
    invoke-static {p1}, Lcom/byazt/rq/c;->c(I)Lcom/byazt/it/ve;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/byazt/ck/uj;->tt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/ck/uj;I)Lcom/byazt/it/ve;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/ck/uj;->c(I)Lcom/byazt/it/ve;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ck/uj;Lcom/byazt/nbs/tt;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ck/uj;->c(Lcom/byazt/nbs/tt;)V

    return-void
.end method

.method private c(Lcom/byazt/nbs/tt;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 39
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->t()Lcom/byazt/hr/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->c(Lcom/byazt/hr/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->t()Lcom/byazt/hr/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->tt(Lcom/byazt/hr/i;)V

    .line 42
    :cond_0
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->sl()Lcom/byazt/hr/sp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->c(Lcom/byazt/hr/sp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->sl()Lcom/byazt/hr/sp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->tt(Lcom/byazt/hr/sp;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->uj(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->i(Ljava/lang/String;)V

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/nbs/da;

    .line 47
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->uj()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->ve()Lcom/byazt/hr/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/hr/t;->c(Lcom/byazt/hr/i;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->ve()Lcom/byazt/hr/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/hr/t;->tt(Lcom/byazt/hr/i;)V

    .line 50
    :cond_4
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->tt()Lcom/byazt/hr/sp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/hr/sl;->c(Lcom/byazt/hr/sp;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->tt()Lcom/byazt/hr/sp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/byazt/hr/sl;->tt(Lcom/byazt/hr/sp;)V

    goto :goto_1

    .line 52
    :cond_5
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/byazt/hr/t;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/byazt/hr/sl;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private c(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 36
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/byazt/ck/uj$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/byazt/ck/uj$3;-><init>(Lcom/byazt/ck/uj;ZLjava/util/Map;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lorg/json/JSONArray;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/byazt/ck/uj$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ck/uj$2;-><init>(Lcom/byazt/ck/uj;Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tt(I)V
    .locals 2

    .line 17
    iput p1, p0, Lcom/byazt/ck/uj;->uj:I

    .line 18
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->ve()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    new-instance p1, Lcom/byazt/ck/uj$1;

    invoke-direct {p1, p0}, Lcom/byazt/ck/uj$1;-><init>(Lcom/byazt/ck/uj;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    move-result-object p1

    const-string v0, "prime_rit_count"

    iget v1, p0, Lcom/byazt/ck/uj;->uj:I

    invoke-interface {p1, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ck/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ck/uj;->uj()V

    return-void
.end method

.method private tt(Lorg/json/JSONArray;ZZ)V
    .locals 7

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    sget-object v0, Lcom/byazt/qv/uj;->tt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez p2, :cond_0

    const-string v4, "save_time"

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    :cond_0
    invoke-static {v3, v1}, Lcom/byazt/nbs/tt;->c(Lorg/json/JSONObject;Z)Lcom/byazt/nbs/tt;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v4}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    iget-object v5, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v4}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/byazt/ck/uj;->c(Ljava/util/Map;Z)V

    .line 14
    invoke-static {}, Lcom/byazt/qv/uj;->c()V

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/byazt/ck/uj;->tt(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private uj()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    new-array v2, v1, [Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v4, v2, v5

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v2, v3

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    aput-object v5, v2, v4

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    aput-object v5, v2, v3

    .line 35
    .line 36
    const/4 v3, 0x5

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    aput-object v5, v2, v4

    .line 42
    .line 43
    const/4 v4, 0x6

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    aput-object v5, v2, v3

    .line 49
    .line 50
    const/4 v3, 0x7

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    aput-object v5, v2, v4

    .line 56
    .line 57
    const/16 v4, 0x8

    .line 58
    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    aput-object v5, v2, v3

    .line 64
    .line 65
    const/16 v3, 0x9

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    aput-object v5, v2, v4

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    aput-object v1, v2, v3

    .line 78
    .line 79
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-direct {p0, v1}, Lcom/byazt/ck/uj;->c(I)Lcom/byazt/it/ve;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Lcom/byazt/it/c;->clear()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ck/uj;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;
    .locals 1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nbs/tt;

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/byazt/ck/uj;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/byazt/nbs/tt;->sp(Ljava/lang/String;)Lcom/byazt/nbs/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget-object p2, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 p1, 0x66

    if-ne p3, p1, :cond_1

    return-object v0

    .line 21
    :cond_1
    invoke-static {v0, p3}, Lcom/byazt/psp/uj;->c(Lcom/byazt/nbs/tt;I)Lcom/byazt/nbs/tt;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x5

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x7

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x8

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x9

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xa

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/byazt/ck/uj;->c(I)Lcom/byazt/it/ve;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v0, p2, v2}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method public c(Lorg/json/JSONArray;ZZ)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ck/uj;->tt(Lorg/json/JSONArray;ZZ)V

    .line 14
    invoke-direct {p0, p1}, Lcom/byazt/ck/uj;->c(Lorg/json/JSONArray;)V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/byazt/ck/uj;->ve:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public ve()Z
    .locals 3

    .line 2
    iget v0, p0, Lcom/byazt/ck/uj;->uj:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    move-result-object v0

    const-string v2, "prime_rit_count"

    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/ck/uj;->uj:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/ck/uj;->uj:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
