.class public Lcom/byazt/ukr/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x2a
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/vb/tt;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "is_new"

    .line 2
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sdk_session_id"

    .line 3
    sget-object v2, Lcom/byazt/ukr/tt;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    move-result-object v1

    const-string v2, "new_adlog_monitor"

    .line 6
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/byazt/fo/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/qal/tt;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/byazt/fo/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Lcom/byazt/fo/c;->ve(B)V

    const/4 p1, 0x2

    .line 10
    invoke-virtual {v1, p1}, Lcom/byazt/fo/c;->tt(B)V

    .line 11
    invoke-virtual {v1, v0}, Lcom/byazt/fo/c;->c(B)V

    return-object v1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    .line 14
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->az()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "success"

    .line 15
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 16
    :cond_1
    invoke-static {p1, p2}, Lcom/byazt/ddx/uj;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/byazt/nr/rh;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public da()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bwm/n;->tt()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "device_info_new"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/u;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getWebViewUA(Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public sl()Lcom/byazt/epi/ve;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sp()Lcom/byazt/gs/tt;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ukr/da;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/byazt/ukr/da;-><init>(Lcom/byazt/va/ve;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public t()Lcom/byazt/vb/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ukr/c;->c:Lcom/byazt/ukr/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "csj_"

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/ogz/i;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->or()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public synthetic x()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ukr/i;->m()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public yp()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->zb()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public z()Landroid/os/Looper;
    .locals 1

    .line 1
    const-string v0, "thread_service"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/qp;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIOHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
