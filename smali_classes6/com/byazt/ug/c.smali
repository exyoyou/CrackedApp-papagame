.class public Lcom/byazt/ug/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bc,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ug/c$c;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/ug/c;


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

.method public static c(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method private c(Lorg/json/JSONObject;)Lcom/byazt/nbs/x;
    .locals 6

    const-string v0, "ServerBiddingHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v2, "m_adm"

    .line 160
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_data_and_no_parse"

    .line 161
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 163
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "cypher"

    const/4 v4, -0x1

    .line 164
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "message"

    .line 165
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ltz v2, :cond_9

    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v2, v4, :cond_3

    .line 167
    invoke-static {}, Lcom/byazt/vx/eo;->a()Lcom/byazt/dna/n;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v2, v3}, Lcom/byazt/dna/n;->decryptWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 169
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v3, :cond_6

    .line 170
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    .line 171
    :try_start_2
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>>> adm winner data 4 error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 173
    invoke-static {v3}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v3, :cond_6

    .line 175
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 176
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>>> adm winner data 2 error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v2, v5, :cond_5

    .line 177
    invoke-static {}, Lcom/byazt/vx/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/byazt/vx/c;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v3, :cond_6

    .line 179
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    .line 180
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>>> adm winner data error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 181
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_2

    :cond_6
    :goto_1
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 183
    new-instance v2, Lcom/byazt/nbs/x;

    invoke-direct {v2}, Lcom/byazt/nbs/x;-><init>()V

    const-string v4, "req_bidding_type"

    .line 184
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->tt(I)V

    const-string v4, "price"

    .line 185
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->ve(Ljava/lang/String;)V

    const-string v4, "load_price"

    .line 186
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->uj(Ljava/lang/String;)V

    const-string v4, "adm"

    .line 187
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->da(Ljava/lang/String;)V

    const-string v4, "name"

    .line 188
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->n(Ljava/lang/String;)V

    const-string v4, "app_id"

    .line 189
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->sp(Ljava/lang/String;)V

    const-string v4, "slot_id"

    .line 190
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->a(Ljava/lang/String;)V

    const-string v4, "win_callback"

    .line 191
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->x(Ljava/lang/String;)V

    const-string v4, "fail_callback"

    .line 192
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->i(Ljava/lang/String;)V

    const-string v4, "m_aid"

    .line 193
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->c(Ljava/lang/String;)V

    const-string v4, "ad_extra"

    .line 194
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/nbs/x;->tt(Ljava/lang/String;)V

    const-string v4, "pricing_type"

    .line 195
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/nbs/x;->c(I)V

    .line 196
    invoke-virtual {v2, p1}, Lcom/byazt/nbs/x;->c(Ljava/lang/Object;)V

    return-object v2

    :cond_7
    const-string p1, "adm winner data.string is null "

    .line 197
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_8
    const-string p1, "adm winner data is null"

    .line 198
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-string p1, "adm winner data onResponse error "

    .line 199
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v1

    :catchall_3
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "adm winner onResponse throwable \uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static c()Lcom/byazt/ug/c;
    .locals 2

    .line 11
    sget-object v0, Lcom/byazt/ug/c;->c:Lcom/byazt/ug/c;

    if-nez v0, :cond_1

    .line 12
    const-class v0, Lcom/byazt/ug/c;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/byazt/ug/c;->c:Lcom/byazt/ug/c;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/byazt/ug/c;

    invoke-direct {v1}, Lcom/byazt/ug/c;-><init>()V

    sput-object v1, Lcom/byazt/ug/c;->c:Lcom/byazt/ug/c;

    .line 15
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ug/c;->c:Lcom/byazt/ug/c;

    return-object v0
.end method

.method private c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/db/c;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/byazt/ll/tt;",
            "Lcom/byazt/nbs/da;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "baidu"

    .line 4
    invoke-virtual {p4}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p5, 0x0

    .line 5
    invoke-static {p4, p5}, Lcom/byazt/dv/tt;->c(Lcom/byazt/nbs/da;Lcom/byazt/pq/c;)Lcom/byazt/dv/tt;

    move-result-object v1

    .line 6
    invoke-static {v1, p3, p5}, Lcom/byazt/qv/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;

    move-result-object p5

    if-nez p5, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    const-string v2, "%1$s_%2$s_%3$s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p4}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object p4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p5, p2, v1, p3}, Lcom/byazt/db/c;->getBiddingToken(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p4}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/byazt/px/c;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "serverBiddingRequest"

    const-string p2, "adSlot is null or waterFallConfig is null can not get server bidding token"

    .line 10
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;Lcom/byazt/nbs/tt;IZLorg/json/JSONObject;ZJ)Ljava/lang/String;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/db/c;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/nbs/tt;",
            "IZ",
            "Lorg/json/JSONObject;",
            "ZJ)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p9

    const-string v11, "req_bidding_type"

    const-string v12, "sdk_version"

    .line 235
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "request_id"

    .line 236
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v12, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "plugin_version"

    .line 238
    invoke-static {}, Lcom/byazt/yl/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "waterfall_id"

    .line 239
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "waterfall_version"

    .line 240
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->cu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v15, 0x2

    .line 241
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v11, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "segment_id"

    .line 242
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "segment_version"

    .line 243
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->eo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "transparent_params"

    .line 244
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "scenario_id"

    .line 246
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v13

    goto/16 :goto_19

    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "is_fusion"

    const/16 v16, 0x1

    .line 247
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->bx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v0, :cond_1

    :try_start_3
    const-string v0, "mediation_map_request"

    .line 249
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 250
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/byazt/ug/c;->tt()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/vq/c;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v0, :cond_2

    :try_start_5
    const-string v1, "app_abtest"

    .line 251
    invoke-virtual {v13, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 252
    :cond_2
    :try_start_6
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/byazt/ug/c;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/vq/c;->tt(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v0, :cond_3

    :try_start_7
    const-string v1, "waterfall_abtest"

    .line 253
    invoke-virtual {v13, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    :try_start_8
    const-string v0, "grouping_params"

    .line 254
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/bp/c;->rl()Lcom/byazt/yf/a;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->rl()Lcom/byazt/yf/a;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/qe/tt;->tt(Lcom/byazt/yf/a;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v0, :cond_4

    :try_start_9
    const-string v1, "user_defined_grouping_params"

    .line 256
    invoke-virtual {v13, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 257
    :cond_4
    :try_start_a
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 258
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 259
    sget-object v0, Lcom/byazt/ly/c;->c:Ljava/lang/String;

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/byazt/ly/c;->uj:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const/4 v4, 0x0

    const/16 v17, 0x0

    .line 261
    :goto_1
    :try_start_b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    const-string v3, "exchange_rate"

    const-string v2, "load_sort"

    const-string v1, "show_sort"

    const-string v14, "name"

    const/16 v18, 0x0

    const-string v15, "app_id"

    move-object/from16 v19, v11

    const-string v11, "slot_id"

    if-ge v4, v0, :cond_11

    .line 262
    :try_start_c
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nbs/da;

    .line 263
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->zb()Z

    move-result v20

    if-nez v20, :cond_5

    :goto_2
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object v1, v6

    move-object v2, v12

    move-object/from16 v20, v13

    goto/16 :goto_e

    .line 264
    :cond_5
    invoke-static {v8, v0}, Lcom/byazt/qv/n;->c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)Lcom/byazt/qv/n$c;

    move-result-object v20

    if-eqz v20, :cond_6

    goto :goto_2

    .line 265
    :cond_6
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-object/from16 v20, v13

    .line 266
    :try_start_d
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-object/from16 v21, v15

    .line 267
    :try_start_e
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->m()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v1

    .line 268
    sget-object v1, Lcom/byazt/ly/c;->tt:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->da()I

    move-result v18

    move-object/from16 v23, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lcom/byazt/ly/c;->ve:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lcom/byazt/ly/c;->a:Ljava/lang/String;

    invoke-direct {v7, v8, v0}, Lcom/byazt/ug/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rit_type"

    .line 272
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_name"

    .line 273
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->yv()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_amount"

    .line 274
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v18

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v24, v3

    .line 277
    invoke-static {v5, v13}, Lcom/byazt/px/c;->tt(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    sub-long v1, v25, v1

    const-string v8, "token"

    if-eqz v3, :cond_8

    .line 279
    :try_start_f
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v25
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-nez v25, :cond_8

    move/from16 v25, v4

    .line 280
    :try_start_10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v26, v5

    :try_start_11
    const-string v5, "buyerId"

    .line 281
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v27, v6

    :try_start_12
    const-string v6, "sdkInfo"

    .line 282
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/bp/c;->h()Z

    move-result v6

    .line 284
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v29, v12

    :try_start_13
    invoke-virtual/range {v28 .. v28}, Lcom/byazt/bp/c;->d()Ljava/lang/String;

    move-result-object v12

    .line 285
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/byazt/bp/c;->eo()Z

    move-result v28

    .line 286
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/byazt/bp/c;->zb()Z

    move-result v30

    move-object/from16 v31, v11

    const-string v11, "sdk_info"

    .line 287
    invoke-virtual {v4, v11, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "wx_installed"

    .line 288
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "opensdk_ver"

    .line 289
    invoke-virtual {v4, v3, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "support_h265"

    .line 290
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "support_splash_zoomout"

    .line 291
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    invoke-virtual {v9, v8, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extra"

    .line 293
    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v10, :cond_7

    .line 294
    invoke-virtual {v10, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_7
    move-object/from16 v35, v22

    move-object/from16 v33, v23

    move-object/from16 v32, v24

    move/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v34, v27

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move/from16 v25, v4

    :goto_3
    move-object/from16 v26, v5

    :goto_4
    move-object/from16 v27, v6

    :goto_5
    move-object/from16 v29, v12

    goto/16 :goto_a

    :cond_8
    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v31, v11

    move-object/from16 v29, v12

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 v6, v22

    move-object/from16 v1, p0

    move-object/from16 v5, v23

    move-object/from16 v2, p1

    move-object/from16 v4, v24

    move-object/from16 v3, p2

    move-object/from16 v32, v4

    move/from16 v22, v25

    move-object/from16 v4, p3

    move-object/from16 v33, v5

    move-object/from16 v23, v26

    move-object v5, v0

    move-object/from16 v35, v6

    move-object/from16 v34, v27

    move-object/from16 v6, v23

    .line 296
    :try_start_14
    invoke-direct/range {v1 .. v6}, Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v11

    if-eqz v10, :cond_9

    .line 298
    invoke-virtual {v10, v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    :cond_9
    invoke-virtual {v9, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    :goto_6
    invoke-direct {v7, v13}, Lcom/byazt/ug/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v9, v14, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "custom_adn_name"

    .line 302
    invoke-virtual {v9, v2, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v35

    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->yv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v33

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "discount"

    .line 305
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->yp()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v32

    invoke-virtual {v9, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v31

    invoke-virtual {v9, v6, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sub_adType"

    .line 308
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v2, v29

    .line 309
    :try_start_15
    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->sv()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 311
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/byazt/qe/ve;->tt(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 312
    invoke-virtual {v1}, Lcom/byazt/nbs/c;->tt()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, v21

    invoke-virtual {v9, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_a
    move-object/from16 v8, v21

    if-eqz v18, :cond_b

    .line 313
    invoke-virtual/range {v18 .. v18}, Lcom/byazt/nbs/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    :cond_b
    :goto_7
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/byazt/hr/sl;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    const-string v3, "log_extra"

    const-string v4, "adn_rit_show_rule_id"

    const-string v5, "error_msg"

    const-string v6, "media_req_type"

    const-string v8, "mediation_req_type"

    const/4 v11, 0x3

    const-string v12, "error_code"

    if-nez v1, :cond_d

    .line 315
    :try_start_16
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v14, v0}, Lcom/byazt/hr/sl;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p8, :cond_c

    const/4 v11, 0x2

    .line 316
    :cond_c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    new-instance v1, Lcom/byazt/bnd/tt;

    const v6, 0xa051

    invoke-static {v6}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v6, v8, v11, v0}, Lcom/byazt/bnd/tt;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget v0, v1, Lcom/byazt/pp/c;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 321
    iget v6, v1, Lcom/byazt/pp/c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v6, v1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "block_show_count"

    .line 323
    invoke-virtual {v1}, Lcom/byazt/bnd/tt;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {v1}, Lcom/byazt/bnd/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 326
    :cond_d
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Lcom/byazt/hr/t;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 327
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Lcom/byazt/hr/t;->uj(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/hr/i;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz p8, :cond_e

    const/4 v11, 0x2

    .line 328
    :cond_e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v8, 0x2

    .line 329
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    new-instance v6, Lcom/byazt/bnd/ve;

    const v8, 0xa052

    invoke-static {v8}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Lcom/byazt/hr/t;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {v1}, Lcom/byazt/hr/i;->da()Ljava/lang/String;

    move-result-object v1

    const v7, 0xa052

    invoke-direct {v6, v7, v11, v0, v1}, Lcom/byazt/bnd/ve;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget v0, v6, Lcom/byazt/pp/c;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 335
    iget v1, v6, Lcom/byazt/pp/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    iget-object v1, v6, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "block_pacing"

    .line 337
    invoke-virtual {v6}, Lcom/byazt/bnd/ve;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    invoke-virtual {v6}, Lcom/byazt/bnd/ve;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :cond_f
    :goto_8
    move-object/from16 v1, v34

    .line 340
    :try_start_17
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v2, v29

    :goto_9
    move-object/from16 v1, v34

    goto :goto_c

    :catchall_7
    move-exception v0

    :goto_a
    move/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    goto :goto_c

    :catchall_8
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object v1, v6

    move-object v2, v12

    goto :goto_c

    :catchall_9
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object v1, v6

    move-object v2, v12

    goto :goto_b

    :catchall_a
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object v1, v6

    move-object v2, v12

    move-object/from16 v20, v13

    :goto_b
    move-object/from16 v13, v18

    :goto_c
    :try_start_18
    const-string v3, "TTMediationSDK"

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "serverBiddingRequest-buildBiddingRequestBody:[adnName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]-error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    const-string v0, "pangle"

    .line 342
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    if-eqz v0, :cond_10

    const/16 v17, 0x1

    :cond_10
    :goto_e
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v6, v1

    move-object v12, v2

    move-object/from16 v11, v19

    move-object/from16 v13, v20

    move-object/from16 v5, v23

    const/4 v15, 0x2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v14, v17

    move-object/from16 v2, v20

    goto/16 :goto_1a

    :cond_11
    move-object v4, v2

    move-object v5, v3

    move-object/from16 v20, v13

    move-object v8, v15

    move-object v3, v1

    move-object v1, v6

    move-object v6, v11

    :try_start_19
    const-string v0, "bidders"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    move-object/from16 v2, v20

    .line 343
    :try_start_1a
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v17, :cond_12

    const-string v0, "bid_request"
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    .line 344
    :try_start_1b
    invoke-direct {v1, v7}, Lcom/byazt/ug/c;->c(Lcom/byazt/ll/tt;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v7, p3

    .line 345
    :goto_f
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "group_type"

    .line 346
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->i()I

    move-result v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "primerit_req_type"

    move/from16 v11, p7

    .line 347
    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "req_type"

    .line 348
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->uj()I

    move-result v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ad_type"

    .line 349
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->my()I

    move-result v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "waterfall_extra"

    .line 350
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->lt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->n()I

    move-result v0

    const/4 v11, 0x2

    if-ne v0, v11, :cond_13

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    const-string v0, "if_test"

    .line 352
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->n()I

    move-result v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "expect_winner"

    move-object/from16 v11, p4

    const/4 v12, 0x0

    .line 353
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/byazt/nbs/da;

    invoke-virtual {v11}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    :cond_13
    const/4 v12, 0x0

    .line 354
    :goto_10
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/tt;->i()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v9}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2

    if-eqz v0, :cond_16

    :try_start_1c
    const-string v7, "pangle_vid"

    .line 356
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    instance-of v7, v0, [I

    if-eqz v7, :cond_14

    .line 358
    check-cast v0, [I

    goto :goto_14

    .line 359
    :cond_14
    instance-of v7, v0, [Ljava/lang/Integer;

    if-eqz v7, :cond_16

    .line 360
    check-cast v0, [Ljava/lang/Integer;

    .line 361
    array-length v7, v0

    new-array v7, v7, [I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 362
    :goto_11
    :try_start_1d
    array-length v11, v0

    if-ge v12, v11, :cond_15

    .line 363
    aget-object v11, v0, v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v7, v12
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_15
    move-object/from16 v18, v7

    goto :goto_13

    :catchall_b
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_12

    :catchall_c
    move-exception v0

    .line 364
    :goto_12
    :try_start_1e
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_16
    :goto_13
    move-object/from16 v0, v18

    :goto_14
    if-eqz v0, :cond_17

    .line 365
    array-length v7, v0

    if-lez v7, :cond_17

    .line 366
    invoke-static {v0}, Lcom/byazt/vx/m;->c([I)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "external_vid"

    .line 368
    invoke-virtual {v9, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    const-string v0, "bid_request_ext"

    .line 369
    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 371
    invoke-static/range {p5 .. p5}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 372
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/byazt/yl/ve;

    if-eqz v9, :cond_1b

    .line 373
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 374
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v12

    .line 375
    invoke-virtual {v11, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 377
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/byazt/qe/ve;->tt(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v12

    goto :goto_16

    .line 378
    :cond_18
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v12

    :goto_16
    if-eqz v12, :cond_19

    .line 379
    invoke-virtual {v12}, Lcom/byazt/nbs/c;->tt()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    :cond_19
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v12

    move-object/from16 v13, v19

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "level_tag"

    .line 382
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getLevelTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v12

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v12

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getExchangeRate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getReqId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1a

    const-string v12, "req_id"

    .line 387
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getReqId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    const-string v12, "cpm"

    .line 388
    invoke-virtual {v9}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    :cond_1b
    move-object/from16 v13, v19

    :goto_17
    move-object/from16 v19, v13

    goto/16 :goto_15

    :cond_1c
    const-string v3, "non_server_bidding_results"

    .line 390
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2

    :cond_1d
    move/from16 v14, v17

    goto :goto_1b

    :catch_2
    move-exception v0

    goto :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_18

    :catch_4
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    goto :goto_18

    :catch_5
    move-exception v0

    move-object v1, v7

    move-object v2, v13

    :goto_18
    move/from16 v14, v17

    goto :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v7

    move-object v2, v13

    const/4 v12, 0x0

    :goto_19
    const/4 v14, 0x0

    .line 391
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerBiddingHelper#serverBiddingRequest getParam() error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tt_server_bidding"

    invoke-static {v3, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    const-string v0, "0-param_end"

    move-wide/from16 v3, p11

    .line 392
    invoke-static {v10, v0, v3, v4}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    move/from16 v3, p10

    .line 393
    invoke-direct {v1, v2, v14, v3}, Lcom/byazt/ug/c;->c(Lorg/json/JSONObject;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;ZZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "token_type"

    if-eqz p3, :cond_1

    .line 397
    invoke-static {p1}, Lcom/byazt/vx/eo;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :catch_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 400
    :goto_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :catch_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/byazt/ll/tt;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "app"

    .line 402
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "request_id"

    .line 403
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_sdk_version"

    .line 404
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "plugin_version"

    .line 405
    invoke-static {}, Lcom/byazt/yl/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source_type"

    .line 406
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    invoke-direct {p0}, Lcom/byazt/ug/c;->ve()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/vx/rl;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->d()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "orientation"

    .line 410
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "device"

    .line 411
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ua"

    .line 412
    sget-object v2, Lcom/byazt/yl/tt;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ip"

    .line 413
    invoke-static {}, Lcom/byazt/aas/my;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 415
    invoke-direct {p0, p1}, Lcom/byazt/ug/c;->tt(Lcom/byazt/ll/tt;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "adslots"

    .line 416
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v0, "ts"

    .line 418
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, ""

    .line 419
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 420
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p1, "req_sign"

    .line 421
    invoke-static {v0}, Lcom/byazt/vx/sl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 227
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private c(ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V
    .locals 4

    if-eqz p4, :cond_0

    const-string p4, "v4Enc_exchange"

    goto :goto_0

    :cond_0
    const-string p4, "v2Enc_exchange"

    .line 46
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cmsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p4, v1, v2, v3, v0}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;ZJLjava/lang/String;)V

    .line 47
    new-instance p4, Lcom/byazt/pp/c;

    invoke-direct {p4, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c$c;Lcom/byazt/pp/c;)V

    return-void
.end method

.method private c(Lcom/byazt/nbs/sp;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ServerBiddingHelper"

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 131
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cypher"

    const/4 v2, -0x1

    .line 132
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "message"

    .line 133
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ltz p2, :cond_9

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p2, v2, :cond_3

    .line 135
    invoke-static {}, Lcom/byazt/vx/eo;->a()Lcom/byazt/dna/n;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 136
    invoke-interface {p2, v1}, Lcom/byazt/dna/n;->decryptWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v3

    .line 137
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_6

    .line 138
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 139
    :try_start_2
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>> m_meta data 4 error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 141
    invoke-static {v1}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v1, :cond_6

    .line 143
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    move-object v3, v1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 144
    :try_start_4
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>> m_meta data 2 error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 146
    invoke-static {}, Lcom/byazt/vx/tt;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/byazt/vx/c;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v1, :cond_6

    .line 148
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_6
    const-string v1, "m_meta data 1 error: "

    .line 149
    invoke-static {v0, v1, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 150
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz v3, :cond_8

    .line 151
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "request_id"

    .line 152
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/nbs/sp;->ve(Ljava/lang/String;)V

    const-string p2, "server_bidding_extra"

    .line 153
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/nbs/sp;->n(Ljava/lang/String;)V

    const-string p2, "server_request_id"

    .line 154
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/nbs/sp;->uj(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "m_meta..data.string is null "

    .line 155
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p1, "m_meta...data is null"

    .line 156
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p1, "m_meta onResponse error "

    .line 157
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "m_meta onResponse throwable \uff1a"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/ug/c$c;Lcom/byazt/nbs/sp;)V
    .locals 1

    .line 225
    new-instance v0, Lcom/byazt/ug/c$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ug/c$3;-><init>(Lcom/byazt/ug/c;Lcom/byazt/ug/c$c;Lcom/byazt/nbs/sp;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/byazt/ug/c$c;Lcom/byazt/pp/c;)V
    .locals 1

    .line 224
    new-instance v0, Lcom/byazt/ug/c$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ug/c$2;-><init>(Lcom/byazt/ug/c;Lcom/byazt/ug/c$c;Lcom/byazt/pp/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ug/c;ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/ug/c;->c(ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ug/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ug/c$c;ZJ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/byazt/ug/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ug/c$c;ZJ)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 422
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 423
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "width"

    .line 424
    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "height"

    .line 425
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 427
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ug/c$c;ZJ)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const/4 v0, -0x1

    const-string v10, "ServerBiddingHelper"

    if-eqz v2, :cond_9

    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 50
    new-instance v11, Lcom/byazt/nbs/sp;

    invoke-direct {v11}, Lcom/byazt/nbs/sp;-><init>()V

    .line 51
    invoke-virtual {v11, v3}, Lcom/byazt/nbs/sp;->c(Lorg/json/JSONObject;)V

    const-string v0, "request_id"

    .line 52
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/byazt/nbs/sp;->ve(Ljava/lang/String;)V

    const-string v0, "server_bidding_extra"

    .line 53
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/byazt/nbs/sp;->n(Ljava/lang/String;)V

    const-string v0, "server_request_id"

    .line 54
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/byazt/nbs/sp;->uj(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/byazt/nbs/x;

    invoke-direct {v0}, Lcom/byazt/nbs/x;-><init>()V

    const-string v12, "winner"

    .line 56
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "pricing_type"

    const-string v14, "fail_callback"

    const-string v15, "win_callback"

    const-string v5, "app_id"

    move-wide/from16 v16, v8

    const-string v8, "adm"

    const-string v9, "load_price"

    const-string v1, "price"

    const-string v4, "slot_id"

    const-string v3, "name"

    const-string v6, "req_bidding_type"

    if-eqz v12, :cond_0

    .line 57
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->tt(I)V

    .line 58
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->ve(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->uj(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->da(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->n(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->sp(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->a(Ljava/lang/String;)V

    move-object/from16 v19, v10

    const/4 v7, 0x0

    .line 64
    invoke-virtual {v12, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/byazt/nbs/x;->x(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v12, v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/byazt/nbs/x;->i(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 66
    invoke-virtual {v12, v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/byazt/nbs/x;->c(I)V

    .line 67
    invoke-virtual {v11, v0}, Lcom/byazt/nbs/sp;->c(Lcom/byazt/nbs/x;)V

    goto :goto_0

    :cond_0
    move-object/from16 v19, v10

    :goto_0
    const-string v0, "winners"

    .line 68
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 71
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 72
    :try_start_0
    new-instance v0, Lcom/byazt/nbs/x;

    invoke-direct {v0}, Lcom/byazt/nbs/x;-><init>()V

    .line 73
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v20, v7

    .line 74
    :try_start_1
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->tt(I)V

    .line 75
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->ve(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->uj(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->da(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->n(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->sp(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/byazt/nbs/x;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v1

    const/4 v7, 0x0

    .line 81
    :try_start_2
    invoke-virtual {v2, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nbs/x;->x(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nbs/x;->i(Ljava/lang/String;)V

    const-string v1, "m_aid"

    .line 83
    invoke-virtual {v2, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nbs/x;->c(Ljava/lang/String;)V

    const-string v1, "ad_extra"

    .line 84
    invoke-virtual {v2, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nbs/x;->tt(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    .line 85
    :try_start_3
    invoke-virtual {v2, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/nbs/x;->c(I)V

    .line 86
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, v19

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v20, v7

    :goto_2
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 87
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "new invalid_non_server_bidding_results winners parse error: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v7, v20

    goto/16 :goto_1

    :cond_1
    move-object/from16 v1, v19

    .line 88
    invoke-virtual {v11, v12}, Lcom/byazt/nbs/sp;->c(Ljava/util/List;)V

    goto :goto_5

    :cond_2
    move-object/from16 v1, v19

    :goto_5
    const-string v0, "auto_detail"

    move-object/from16 v2, p1

    .line 89
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v5, "est_price"

    .line 90
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/byazt/nbs/sp;->c(Ljava/lang/String;)V

    const-string v5, "est_price_source"

    .line 91
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Lcom/byazt/nbs/sp;->c(I)V

    const-string v5, "bidding_ecpm"

    .line 92
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/byazt/nbs/sp;->tt(Ljava/lang/String;)V

    :cond_3
    const-string v0, "waterfall"

    .line 93
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 94
    new-instance v5, Lcom/byazt/nbs/sp$c;

    invoke-direct {v5}, Lcom/byazt/nbs/sp$c;-><init>()V

    const-string v7, "version"

    .line 95
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/byazt/nbs/sp$c;->c(Ljava/lang/String;)V

    const-string v7, "adn_rit_conf"

    .line 96
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_4

    .line 98
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v9, 0x0

    .line 99
    :goto_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 100
    :try_start_4
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    new-instance v10, Lcom/byazt/nbs/da;

    invoke-direct {v10}, Lcom/byazt/nbs/da;-><init>()V

    const-string v12, "adn_name"

    .line 102
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/byazt/nbs/da;->ve(Ljava/lang/String;)V

    const-string v12, "adn_slot_id"

    .line 103
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/byazt/nbs/da;->n(Ljava/lang/String;)V

    .line 104
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "new waterfallListJson parse error: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 106
    :cond_4
    invoke-virtual {v5, v8}, Lcom/byazt/nbs/sp$c;->c(Ljava/util/List;)V

    .line 107
    invoke-virtual {v11, v5}, Lcom/byazt/nbs/sp;->c(Lcom/byazt/nbs/sp$c;)V

    :cond_5
    const-string v0, "invalid_non_server_bidding_results"

    .line 108
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_7

    .line 110
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v10, 0x0

    .line 111
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 112
    :try_start_5
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    new-instance v7, Lcom/byazt/nbs/a;

    invoke-direct {v7}, Lcom/byazt/nbs/a;-><init>()V

    .line 114
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/byazt/nbs/a;->c(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/byazt/nbs/a;->tt(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/byazt/nbs/a;->c(I)V

    const-string v8, "error_code"

    .line 117
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/byazt/nbs/a;->tt(I)V

    const-string v8, "error_msg"

    .line 118
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/byazt/nbs/a;->ve(Ljava/lang/String;)V

    const-string v8, "level_tag"

    .line 119
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/nbs/a;->uj(Ljava/lang/String;)V

    .line 120
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "new invalid_non_server_bidding_results parse error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 122
    :cond_6
    invoke-virtual {v11, v5}, Lcom/byazt/nbs/sp;->tt(Ljava/util/List;)V

    :cond_7
    const-string v0, "0-parse"

    move-object/from16 v1, p2

    move-wide/from16 v2, p5

    .line 123
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 124
    invoke-direct {v2, v3, v11}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c$c;Lcom/byazt/nbs/sp;)V

    move/from16 v4, p4

    move-wide/from16 v8, v16

    .line 125
    invoke-direct {v2, v4, v8, v9}, Lcom/byazt/ug/c;->c(ZJ)V

    return-void

    :cond_8
    move-object v2, v1

    move-object v3, v4

    move v4, v5

    move-object v1, v10

    const-string v5, "Server Bidding Request onResponse..data.string is null "

    .line 126
    invoke-static {v1, v5}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data.string is null"

    .line 127
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/byazt/ug/c;->c(ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void

    :cond_9
    move-object v2, v1

    move-object v3, v4

    move v4, v5

    move-object v1, v10

    const-string v5, "Server Bidding Request onResponse...data is null"

    .line 128
    invoke-static {v1, v5}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data is null"

    .line 129
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/byazt/ug/c;->c(ILjava/lang/String;Lcom/byazt/ug/c$c;Z)V

    return-void
.end method

.method private c(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "v4Enc_exchange"

    goto :goto_0

    :cond_0
    const-string p1, "v2Enc_exchange"

    :goto_0
    const/4 v0, 0x1

    const-string v1, ""

    .line 45
    invoke-static {p1, v0, p2, p3, v1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;ZJLjava/lang/String;)V

    return-void
.end method

.method private tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 21
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/byazt/px/c;->c(Ljava/lang/String;)Lcom/byazt/id/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/byazt/id/c;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 24
    :cond_2
    invoke-interface {p1}, Lcom/byazt/ly/uj;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GDT SDK \u521d\u59cb\u5316\u5931\u8d25\u3002\u3002 e="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK_SDK_Init"

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private tt()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->nu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/qe/ve;->nu()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private tt(Lcom/byazt/ll/tt;)Lorg/json/JSONObject;
    .locals 6

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    const-string v2, "id"

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adtype"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "pos"

    .line 8
    invoke-static {v1}, Lcom/byazt/ug/c;->c(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    sget v2, Lcom/byazt/omf/p;->uj:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1d4c

    const-string v4, "accepted_size"

    if-ge v2, v3, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->qy()I

    move-result v2

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gu()I

    move-result v3

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/byazt/ug/c;->c(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->u()F

    move-result v3

    invoke-static {v2, v3}, Lcom/byazt/pp/n;->c(Landroid/content/Context;F)I

    move-result v2

    .line 12
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->yp()F

    move-result v5

    invoke-static {v3, v5}, Lcom/byazt/pp/n;->c(Landroid/content/Context;F)I

    move-result v3

    .line 13
    invoke-direct {p0, v0, v4, v2, v3}, Lcom/byazt/ug/c;->c(Lorg/json/JSONObject;Ljava/lang/String;II)V

    :goto_0
    const-string v2, "is_support_dpl"

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->zm()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gr()I

    move-result p1

    const/4 v2, 0x1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    const/4 v3, 0x3

    if-le p1, v3, :cond_2

    const/4 p1, 0x3

    :cond_2
    const/4 v3, 0x7

    if-eq v1, v3, :cond_4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, p1

    :cond_4
    :goto_1
    const-string p1, "ad_count"

    .line 16
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private tt(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "package_name"

    .line 17
    invoke-static {}, Lcom/byazt/vx/eo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_code"

    .line 18
    invoke-static {}, Lcom/byazt/vx/eo;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    .line 19
    invoke-static {}, Lcom/byazt/vx/eo;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private ve()Lorg/json/JSONObject;
    .locals 3

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appid"

    .line 7
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/bp/c;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 8
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/bp/c;->my()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-direct {p0, v0}, Lcom/byazt/ug/c;->tt(Lorg/json/JSONObject;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/byazt/ug/c;->ve(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private ve(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/vx/a;->c(Landroid/content/Context;)Lcom/byazt/vx/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "latitude"

    .line 3
    iget v3, v0, Lcom/byazt/vx/n;->c:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    .line 4
    iget v0, v0, Lcom/byazt/vx/n;->tt:F

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "geo"

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/nbs/tt;IZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/db/c;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;",
            "Lcom/byazt/nbs/tt;",
            "IZ",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 230
    invoke-direct/range {v1 .. v13}, Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;Lcom/byazt/nbs/tt;IZLorg/json/JSONObject;ZJ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 231
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 233
    :goto_0
    invoke-static {}, Lcom/byazt/vx/eo;->a()Lcom/byazt/dna/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-interface {v0, v2}, Lcom/byazt/dna/n;->encryptBody(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ug/c$c;)V
    .locals 9

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ServerBiddingHelper"

    if-nez v0, :cond_4

    .line 203
    :try_start_0
    new-instance v0, Lcom/byazt/nbs/sp;

    invoke-direct {v0}, Lcom/byazt/nbs/sp;-><init>()V

    .line 204
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    .line 205
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v4, "m_meta"

    .line 206
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 209
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v5, v6, :cond_1

    .line 210
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 211
    invoke-direct {p0, v6}, Lcom/byazt/ug/c;->c(Lorg/json/JSONObject;)Lcom/byazt/nbs/x;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 213
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "new invalid_non_server_bidding_results winners parse error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0, v4}, Lcom/byazt/nbs/sp;->c(Ljava/util/List;)V

    .line 215
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/byazt/ug/c;->c(Lcom/byazt/nbs/sp;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p2, v0}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c$c;Lcom/byazt/nbs/sp;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Server Bidding onResponse throwable \uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 221
    :cond_3
    new-instance v0, Lcom/byazt/pp/c;

    invoke-direct {v0, v1, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c$c;Lcom/byazt/pp/c;)V

    return-void

    :cond_4
    const-string p1, "Server Bidding Request onResponse...response is invalid"

    .line 222
    invoke-static {v2, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance p1, Lcom/byazt/pp/c;

    const-string v0, "response is invalid"

    invoke-direct {p1, v1, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c$c;Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/pl/ve;Lcom/byazt/ug/c$c;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/db/c;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/byazt/pl/ve;",
            "Lcom/byazt/ug/c$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 17
    iget-object v3, v0, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    .line 18
    iget-object v4, v0, Lcom/byazt/pl/ve;->tt:Ljava/util/List;

    .line 19
    iget-object v5, v0, Lcom/byazt/pl/ve;->ve:Ljava/util/List;

    .line 20
    iget-object v6, v0, Lcom/byazt/pl/ve;->uj:Lcom/byazt/nbs/tt;

    .line 21
    iget v7, v0, Lcom/byazt/pl/ve;->n:I

    .line 22
    iget-boolean v8, v0, Lcom/byazt/pl/ve;->a:Z

    .line 23
    iget-wide v13, v0, Lcom/byazt/pl/ve;->sp:J

    .line 24
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-static {}, Lcom/byazt/yp/tt;->c()Lcom/byazt/yp/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yp/tt;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->tt()Lcom/byazt/va/n;

    move-result-object v11

    .line 26
    invoke-static {}, Lcom/byazt/bp/ve;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->x()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-Tt-Env"

    .line 29
    invoke-virtual {v11, v1, v0}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-use-ppe"

    const-string v1, "1"

    .line 30
    invoke-virtual {v11, v0, v1}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "User-Agent"

    .line 31
    sget-object v1, Lcom/byazt/yl/tt;->c:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->sp()Z

    move-result v0

    const/4 v12, 0x1

    xor-int/lit8 v16, v0, 0x1

    const-string v10, "0-encrypt"

    if-eqz v16, :cond_2

    const-string v0, "x-pglcypher"

    const-string v1, "4"

    .line 33
    invoke-virtual {v11, v0, v1}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v15

    move-object/from16 v18, v10

    move/from16 v10, v17

    move-object/from16 p3, v15

    move-object v15, v11

    move-wide v11, v13

    .line 34
    invoke-direct/range {v0 .. v12}, Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;Lcom/byazt/nbs/tt;IZLorg/json/JSONObject;ZJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream"

    .line 35
    invoke-static {v0}, Lcom/byazt/vx/eo;->tt(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Lcom/byazt/va/n;->c(Ljava/lang/String;[B)V

    move-object/from16 v11, p3

    move-object/from16 v12, v18

    .line 36
    invoke-static {v11, v12, v13, v14}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v0

    iget-object v0, v0, Lcom/byazt/gqp/z;->n:[B

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lcom/byazt/bp/ve;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v1

    iget-object v1, v1, Lcom/byazt/gqp/z;->n:[B

    const/4 v10, 0x1

    invoke-static {v0, v1, v10}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    move-object v1, v15

    move-object v15, v11

    goto :goto_0

    :cond_2
    move-object v12, v10

    const/4 v10, 0x1

    move-object/from16 v20, v15

    move-object v15, v11

    move-object/from16 v11, v20

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v11

    move/from16 v10, v17

    move-object/from16 v19, v12

    move-object/from16 v17, v15

    move-object v15, v11

    move-wide v11, v13

    .line 39
    invoke-direct/range {v0 .. v12}, Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;Lcom/byazt/nbs/tt;IZLorg/json/JSONObject;ZJ)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    .line 40
    invoke-static {v15, v1, v13, v14}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    move-object/from16 v1, v17

    .line 41
    invoke-virtual {v1, v0}, Lcom/byazt/va/n;->ve(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v0

    iget-object v0, v0, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 43
    invoke-static {}, Lcom/byazt/bp/ve;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/byazt/va/n;->n()Lcom/byazt/gqp/z;

    move-result-object v2

    iget-object v2, v2, Lcom/byazt/gqp/z;->uj:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/byazt/vx/eo;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 44
    :cond_3
    :goto_0
    new-instance v0, Lcom/byazt/ug/c$1;

    move-object v9, v0

    move-object/from16 v10, p0

    move-object v11, v15

    move-wide v12, v13

    move-object/from16 v14, p4

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/byazt/ug/c$1;-><init>(Lcom/byazt/ug/c;Lorg/json/JSONObject;JLcom/byazt/ug/c$c;Z)V

    invoke-virtual {v1, v0}, Lcom/byazt/va/n;->c(Lcom/byazt/mh/c;)V

    return-void
.end method
