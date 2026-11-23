.class public Lcom/byazt/ug/c$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bc,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/pl/ve;Lcom/byazt/ug/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic n:Lcom/byazt/ug/c;

.field public final synthetic tt:J

.field public final synthetic uj:Z

.field public final synthetic ve:Lcom/byazt/ug/c$c;


# direct methods
.method public constructor <init>(Lcom/byazt/ug/c;Lorg/json/JSONObject;JLcom/byazt/ug/c$c;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/ug/c$1;->tt:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/byazt/ug/c$1;->uj:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    const-string v0, "0-net"

    iget-wide v1, p0, Lcom/byazt/ug/c$1;->tt:J

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const/4 p1, -0x1

    const-string v0, "ServerBiddingHelper"

    if-eqz p2, :cond_7

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->tt()I

    move-result v1

    .line 3
    invoke-static {p2}, Lcom/byazt/vx/eo;->c(Lcom/byazt/hm/tt;)Z

    move-result v2

    const-string v3, "response is empty"

    const/4 v4, 0x0

    const-string v5, "0-decrypt"

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Lcom/byazt/bp/ve;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->sl()[B

    move-result-object v2

    invoke-static {p1, v2, v4}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 5
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->sl()[B

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/vx/eo;->c([B)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    iget-wide v6, p0, Lcom/byazt/ug/c$1;->tt:J

    invoke-static {p2, v5, v6, v7}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    iget-object v6, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v8, p0, Lcom/byazt/ug/c$1;->uj:Z

    iget-wide v9, p0, Lcom/byazt/ug/c$1;->tt:J

    invoke-static/range {v4 .. v10}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ug/c$c;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v1, p0, Lcom/byazt/ug/c$1;->uj:Z

    const v2, 0x13c76

    invoke-static {p2, v2, p1, v0, v1}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void

    :cond_0
    const-string p1, "Server Bidding Request onResponse...response v4 is empty"

    .line 11
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    iget-object p2, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v0, p0, Lcom/byazt/ug/c$1;->uj:Z

    invoke-static {p1, v1, v3, p2, v0}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 14
    :try_start_1
    invoke-static {}, Lcom/byazt/bp/ve;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cypher"

    .line 16
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "message"

    .line 17
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-ltz p1, :cond_5

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 19
    invoke-static {p2}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/byazt/ug/c$1;->tt:J

    invoke-static {p2, v5, v1, v2}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p2, :cond_4

    .line 22
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, ">>>>> server bidding data error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 24
    invoke-static {}, Lcom/byazt/vx/tt;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/vx/c;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/byazt/ug/c$1;->tt:J

    invoke-static {p2, v5, v1, v2}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez p2, :cond_4

    .line 27
    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    const-string p2, "server bidding data error: "

    .line 28
    invoke-static {v0, p2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    goto :goto_2

    :cond_4
    :goto_0
    const/4 p2, 0x0

    :goto_1
    move-object v1, p2

    .line 30
    :goto_2
    iget-object v0, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    iget-object v2, p0, Lcom/byazt/ug/c$1;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v4, p0, Lcom/byazt/ug/c$1;->uj:Z

    iget-wide v5, p0, Lcom/byazt/ug/c$1;->tt:J

    invoke-static/range {v0 .. v6}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ug/c$c;ZJ)V

    return-void

    :cond_5
    const-string p1, "status_code"

    const/4 p2, -0x2

    .line 31
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "reason"

    .line 32
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "desc"

    .line 33
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Server Bidding onResponse error "

    .line 34
    invoke-static {v0, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reason is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\uff0cdesc is "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v2, p0, Lcom/byazt/ug/c$1;->uj:Z

    invoke-static {v0, p1, p2, v1, v2}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v1, p0, Lcom/byazt/ug/c$1;->uj:Z

    const v2, 0x13c6e

    invoke-static {p2, v2, p1, v0, v1}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void

    :cond_6
    const-string p1, "Server Bidding Request onResponse...response is empty"

    .line 37
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    iget-object p2, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v0, p0, Lcom/byazt/ug/c$1;->uj:Z

    invoke-static {p1, v1, v3, p2, v0}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void

    :cond_7
    const-string p2, "Server Bidding Request onResponse...response is null"

    .line 39
    invoke-static {v0, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    iget-object v0, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v1, p0, Lcom/byazt/ug/c$1;->uj:Z

    const-string v2, "response is null"

    invoke-static {p2, p1, v2, v0, v1}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 3

    .line 41
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    const p1, 0xad75

    goto :goto_0

    :cond_0
    const p1, 0xad74

    :goto_0
    const-string v0, "Server Bidding Request onError...errorCode="

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerBiddingHelper"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/byazt/ug/c$1;->n:Lcom/byazt/ug/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/byazt/ug/c$1;->ve:Lcom/byazt/ug/c$c;

    iget-boolean v2, p0, Lcom/byazt/ug/c$1;->uj:Z

    invoke-static {v0, p1, p2, v1, v2}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void
.end method
