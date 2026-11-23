.class public Lcom/byazt/ppf/ve$4$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nd/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28a,
        0x619
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ppf/ve$4$1;->ve()Lcom/byazt/nd/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ppf/ve$4$1;


# direct methods
.method public constructor <init>(Lcom/byazt/ppf/ve$4$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/cq/c;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/cq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/byazt/bh/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    .line 4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "status"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-object v2, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    iget-object v2, v2, Lcom/byazt/ppf/ve$4$1;->c:Lcom/byazt/ppf/ve$4;

    iget-object v2, v2, Lcom/byazt/ppf/ve$4;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v2, "duration"

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    :cond_0
    invoke-static {p2, v1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 9
    iget-object p2, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    iget-object p2, p2, Lcom/byazt/ppf/ve$4$1;->c:Lcom/byazt/ppf/ve$4;

    iget-object p2, p2, Lcom/byazt/ppf/ve$4;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object p2, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    iget-object p2, p2, Lcom/byazt/ppf/ve$4$1;->c:Lcom/byazt/ppf/ve$4;

    iget-object p2, p2, Lcom/byazt/ppf/ve$4;->ve:Lorg/json/JSONArray;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 11
    invoke-virtual {p1}, Lcom/byazt/bh/c;->tt()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/byazt/bh/c;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    iget-object p2, p2, Lcom/byazt/ppf/ve$4$1;->c:Lcom/byazt/ppf/ve$4;

    iget-object p2, p2, Lcom/byazt/ppf/ve$4;->uj:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/cq/c;Ljava/util/Map;Lcom/byazt/qb/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/cq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/qb/c;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 16
    :try_start_0
    new-instance v0, Lcom/byazt/ppf/ve$4$1$2$1;

    invoke-direct {v0, p0, p3}, Lcom/byazt/ppf/ve$4$1$2$1;-><init>(Lcom/byazt/ppf/ve$4$1$2;Lcom/byazt/qb/c;)V

    invoke-static {p2, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/byazt/bh/c;->c()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "event"

    .line 20
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 22
    iget-object v0, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    iget-object v0, v0, Lcom/byazt/ppf/ve$4$1;->c:Lcom/byazt/ppf/ve$4;

    iget-object v0, v0, Lcom/byazt/ppf/ve$4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    const-string v0, "duration"

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    :cond_1
    invoke-static {p2, p3}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 25
    iget-object p1, p0, Lcom/byazt/ppf/ve$4$1$2;->c:Lcom/byazt/ppf/ve$4$1;

    iget-object p1, p1, Lcom/byazt/ppf/ve$4$1;->c:Lcom/byazt/ppf/ve$4;

    iget-object p1, p1, Lcom/byazt/ppf/ve$4;->ve:Lorg/json/JSONArray;

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
