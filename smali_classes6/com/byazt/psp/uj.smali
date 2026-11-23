.class public Lcom/byazt/psp/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5e1,
        0xf
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
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
    sput-object v0, Lcom/byazt/psp/uj;->c:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/qe/ve;->n(Ljava/lang/String;)Lcom/byazt/nbs/uj;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {v0}, Lcom/byazt/nbs/uj;->ve()I

    move-result v2

    .line 52
    invoke-virtual {v0}, Lcom/byazt/nbs/uj;->uj()Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_4

    .line 53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p0, v2}, Lcom/byazt/psp/c;->c(ILjava/lang/String;I)D

    move-result-wide v2

    .line 55
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/qe/ve;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nbs/ve;

    .line 58
    invoke-virtual {p1}, Lcom/byazt/nbs/ve;->a()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {p1}, Lcom/byazt/nbs/ve;->n()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/byazt/nbs/ve;->ve()I

    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/nbs/uj;->c(Ljava/lang/String;)I

    move-result p0

    const-string p1, "refresh_time"

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const/16 p1, 0x2710

    if-lt p0, p1, :cond_4

    const p1, 0x2bf20

    if-gt p0, p1, :cond_4

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public static c(Lcom/byazt/nbs/tt;I)Lcom/byazt/nbs/tt;
    .locals 8

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    .line 31
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->kk()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    .line 32
    sget-object p1, Lcom/byazt/psp/uj;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/nbs/tt;

    return-object p0

    :cond_1
    const/16 v3, 0x64

    if-ne p1, v3, :cond_9

    .line 33
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_9

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/byazt/psp/ve;->c(Lcom/byazt/nbs/tt;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rule_in_use"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 37
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "cost_time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    if-nez v2, :cond_4

    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->my()Lcom/byazt/nbs/tt;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->yp()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    invoke-virtual {v2, p1}, Lcom/byazt/nbs/tt;->tt(Ljava/util/List;)V

    goto :goto_1

    .line 42
    :cond_5
    invoke-virtual {v2, p1}, Lcom/byazt/nbs/tt;->c(Ljava/util/List;)V

    .line 43
    :goto_1
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object p1

    const-string v3, "max_ecpm"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v3

    const-string v4, "min_ecpm"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p1, :cond_6

    .line 45
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/byazt/nbs/tt;->uj(D)V

    :cond_6
    if-eqz v3, :cond_7

    .line 46
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/nbs/tt;->n(D)V

    .line 47
    :cond_7
    sget-object p1, Lcom/byazt/psp/uj;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_8
    :goto_2
    return-object p0

    :cond_9
    :goto_3
    return-object v2
.end method

.method public static c(ILjava/lang/String;ID)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->kk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p1, p2, v1}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->i()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-ne p0, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/byazt/psp/n;->c(ID)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->i()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 6
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/qe/ve;->n(Ljava/lang/String;)Lcom/byazt/nbs/uj;

    move-result-object p2

    if-eqz p2, :cond_3

    if-ne p0, v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/byazt/nbs/uj;->ve()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 8
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/byazt/psp/tt;->c(Ljava/lang/String;ID)V

    return-void

    :cond_2
    if-ne p0, v2, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/byazt/nbs/uj;->ve()I

    move-result p0

    if-eq p0, v0, :cond_3

    .line 10
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object p0

    invoke-virtual {p2}, Lcom/byazt/nbs/uj;->ve()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/psp/tt;->c(Ljava/lang/String;ID)V

    :cond_3
    return-void
.end method

.method public static c(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->kk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 63
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/byazt/qe/ve;->n(Ljava/lang/String;)Lcom/byazt/nbs/uj;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string p1, "dynamic_rule_id"

    .line 64
    invoke-virtual {p0}, Lcom/byazt/nbs/uj;->uj()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 65
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static c(ILjava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nbs/da;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->my()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "rit_ids"

    .line 81
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lcom/byazt/nbs/tt;DLjava/lang/String;I)V
    .locals 6

    .line 11
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->kk()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 13
    invoke-static {v1, p3, p4, p1, p2}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_3

    .line 16
    :cond_2
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_last_load_cpm_"

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->cu()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/psp/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2

    .line 17
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->kk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p0, p2, v1}, Lcom/byazt/ck/uj;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "mediation_request"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 21
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/byazt/psp/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    return-void

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 23
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/byazt/psp/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    return-void

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "sdk_init"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sdk_init_end"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "get_config_start"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "get_config_final"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    invoke-static {}, Lcom/byazt/psp/tt;->uj()Lcom/byazt/psp/tt;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/byazt/psp/tt;->ve(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static c(Ljava/util/List;Lcom/byazt/nbs/tt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/nbs/tt;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->kk()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yl/ve;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->i()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "gm_usb"

    if-ne v1, v2, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->pf()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/psp/n;->ve(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->i()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v1

    const-string v2, "user_label_value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    check-cast v1, Lcom/byazt/nbs/ve;

    .line 73
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/byazt/nbs/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(ZLcom/byazt/ng/uj;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/byazt/ng/uj;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 74
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->kk()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/byazt/psp/n;->uj()Lcom/byazt/psp/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/byazt/psp/n;->c(ZLcom/byazt/ng/uj;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
