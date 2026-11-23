.class public Lcom/byazt/bt/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x47
    }
.end annotation


# static fields
.field public static volatile c:Ljava/lang/String;

.field public static volatile tt:Ljava/lang/String;


# direct methods
.method public static c(Ljava/lang/String;Lcom/byazt/dna/c;)Lcom/byazt/it/ve;
    .locals 1

    const-string v0, "storage_service"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/eo;

    .line 3
    invoke-interface {v0, p1, p0}, Lcom/byazt/dna/eo;->getGlobalStorage(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sp_exec_getad_config"

    return-object v0
.end method

.method public static c(Lcom/byazt/dna/c;)Ljava/lang/String;
    .locals 2

    .line 19
    sget-object v0, Lcom/byazt/bt/x;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev13"

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1, p0}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/bt/x;->c:Ljava/lang/String;

    .line 21
    :cond_0
    sget-object p0, Lcom/byazt/bt/x;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/String;JLcom/byazt/dna/c;)Ljava/lang/String;
    .locals 6

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ""

    .line 13
    invoke-static {p0, v0, p3}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v1

    .line 15
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "time"

    .line 16
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p0, v4, p1

    if-gtz p0, :cond_2

    const-string p0, "value"

    .line 18
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/dna/c;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/byazt/bt/x;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 23
    :cond_1
    sput-object p0, Lcom/byazt/bt/x;->c:Ljava/lang/String;

    const-string v0, "dev13"

    .line 24
    invoke-static {v0, p0, p1, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)V
    .locals 1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/byazt/bt/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Lcom/byazt/dna/c;)Lcom/byazt/it/ve;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V
    .locals 3

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "value"

    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "p_version"

    .line 9
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static tt(Lcom/byazt/dna/c;)Ljava/lang/String;
    .locals 2

    .line 9
    sget-object v0, Lcom/byazt/bt/x;->tt:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev15"

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1, p0}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/bt/x;->tt:Ljava/lang/String;

    .line 11
    :cond_0
    sget-object p0, Lcom/byazt/bt/x;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static tt(Ljava/lang/String;JLcom/byazt/dna/c;)Ljava/lang/String;
    .locals 6

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ""

    .line 3
    invoke-static {p0, v0, p3}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v1

    .line 5
    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "time"

    .line 6
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p0, v4, p1

    if-gtz p0, :cond_2

    const-string p0, "value"

    .line 8
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/bt/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Lcom/byazt/dna/c;)Lcom/byazt/it/ve;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object p1
.end method

.method public static tt(Ljava/lang/String;Lcom/byazt/dna/c;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/byazt/bt/x;->tt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 13
    :cond_1
    sput-object p0, Lcom/byazt/bt/x;->tt:Ljava/lang/String;

    const-string v0, "dev15"

    .line 14
    invoke-static {v0, p0, p1, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V

    return-void
.end method
