.class public Lcom/byazt/ng/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x36
    }
.end annotation


# static fields
.field public static volatile c:Z

.field public static final tt:Ljava/util/concurrent/atomic/AtomicLong;

.field public static ve:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/byazt/ng/ve;->tt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/byazt/ng/ve;->c:Z

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 33
    :try_start_0
    invoke-static {}, Lcom/byazt/ng/tt;->c()Lcom/byazt/ng/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ng/tt;->tt()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ng/tt$c;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/byazt/ng/tt$c;->c()Lcom/byazt/ng/uj;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/ng/tt$c;->tt()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/byazt/ng/tt;->c()Lcom/byazt/ng/tt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ng/tt;->ve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 37
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/ng/uj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->gu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 17
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 18
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_2

    .line 19
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 20
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string p2, "eventIndex"

    .line 23
    sget-object v2, Lcom/byazt/ng/ve;->tt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "is_main_process"

    .line 24
    invoke-static {p0}, Lcom/byazt/vx/gr;->c(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "is_cypher_v4"

    .line 25
    invoke-static {}, Lcom/byazt/bp/tt;->c()Lcom/byazt/le/c;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/le/c;->c()Z

    move-result p2

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 26
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/bp/c;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "e2e_test_flag"

    const-string p2, "1"

    .line 27
    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "event_id"

    invoke-virtual {p1, p2, p0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 29
    :cond_4
    sget-boolean p0, Lcom/byazt/ng/ve;->c:Z

    if-nez p0, :cond_5

    .line 30
    invoke-static {}, Lcom/byazt/ng/tt;->c()Lcom/byazt/ng/tt;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/byazt/ng/tt;->c(Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V

    return-void

    .line 31
    :cond_5
    invoke-static {p1, v1}, Lcom/byazt/ng/c;->c(Lcom/byazt/ng/uj;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 32
    invoke-static {v0, p1, p0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "csj_mediation"

    .line 38
    invoke-static {v0}, Lcom/byazt/epi/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 40
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/byazt/ng/sp;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Lorg/json/JSONObject;)Lcom/byazt/ng/sp;

    move-result-object p0

    const/4 p1, 0x1

    .line 41
    invoke-static {p0, p1}, Lcom/byazt/jj/ve;->c(Lcom/byazt/ng/c;Z)V

    .line 42
    new-instance p1, Lcom/byazt/fo/c;

    iget-object p2, p0, Lcom/byazt/ng/c;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/byazt/fo/c;-><init>(Ljava/lang/String;Lcom/byazt/fo/tt;)V

    const/4 p0, 0x3

    .line 43
    invoke-interface {p1, p0}, Lcom/byazt/vb/tt;->c(B)V

    const/4 p0, 0x2

    .line 44
    invoke-interface {p1, p0}, Lcom/byazt/vb/tt;->tt(B)V

    .line 45
    invoke-static {p1, v0}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/tt;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->qp()I

    move-result v0

    const-string v1, "s-adlog_pre"

    .line 3
    invoke-static {p1, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/byazt/vb/c$c;

    invoke-direct {p1}, Lcom/byazt/vb/c$c;-><init>()V

    new-instance v1, Lcom/byazt/ng/i;

    invoke-direct {v1}, Lcom/byazt/ng/i;-><init>()V

    .line 5
    invoke-virtual {p1, v1}, Lcom/byazt/vb/c$c;->c(Lcom/byazt/vb/sl;)Lcom/byazt/vb/c$c;

    move-result-object p1

    const-wide/32 v1, 0xa4cb800

    .line 6
    invoke-static {v0, v0, v1, v2}, Lcom/byazt/rz/c;->c(IIJ)Lcom/byazt/rz/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/vb/c$c;->tt(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->yp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/vb/c$c;->tt(Z)Lcom/byazt/vb/c$c;

    move-result-object p1

    new-instance v0, Lcom/byazt/ng/da;

    invoke-direct {v0}, Lcom/byazt/ng/da;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Lcom/byazt/vb/c$c;->c(Lcom/byazt/vb/uj;)Lcom/byazt/vb/c$c;

    move-result-object p1

    sget-object v0, Lcom/byazt/ng/sl;->c:Lcom/byazt/ng/sl;

    .line 9
    invoke-virtual {p1, v0}, Lcom/byazt/vb/c$c;->c(Lcom/byazt/vb/a;)Lcom/byazt/vb/c$c;

    move-result-object p1

    const-string v0, "csj_mediation"

    .line 10
    invoke-virtual {p1, v0}, Lcom/byazt/vb/c$c;->c(Ljava/lang/String;)Lcom/byazt/vb/c$c;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Lcom/byazt/vb/c$c;->c(Landroid/content/Context;)Lcom/byazt/vb/c$c;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/byazt/xo/c;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/vb/c$c;->tt(I)Lcom/byazt/vb/c$c;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/byazt/vb/c$c;->c()Lcom/byazt/vb/c;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/c;)Lcom/byazt/vb/sp;

    const/4 p0, 0x1

    .line 15
    invoke-static {v0, p0}, Lcom/byazt/epi/c;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method private static n()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/vx/eo;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "b_msg_id"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/byazt/sx/ve$tt;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public static tt()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/ng/ve;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static uj()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/byazt/ng/ve;->ve:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0xbb8

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-ltz v6, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/ng/ve;->tt()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    sput-wide v0, Lcom/byazt/ng/ve;->ve:J

    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/byazt/vx/gr;->c(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/ng/ve;->ve()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/byazt/ng/ve;->n()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "badkground too frequently ms: "

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-wide v3, Lcom/byazt/ng/ve;->ve:J

    .line 49
    .line 50
    sub-long/2addr v0, v3

    .line 51
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "TTMediationSDK"

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public static ve()V
    .locals 1

    .line 1
    const-string v0, "csj_mediation"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/epi/c;->ve(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
