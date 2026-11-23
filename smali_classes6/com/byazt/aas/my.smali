.class public Lcom/byazt/aas/my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x91
    }
.end annotation


# static fields
.field public static volatile c:Ljava/lang/String;

.field public static volatile tt:J


# direct methods
.method public static c()Ljava/lang/String;
    .locals 2

    const-string v0, "device_info_new"

    .line 1
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getNewIpAddrs(Z)[Ljava/lang/String;

    move-result-object v0

    .line 2
    aget-object v0, v0, v1

    return-object v0
.end method

.method public static c(Lcom/byazt/dna/c;)Lorg/json/JSONArray;
    .locals 2

    .line 3
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v0, "device_info_new"

    .line 4
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getIpInfoMap(Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "register_ipv6"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v1

    const-string v2, "dev14"

    invoke-virtual {v1, v2, v0}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sput-object p0, Lcom/byazt/aas/my;->c:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/aas/my;->tt:J

    return-void
.end method

.method public static c(ZLcom/byazt/dna/c;)[Ljava/lang/String;
    .locals 2

    const-string p1, ""

    .line 9
    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "device_info_new"

    .line 10
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0, p0}, Lcom/byazt/dna/u;->getIpInfoMap(Z)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "enc_ipv4"

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "enc_ipv6"

    .line 12
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p0, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method public static tt()Ljava/lang/String;
    .locals 2

    const-string v0, "device_info_new"

    .line 1
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getNewIpAddrs(Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    aget-object v0, v0, v1

    return-object v0
.end method

.method public static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3
    sget-object v0, Lcom/byazt/aas/my;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/32 v1, 0x1b7740

    if-nez v0, :cond_0

    sget-wide v3, Lcom/byazt/aas/my;->tt:J

    invoke-static {v3, v4, v1, v2}, Lcom/byazt/aas/DeviceUtils;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/byazt/aas/my;->c:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v3, "dev14"

    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/aas/my;->c()Ljava/lang/String;

    move-result-object p0

    :cond_1
    sput-object p0, Lcom/byazt/aas/my;->c:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/aas/my;->c:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/aas/my;->tt:J

    .line 10
    sget-object p0, Lcom/byazt/aas/my;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static tt(Lcom/byazt/dna/c;)[Ljava/lang/String;
    .locals 3

    const-string p0, ""

    .line 11
    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "device_info_new"

    .line 12
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getIpInfoMap(Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "local_ipv4"

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p0, v1

    const-string v1, "local_ipv6"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    :cond_0
    return-object p0
.end method

.method public static ve()Ljava/lang/String;
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
    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getIpInfoMap(Z)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "zaid_ipv6"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    :cond_1
    return-object v0
.end method
