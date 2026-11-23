.class public Lcom/byazt/feb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15f,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/feb/c$c;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/feb/c;


# instance fields
.field public final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/feb/c$c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final ve:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/feb/c;->ve:Lorg/json/JSONObject;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/feb/c;->tt:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static c()Lcom/byazt/feb/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/feb/c;->c:Lcom/byazt/feb/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/feb/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/feb/c;->c:Lcom/byazt/feb/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/feb/c;

    invoke-direct {v1}, Lcom/byazt/feb/c;-><init>()V

    sput-object v1, Lcom/byazt/feb/c;->c:Lcom/byazt/feb/c;

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
    sget-object v0, Lcom/byazt/feb/c;->c:Lcom/byazt/feb/c;

    return-object v0
.end method

.method private c(Lcom/byazt/pik/tt;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .line 68
    invoke-virtual {p1}, Lcom/byazt/pik/tt;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/byazt/jze/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/byazt/kx/c;->c(Ljava/lang/String;)Lcom/byazt/kx/c;

    move-result-object p1

    .line 72
    invoke-virtual {p1, p2}, Lcom/byazt/kx/c;->c(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "calculateOutput error:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tmee_TTFeaCalCenter"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private c(Lcom/byazt/pik/ve;)V
    .locals 7

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/byazt/feb/c;->tt:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/pik/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 54
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/feb/c$c;

    .line 58
    iget-object v4, v3, Lcom/byazt/feb/c$c;->tt:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    .line 59
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 60
    :cond_1
    iget-object v5, v3, Lcom/byazt/feb/c$c;->ve:Ljava/lang/String;

    iget-object v6, v3, Lcom/byazt/feb/c$c;->uj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v3, v3, Lcom/byazt/feb/c$c;->tt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string v0, "results"

    .line 62
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pik/tt;

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/tt;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 66
    iget-object v3, p0, Lcom/byazt/feb/c;->ve:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/byazt/pik/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateOutputs error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tmee_TTFeaCalCenter"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/pik/ve;Lcom/byazt/pik/c;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 21
    invoke-virtual {p2}, Lcom/byazt/pik/c;->ve()Lcom/byazt/pik/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-direct {p0, v0, p4}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/uj;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p2, p4}, Lcom/byazt/pik/c;->c(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 24
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/pik/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 26
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 27
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/feb/c;->tt(Lcom/byazt/pik/ve;Lcom/byazt/pik/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lcom/byazt/pik/ve;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pik/c;

    .line 20
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/ve;Lcom/byazt/pik/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/pik/ve;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/pik/ve;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/feb/c$c;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 28
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->uj()Lcom/byazt/pik/n;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/pik/n;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {p1}, Lcom/byazt/pik/n;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 33
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/feb/c$c;

    .line 34
    iget-object v2, p2, Lcom/byazt/feb/c$c;->uj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    .line 36
    iget-object v5, p2, Lcom/byazt/feb/c$c;->uj:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private c(Lcom/byazt/pik/ve;Lorg/json/JSONObject;)V
    .locals 1

    .line 14
    invoke-virtual {p1, p2}, Lcom/byazt/pik/ve;->c(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/feb/c;->tt(Lcom/byazt/pik/ve;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/ve;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/ve;)V

    return-void
.end method

.method private c(Lcom/byazt/pik/uj;Lorg/json/JSONObject;)Z
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/byazt/pik/uj;->getType()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/byazt/pik/uj;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "type"

    .line 51
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private tt(Lcom/byazt/pik/ve;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->ve()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/byazt/jze/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/byazt/kx/c;->c(Ljava/lang/String;)Lcom/byazt/kx/c;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/byazt/kx/c;->c(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "calculateGroupKey error:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tmee_TTFeaCalCenter"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private tt(Lcom/byazt/pik/ve;Lcom/byazt/pik/c;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ts"

    .line 10
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->c()Ljava/lang/String;

    move-result-object p4

    .line 12
    iget-object v2, p0, Lcom/byazt/feb/c;->tt:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 13
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/byazt/feb/c;->tt:Ljava/util/Map;

    invoke-interface {v3, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/byazt/pik/c;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 16
    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/feb/c$c;

    if-nez v3, :cond_2

    .line 17
    new-instance v3, Lcom/byazt/feb/c$c;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/byazt/feb/c$c;-><init>(Lcom/byazt/feb/c$1;)V

    const-string v4, "count"

    .line 18
    iput-object v4, v3, Lcom/byazt/feb/c$c;->c:Ljava/lang/String;

    .line 19
    iput-object p3, v3, Lcom/byazt/feb/c$c;->tt:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lcom/byazt/pik/c;->tt()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/byazt/feb/c$c;->ve:Ljava/lang/String;

    .line 21
    invoke-interface {v2, p4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    iget-object p2, v3, Lcom/byazt/feb/c$c;->uj:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0, p1, v2}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/ve;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 10

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/feb/c;->tt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    invoke-static {}, Lcom/byazt/feb/tt;->c()Lcom/byazt/feb/tt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/feb/tt;->c(Ljava/lang/String;)Lcom/byazt/pik/ve;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/pik/ve;->uj()Lcom/byazt/pik/n;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 42
    :cond_3
    invoke-virtual {v1}, Lcom/byazt/pik/n;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 43
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/feb/c$c;

    .line 44
    iget-object v4, v3, Lcom/byazt/feb/c$c;->uj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    .line 46
    iget-object v7, v3, Lcom/byazt/feb/c$c;->uj:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_6
    invoke-direct {p0, p1}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/ve;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 4

    .line 7
    invoke-static {}, Lcom/byazt/feb/tt;->c()Lcom/byazt/feb/tt;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/feb/tt;->tt()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pik/ve;

    .line 11
    invoke-virtual {v1}, Lcom/byazt/pik/ve;->sp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/byazt/feb/c;->c(Lcom/byazt/pik/ve;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processEvent error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tmee_TTFeaCalCenter"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/feb/c;->ve:Lorg/json/JSONObject;

    return-object v0
.end method
