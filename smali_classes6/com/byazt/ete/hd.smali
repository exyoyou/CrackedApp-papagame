.class public Lcom/byazt/ete/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x27e
    }
.end annotation


# instance fields
.field public a:J

.field public c:Lcom/byazt/ete/ic;

.field public da:I

.field public i:I

.field public n:I

.field public sp:J

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:J


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/ete/hd;->da:I

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ete/hd;->da:I

    .line 6
    iput-object p1, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_0

    const-string p1, "req_type"

    .line 7
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ete/hd;->tt:I

    const-string p1, "load_type"

    .line 8
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ete/hd;->ve:I

    const-string p1, "bidding_result"

    .line 9
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ete/hd;->uj:I

    const-string p1, "reuse_count"

    .line 10
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ete/hd;->n:I

    const-string p1, "object_create_time"

    const-wide/16 v1, 0x0

    .line 11
    invoke-virtual {p2, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/ete/hd;->a:J

    const-string p1, "show_time"

    .line 12
    invoke-virtual {p2, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/ete/hd;->sp:J

    const-string p1, "final_ts"

    .line 13
    invoke-virtual {p2, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/byazt/ete/hd;->x:J

    const-string p1, "final_status"

    .line 14
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/ete/hd;->i:I

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "req_type"

    .line 35
    iget v2, p0, Lcom/byazt/ete/hd;->tt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "load_type"

    .line 36
    iget v2, p0, Lcom/byazt/ete/hd;->ve:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bidding_result"

    .line 37
    iget v2, p0, Lcom/byazt/ete/hd;->uj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reuse_count"

    .line 38
    iget v2, p0, Lcom/byazt/ete/hd;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "object_create_time"

    .line 39
    iget-wide v2, p0, Lcom/byazt/ete/hd;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "show_time"

    .line 40
    iget-wide v2, p0, Lcom/byazt/ete/hd;->sp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "final_ts"

    .line 41
    iget-wide v2, p0, Lcom/byazt/ete/hd;->x:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "final_status"

    .line 42
    iget v2, p0, Lcom/byazt/ete/hd;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_count"

    .line 43
    iget v2, p0, Lcom/byazt/ete/hd;->da:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/byazt/ete/hd;->tt:I

    return-void
.end method

.method public c(Lorg/json/JSONObject;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "ca_send_ts"

    .line 1
    iget-object v1, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->xg()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ca_bid_rst"

    .line 2
    iget v1, p0, Lcom/byazt/ete/hd;->uj:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ca_reuse_cnt"

    .line 3
    iget v1, p0, Lcom/byazt/ete/hd;->n:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ca_obj_ts"

    .line 4
    iget-wide v1, p0, Lcom/byazt/ete/hd;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ca_fnl_st"

    .line 5
    iget v1, p0, Lcom/byazt/ete/hd;->i:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ca_rpt_show_cnt"

    .line 6
    iget v1, p0, Lcom/byazt/ete/hd;->da:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ca_libra_group"

    .line 7
    iget-object v1, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-static {v1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/x$ve;->u()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ca_ad_index"

    .line 8
    iget-object v1, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fq()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_7

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/byazt/vvt/c;->tt()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 13
    :goto_0
    invoke-static {}, Lcom/byazt/vvt/c;->tt()Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "meta_show_count"

    .line 14
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->u(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {}, Lcom/byazt/vvt/c;->ve()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    :goto_1
    invoke-static {}, Lcom/byazt/vvt/c;->ve()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "meta_origin_show_count"

    .line 20
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object p2, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/vvt/ve;->c(Lcom/byazt/ete/ic;)V

    .line 22
    iget-object p2, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p2

    iget-object v0, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/byazt/vvt/ve;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_7

    .line 23
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 25
    invoke-static {v1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v2}, Lcom/byazt/ete/x$ve;->nu()Lcom/byazt/ete/x$n;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_6

    .line 27
    invoke-virtual {v2}, Lcom/byazt/ete/x$n;->tt()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/byazt/ete/x$n;->ve()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    .line 28
    iget-object v4, p0, Lcom/byazt/ete/hd;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 29
    invoke-virtual {v4}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    .line 30
    :cond_4
    invoke-static {}, Lcom/byazt/wi/tt;->c()Lcom/byazt/wi/tt;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/byazt/wi/tt;->c(ILjava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-lez v1, :cond_5

    const-string v1, "dynamic_tmax"

    .line 31
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5
    const-string v1, "dynamic_tmax_type"

    .line 32
    invoke-virtual {v2}, Lcom/byazt/ete/x$n;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move-object p2, v0

    :catchall_0
    :try_start_2
    const-string v0, "ca_interval_info"

    .line 33
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_7
    return-void
.end method

.method public tt()V
    .locals 2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ete/hd;->a:J

    return-void
.end method

.method public tt(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/byazt/ete/hd;->ve:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/byazt/ete/hd;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/byazt/ete/hd;->n:I

    :cond_0
    return-void
.end method

.method public uj(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/byazt/ete/hd;->i:I

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/byazt/ete/hd;->x:J

    .line 8
    .line 9
    return-void
.end method

.method public ve()V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ete/hd;->sp:J

    .line 3
    iget v0, p0, Lcom/byazt/ete/hd;->da:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/byazt/ete/hd;->da:I

    .line 4
    invoke-virtual {p0, v1}, Lcom/byazt/ete/hd;->uj(I)V

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/hd;->uj:I

    return-void
.end method
