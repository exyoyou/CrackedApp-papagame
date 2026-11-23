.class public Lcom/byazt/tw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x45,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/tw/c;


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

.method public static c()Lcom/byazt/tw/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/tw/c;->c:Lcom/byazt/tw/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/tw/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/tw/c;->c:Lcom/byazt/tw/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/tw/c;

    invoke-direct {v1}, Lcom/byazt/tw/c;-><init>()V

    sput-object v1, Lcom/byazt/tw/c;->c:Lcom/byazt/tw/c;

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
    sget-object v0, Lcom/byazt/tw/c;->c:Lcom/byazt/tw/c;

    return-object v0
.end method

.method private c(Lcom/byazt/yl/ve;)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getExtraMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "creative_id"

    .line 158
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 159
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_1
    return-object v0
.end method

.method private static c(Lcom/byazt/ng/uj;)V
    .locals 2

    const-string v0, "block_pacing"

    const-string v1, "-1"

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    const-string v0, "waterfall_show_rule_id"

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    const-string v0, "block_show_count"

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    return-void
.end method

.method private static tt(Lcom/byazt/ng/uj;)V
    .locals 2

    .line 1
    const-string v0, "block_pacing"

    .line 2
    .line 3
    const-string v1, "-1"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 6
    .line 7
    .line 8
    const-string v0, "rit_adn_show_rule_id"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 11
    .line 12
    .line 13
    const-string v0, "block_show_count"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;I)V
    .locals 1

    const-string v0, "get_config_error"

    .line 210
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p3}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    .line 212
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 213
    invoke-static {p1, p2, v0, v0, p3}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 214
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/pl/tt;I)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "return_bidding_result"

    .line 264
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    iget-wide v1, p3, Lcom/byazt/pl/tt;->sp:J

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object v0

    iget v1, p3, Lcom/byazt/pl/tt;->a:I

    .line 266
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->setResult(I)Lcom/byazt/ng/uj;

    move-result-object v0

    iget-object v1, p3, Lcom/byazt/pl/tt;->x:Lcom/byazt/pp/c;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/byazt/pp/c;->c:I

    .line 267
    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v0

    iget-object v1, p3, Lcom/byazt/pl/tt;->x:Lcom/byazt/pp/c;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 268
    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    const/4 v1, 0x2

    .line 269
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(I)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "fill_type"

    .line 270
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string v0, "server_bidding_extra"

    iget-object v1, p3, Lcom/byazt/pl/tt;->uj:Ljava/lang/String;

    .line 271
    invoke-virtual {p4, v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    iget v0, p3, Lcom/byazt/pl/tt;->i:I

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ad_count"

    invoke-virtual {p4, v1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 273
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 274
    iget v0, p3, Lcom/byazt/pl/tt;->da:I

    iget-object v1, p3, Lcom/byazt/pl/tt;->c:Ljava/util/List;

    invoke-static {v0, v1, p4}, Lcom/byazt/psp/uj;->c(ILjava/util/List;Ljava/util/Map;)V

    .line 275
    iget-object p3, p3, Lcom/byazt/pl/tt;->sl:Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string v0, "exchange_time"

    .line 276
    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p3, 0x0

    .line 277
    invoke-static {p1, p2, p3, p3, p4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 278
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V
    .locals 2
    .param p2    # Lcom/byazt/ll/tt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "total_load_fail"

    .line 74
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v1, "server_bidding_extra"

    .line 75
    invoke-virtual {v0, v1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 76
    iget p4, p3, Lcom/byazt/pp/c;->c:I

    const/16 v0, 0x2713

    if-ne p4, v0, :cond_0

    const/16 p3, 0x271a

    .line 77
    invoke-virtual {p1, p3}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string p4, "\u5ef6\u957f\u7011\u5e03\u6d41\u603b\u8d85\u65f6\u65f6\u957f\u6216\u8005\u7f29\u77ed\u5c42\u8d85\u65f6\u5e76\u6dfb\u52a0\u515c\u5e95\u4ee3\u7801\u4f4d"

    .line 78
    invoke-virtual {p3, p4}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 79
    invoke-static {p1}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;)V

    goto/16 :goto_0

    :cond_0
    const v0, 0xc5c65

    if-ne p4, v0, :cond_1

    .line 80
    invoke-virtual {p1, p4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p4

    iget-object p3, p3, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 81
    invoke-virtual {p4, p3}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 82
    invoke-static {p1}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;)V

    goto :goto_0

    .line 83
    :cond_1
    instance-of v0, p3, Lcom/byazt/bnd/ve;

    const-string v1, "waterfall_show_rule_id"

    if-eqz v0, :cond_2

    .line 84
    move-object v0, p3

    check-cast v0, Lcom/byazt/bnd/ve;

    .line 85
    invoke-virtual {p1, p4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p4

    iget-object p3, p3, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 86
    invoke-virtual {p4, p3}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 87
    invoke-virtual {v0}, Lcom/byazt/bnd/ve;->c()Ljava/lang/String;

    move-result-object p3

    const-string p4, "block_pacing"

    invoke-virtual {p1, p4, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 88
    invoke-virtual {v0}, Lcom/byazt/bnd/ve;->tt()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    goto :goto_0

    .line 89
    :cond_2
    instance-of v0, p3, Lcom/byazt/bnd/tt;

    if-eqz v0, :cond_3

    .line 90
    move-object v0, p3

    check-cast v0, Lcom/byazt/bnd/tt;

    .line 91
    invoke-virtual {p1, p4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p4

    iget-object p3, p3, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 92
    invoke-virtual {p4, p3}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 93
    invoke-virtual {v0}, Lcom/byazt/bnd/tt;->c()Ljava/lang/String;

    move-result-object p3

    const-string p4, "block_show_count"

    invoke-virtual {p1, p4, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 94
    invoke-virtual {v0}, Lcom/byazt/bnd/tt;->tt()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    goto :goto_0

    .line 95
    :cond_3
    instance-of v0, p3, Lcom/byazt/bnd/c;

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p1, p4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p4

    iget-object p3, p3, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 97
    invoke-virtual {p4, p3}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 98
    invoke-static {p1}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;)V

    goto :goto_0

    :cond_4
    const/16 p3, 0x2766

    .line 99
    invoke-virtual {p1, p3}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p3

    const-string p4, "Ad load fail all loadsorts! "

    .line 100
    invoke-virtual {p3, p4}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 101
    invoke-static {p1}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;)V

    .line 102
    :goto_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_5

    .line 103
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->i()Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_5

    const-string v0, "behavior"

    .line 104
    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p2, :cond_6

    .line 105
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {p2}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6

    .line 106
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_6
    if-eqz p2, :cond_7

    .line 107
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gr()I

    move-result p4

    goto :goto_1

    :cond_7
    const/4 p4, 0x0

    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "ad_count"

    invoke-virtual {p1, v0, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    const/4 p4, 0x0

    .line 108
    invoke-static {p1, p2, p4, p4, p3}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 109
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;J)V
    .locals 1

    const-string v0, "mediation_video_cached"

    .line 299
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p4, p5}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    .line 301
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const/4 p5, 0x0

    .line 302
    invoke-static {p1, p2, p5, p3, p4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 303
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;JIIILjava/lang/String;IILcom/byazt/nbs/tt;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const-string p9, "%.2f"

    const-string v0, "mediation_request_end"

    .line 54
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p4, p5}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string p5, "ad_count"

    .line 56
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    invoke-virtual {p4, p5, p10}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string p5, "reason"

    .line 57
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    invoke-virtual {p4, p5, p10}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    .line 58
    invoke-virtual {p4, p8}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    .line 59
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const/4 p5, 0x0

    .line 60
    invoke-static {p1, p2, p5, p3, p4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    const-string p3, "requested_adn_count"

    .line 61
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "requested_level_count"

    .line 62
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p13, :cond_0

    const-string p3, "auto_detail"

    .line 63
    invoke-interface {p4, p3, p13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p14, :cond_1

    const-string p3, "req_time"

    .line 64
    invoke-interface {p4, p3, p14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p12, :cond_2

    .line 65
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "layer_time_rate"

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p6

    const/4 p7, 0x1

    new-array p8, p7, [Ljava/lang/Object;

    invoke-virtual {p12}, Lcom/byazt/nbs/tt;->n()D

    move-result-wide p10

    invoke-static {p10, p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p10

    const/4 p11, 0x0

    aput-object p10, p8, p11

    invoke-static {p6, p9, p8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "req_interval"

    .line 67
    invoke-virtual {p12}, Lcom/byazt/nbs/tt;->sp()J

    move-result-wide p13

    invoke-static {p13, p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "total_time_rate"

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p6

    new-array p7, p7, [Ljava/lang/Object;

    invoke-virtual {p12}, Lcom/byazt/nbs/tt;->a()D

    move-result-wide p12

    invoke-static {p12, p13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p8

    aput-object p8, p7, p11

    invoke-static {p6, p9, p7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "preload_req"

    .line 69
    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 70
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 71
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->i()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "behavior"

    .line 72
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_3
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;)V
    .locals 1

    const-string v0, "media_cache_success"

    .line 295
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    invoke-static {p1, p2, p4, p3, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 298
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ng/uj;",
            "Lcom/byazt/ll/tt;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 p3, 0x0

    if-lez p6, :cond_0

    .line 7
    invoke-static {p6}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    const/4 p6, 0x0

    :goto_0
    const/4 v1, 0x3

    if-eqz p6, :cond_2

    if-eqz p4, :cond_1

    const/4 p4, 0x2

    goto :goto_1

    :cond_1
    const/4 p4, 0x3

    goto :goto_1

    :cond_2
    xor-int/lit8 p4, p4, 0x1

    :goto_1
    const-string v2, "mediation_request"

    .line 8
    invoke-virtual {p1, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v2

    const-string v3, "server_bidding_extra"

    .line 9
    invoke-virtual {v2, v3, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p5

    const-string v2, "mediation_req_type"

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p5, v2, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gr()I

    move-result p3

    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p5, "ad_count"

    invoke-virtual {p4, p5, p3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p6}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p3

    .line 13
    invoke-virtual {p3, v0}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 14
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p7, :cond_4

    .line 15
    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 16
    invoke-virtual {p3, p7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 17
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->ve()I

    move-result p4

    const/4 p5, 0x5

    if-ne p4, p5, :cond_5

    .line 18
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "parallel_num"

    .line 19
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p6

    invoke-virtual {p6}, Lcom/byazt/ix/uj;->ve()I

    move-result p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "interval"

    .line 20
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p6

    invoke-virtual {p6}, Lcom/byazt/ix/uj;->uj()I

    move-result p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "primerit_list"

    .line 21
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p6

    invoke-virtual {p6}, Lcom/byazt/ix/uj;->tt()Ljava/util/List;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "preload_info"

    .line 22
    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    .line 23
    invoke-static {p4}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    if-eqz p2, :cond_7

    .line 24
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->my()I

    move-result p4

    if-ne p4, v1, :cond_7

    .line 25
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/ii/c;->sl()Z

    move-result p4

    const-string p5, "init_splash_request_duration"

    if-eqz p4, :cond_6

    .line 26
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/ii/c;->i()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 27
    :cond_6
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/ii/c;->t()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 28
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/ii/c;->i()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    if-eqz p2, :cond_8

    .line 29
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-virtual {p2}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_8

    .line 30
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_8
    const-string p4, "csj_plugin_version"

    .line 31
    invoke-static {}, Lcom/byazt/sx/ve;->uj()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x0

    .line 32
    invoke-static {p1, p2, p4, p4, p3}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 33
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "start_bidding_request"

    .line 257
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    const/4 v1, 0x2

    .line 258
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(I)Lcom/byazt/ng/uj;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p2}, Lcom/byazt/ll/tt;->gr()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_count"

    invoke-virtual {v0, v2, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    const-string v1, "exchange_time"

    .line 261
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p3, 0x0

    .line 262
    invoke-static {p1, p2, p3, p3, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 263
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V
    .locals 3

    const-string v0, "adapter_request_fail"

    .line 200
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->a(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    const v2, -0x1869f

    .line 203
    invoke-virtual {v0, v2}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v2, "adapter create fail !"

    .line 204
    invoke-virtual {v0, v2}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    const-string v2, "mediationrit_req_type"

    .line 205
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v2, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string v0, "mediationrit_req_type_src"

    .line 206
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, v0, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 207
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-static {p1, p3, p2, v1, p4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 209
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;)V
    .locals 1

    const-string v0, "get_bidding_adm_to_adn"

    .line 279
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p4}, Lcom/byazt/ng/uj;->a(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 281
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 282
    invoke-static {p1, p3, p2, v0, p4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 283
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZLjava/lang/String;J)V
    .locals 8

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p10

    .line 110
    instance-of v4, v3, Lcom/byazt/bnd/ve;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/byazt/bnd/tt;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/byazt/bnd/c;

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    iget v4, v3, Lcom/byazt/pp/c;->c:I

    invoke-virtual {p1, v4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v4

    iget-object v3, v3, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 112
    invoke-virtual {v4, v3}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    :cond_1
    const/4 v3, 0x1

    xor-int/lit8 v4, p5, 0x1

    const-string v5, "media_request"

    .line 113
    invoke-virtual {p1, v5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v5

    move-object v6, p4

    .line 114
    invoke-virtual {v5, p4}, Lcom/byazt/ng/uj;->a(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v5

    move-wide/from16 v6, p16

    .line 115
    invoke-virtual {v5, v6, v7}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gr()I

    move-result v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ad_count"

    invoke-virtual {v5, v7, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v5

    const-string v6, "adn_count"

    .line 117
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v5

    const-string v6, "mediationrit_req_type"

    .line 118
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v5

    const-string v6, "mediationrit_req_type_src"

    .line 119
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v5

    const-string v6, "mediation_req_type"

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    const-string v5, "media_req_type"

    .line 121
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "timeout_req"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "is_callback"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->tk()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "origin_link_id"

    move-object/from16 v6, p15

    .line 126
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->pf()Lcom/byazt/nbs/tt;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    const-string v5, "pangle"

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->u()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 128
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->pf()Lcom/byazt/nbs/tt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/nbs/tt;->uj()I

    move-result v5

    if-ne v5, v3, :cond_4

    const-string v3, "support_render_control"

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-wide/16 v5, -0x1

    cmp-long v3, p11, v5

    if-eqz v3, :cond_5

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v5, p11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "start_time"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v3, 0x0

    .line 131
    invoke-static {p1, p3, p2, v3, v4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 132
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object/from16 v3, p13

    .line 160
    instance-of v4, v1, Lcom/byazt/bnd/ve;

    const-string v5, "adn_rit_show_rule_id"

    if-eqz v4, :cond_0

    .line 161
    move-object v4, v1

    check-cast v4, Lcom/byazt/bnd/ve;

    .line 162
    iget v6, v1, Lcom/byazt/pp/c;->c:I

    invoke-virtual {p1, v6}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v6

    iget-object v7, v1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 163
    invoke-virtual {v6, v7}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 164
    invoke-virtual {v4}, Lcom/byazt/bnd/ve;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "block_pacing"

    invoke-virtual {p1, v7, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 165
    invoke-virtual {v4}, Lcom/byazt/bnd/ve;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    goto :goto_2

    .line 166
    :cond_0
    instance-of v4, v1, Lcom/byazt/bnd/tt;

    if-eqz v4, :cond_1

    .line 167
    move-object v4, v1

    check-cast v4, Lcom/byazt/bnd/tt;

    .line 168
    iget v6, v1, Lcom/byazt/pp/c;->c:I

    invoke-virtual {p1, v6}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v6

    iget-object v7, v1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    .line 169
    invoke-virtual {v6, v7}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 170
    invoke-virtual {v4}, Lcom/byazt/bnd/tt;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "block_show_count"

    invoke-virtual {p1, v7, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 171
    invoke-virtual {v4}, Lcom/byazt/bnd/tt;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    goto :goto_2

    .line 172
    :cond_1
    instance-of v4, v1, Lcom/byazt/bnd/c;

    if-eqz v4, :cond_2

    .line 173
    iget v4, v1, Lcom/byazt/pp/c;->c:I

    invoke-virtual {p1, v4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    .line 174
    iget-object v4, v1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 175
    invoke-static {p1}, Lcom/byazt/tw/c;->tt(Lcom/byazt/ng/uj;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 176
    iget v4, v1, Lcom/byazt/pp/c;->ve:I

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {p1, v4}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v4

    if-eqz v1, :cond_4

    iget-object v5, v1, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "unknown error"

    .line 177
    :goto_1
    invoke-virtual {v4, v5}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 178
    invoke-static {p1}, Lcom/byazt/tw/c;->tt(Lcom/byazt/ng/uj;)V

    :goto_2
    const-string v4, "media_fill_fail"

    .line 179
    invoke-virtual {p1, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v4

    move-wide/from16 v5, p9

    .line 180
    invoke-virtual {v4, v5, v6}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object v4

    move-object/from16 v5, p8

    .line 181
    invoke-virtual {v4, v5}, Lcom/byazt/ng/uj;->a(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v4

    const-string v5, "adn_count"

    .line 182
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    const-string v5, "adn_preload"

    const/4 v6, 0x0

    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    const-string v5, "mediationrit_req_type"

    .line 184
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v4

    const-string v5, "mediationrit_req_type_src"

    .line 185
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 186
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "is_dex_adapter"

    .line 187
    invoke-virtual {p2, v5}, Lcom/byazt/pp/c;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 188
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-wide/16 v7, 0x0

    cmp-long v1, p14, v7

    if-ltz v1, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-eqz v2, :cond_7

    .line 189
    invoke-virtual {p4}, Lcom/byazt/nbs/da;->sv()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    invoke-static {}, Lcom/byazt/vx/nu;->ve()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v5, "custom_adn_sample_ratio"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "custom_adn_sample_ratio_result"

    .line 191
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_7

    const-string v1, "custom_adn_rec_time"

    .line 192
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v1, 0x0

    move-object v5, p3

    .line 193
    invoke-static {p1, p3, p4, v1, v4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 194
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v1, p11

    .line 195
    invoke-virtual {p1, v1}, Lcom/byazt/ng/uj;->i(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 196
    :cond_8
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "level_tag"

    move-object/from16 v2, p12

    .line 197
    invoke-virtual {p1, v1, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_9
    if-eqz v3, :cond_a

    const-string v1, "sub_adn_name"

    .line 198
    invoke-virtual {p1, v1, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 199
    :cond_a
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V
    .locals 9

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p11

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->isAdnPreload()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "media_fill"

    .line 134
    invoke-virtual {p1, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v6

    move-wide v7, p5

    .line 135
    invoke-virtual {v6, p5, p6}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object v6

    move v7, p3

    .line 136
    invoke-virtual {v6, p3}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object v6

    move-object v7, p4

    .line 137
    invoke-virtual {v6, p4}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v6

    const-string v7, "adn_count"

    .line 138
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v6

    const-string v7, "adn_preload"

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object v5

    const-string v6, "ad_count"

    .line 140
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    const-string v5, "fill_type"

    .line 141
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    if-eqz v2, :cond_1

    const-string v5, "sub_adn_name"

    .line 142
    invoke-virtual {p1, v5, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 143
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v7, p12, v5

    if-ltz v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    invoke-static {}, Lcom/byazt/vx/nu;->ve()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "custom_adn_sample_ratio"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "custom_adn_sample_ratio_result"

    .line 146
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_3

    const-string v3, "custom_adn_rec_time"

    .line 147
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-wide/16 v5, -0x1

    cmp-long v3, p14, v5

    if-eqz v3, :cond_4

    const-string v3, "end_time"

    .line 148
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v3, 0x5

    if-eqz v1, :cond_5

    const-string v5, "pangle"

    .line 149
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getSupportRender()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 150
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getSupportRender()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "if_to_express"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_5
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/qe/ve;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 152
    invoke-static {}, Lcom/byazt/ng/x;->c()Lcom/byazt/ng/x;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/byazt/ng/x;->c(Lcom/byazt/yl/ve;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ex_info"

    invoke-virtual {p1, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_6
    move-object v3, p0

    .line 153
    invoke-direct {p0, p2}, Lcom/byazt/tw/c;->c(Lcom/byazt/yl/ve;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 154
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cid"

    invoke-virtual {p1, v5, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v5, p7

    .line 155
    invoke-static {p1, v5, v4, p2, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 156
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 12

    .line 305
    new-instance v11, Lcom/byazt/tw/c$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-wide/from16 v8, p6

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/byazt/tw/c$2;-><init>(Lcom/byazt/tw/c;Lcom/byazt/yl/ve;Lcom/byazt/ng/uj;IZLjava/lang/String;Ljava/lang/String;JLcom/byazt/ll/tt;)V

    invoke-static {v11}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;ZI)V
    .locals 13

    .line 304
    new-instance v12, Lcom/byazt/tw/c$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move/from16 v8, p10

    move-object/from16 v9, p3

    move-wide/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/byazt/tw/c$1;-><init>(Lcom/byazt/tw/c;Lcom/byazt/yl/ve;Lcom/byazt/ng/uj;IZLjava/lang/String;Ljava/lang/String;ILcom/byazt/ll/tt;J)V

    invoke-static {v12}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V
    .locals 1

    const-string v0, "bidding_adm_cache"

    .line 291
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-static {p1, p3, p4, p2, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 294
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;J)V
    .locals 1

    const-string v0, "bidding_adm_load"

    .line 284
    invoke-virtual {p1, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p5, p6}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    .line 286
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 287
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p6

    invoke-virtual {p6}, Lcom/byazt/qe/ve;->b()Z

    move-result p6

    if-eqz p6, :cond_0

    if-eqz p2, :cond_0

    const/4 p6, 0x5

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v0

    if-ne p6, v0, :cond_0

    .line 288
    invoke-static {}, Lcom/byazt/ng/x;->c()Lcom/byazt/ng/x;

    move-result-object p6

    invoke-virtual {p6, p2}, Lcom/byazt/ng/x;->c(Lcom/byazt/yl/ve;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "ex_info"

    invoke-virtual {p1, v0, p6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 289
    :cond_0
    invoke-static {p1, p3, p4, p2, p5}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 290
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p5}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V
    .locals 0

    const-string p4, "mediation_fill"

    .line 34
    invoke-virtual {p1, p4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    move-result-object p4

    .line 35
    invoke-virtual {p4, p5, p6}, Lcom/byazt/ng/uj;->c(J)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string p5, "server_bidding_extra"

    .line 36
    invoke-virtual {p4, p5, p7}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    xor-int/lit8 p5, p8, 0x1

    .line 37
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "mediation_req_type"

    invoke-virtual {p4, p6, p5}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string p5, "ad_count"

    .line 38
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    move-result-object p4

    const/4 p5, 0x0

    .line 39
    invoke-virtual {p4, p5}, Lcom/byazt/ng/uj;->tt(I)Lcom/byazt/ng/uj;

    move-result-object p4

    const-string p5, ""

    .line 40
    invoke-virtual {p4, p5}, Lcom/byazt/ng/uj;->sl(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 41
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->my()I

    move-result p5

    const/4 p6, 0x3

    if-ne p5, p6, :cond_1

    .line 43
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p5

    invoke-virtual {p5}, Lcom/byazt/ii/c;->sl()Z

    move-result p5

    const-string p6, "init_splash_fill_duration"

    if-eqz p5, :cond_0

    .line 44
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p5

    sget-object p7, Lcom/byazt/ng/c;->ve:Ljava/lang/String;

    invoke-virtual {p5, p7}, Lcom/byazt/ii/c;->c(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p5

    invoke-virtual {p5}, Lcom/byazt/ii/c;->da()J

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p5

    invoke-virtual {p5}, Lcom/byazt/ii/c;->t()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 47
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object p5

    invoke-virtual {p5}, Lcom/byazt/ii/c;->da()J

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 p5, 0x0

    .line 48
    invoke-static {p1, p3, p5, p2, p4}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 49
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p5, "timeout_req"

    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p5, "is_callback"

    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 51
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 52
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->nb()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    :cond_2
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ng/uj;",
            "Lcom/byazt/yl/ve;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "bidding_win_event"

    .line 215
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 216
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 217
    invoke-static {v0, v4, v2, v3, v1}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 218
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 219
    invoke-static/range {p4 .. p4}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v3

    const-string v4, "pricing_type"

    const-string v5, "loss_callback"

    const-string v6, "win_callback"

    const-string v7, "ad_extra"

    const-string v8, "win_state"

    const-string v9, "req_bidding_type"

    const-string v10, "m_aid"

    const-string v11, "rit_cpm"

    const-string v12, "exchange_rate"

    const-string v13, "show_sort"

    const-string v14, "load_sort"

    const-string v15, "adn_name"

    const-string v0, "mediation_rit"

    if-nez v3, :cond_2

    .line 220
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/byazt/yl/ve;

    if-eqz v16, :cond_1

    move-object/from16 p2, v3

    .line 221
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v1

    .line 222
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v15, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v14, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v13, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getExchangeRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getAdExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getWinCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getFailCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/yl/ve;->getPricingType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object/from16 v17, v1

    :catch_1
    nop

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    move-object/from16 p2, v3

    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_2
    move-object/from16 v17, v1

    .line 237
    invoke-static/range {p5 .. p5}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_4

    move-object/from16 p2, v1

    .line 239
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 p3, v2

    .line 240
    :try_start_3
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getExchangeRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getWinCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getFailCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v2, :cond_3

    .line 253
    :try_start_4
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getPricingType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    nop

    move-object/from16 v2, p3

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v2, p3

    .line 254
    :try_start_5
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_3
    move-object/from16 v2, p3

    :catch_4
    nop

    goto :goto_4

    :cond_4
    move-object/from16 p2, v1

    :goto_4
    move-object/from16 v1, p2

    goto/16 :goto_2

    :cond_5
    const-string v0, "others"

    move-object/from16 v1, v17

    .line 255
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v0, v2, v1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    return-void
.end method
