.class public Lcom/byazt/nbs/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74f,
        0xd
    }
.end annotation


# instance fields
.field public a:J

.field public aw:Lorg/json/JSONObject;

.field public b:I

.field public bm:D

.field public bx:Lcom/byazt/hr/sp;

.field public c:Ljava/lang/String;

.field public cu:I

.field public d:D

.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;>;"
        }
    .end annotation
.end field

.field public eo:I

.field public gr:Ljava/lang/String;

.field public gt:Ljava/lang/String;

.field public gu:I

.field public h:I

.field public hd:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field

.field public ic:I

.field public kp:J

.field public l:J

.field public lo:I

.field public lr:D

.field public lt:I

.field public m:I

.field public md:Z

.field public my:Ljava/lang/String;

.field public n:J

.field public nb:I

.field public nu:J

.field public or:I

.field public p:Z

.field public pf:Lcom/byazt/hr/i;

.field public pu:I

.field public q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public qp:I

.field public qy:I

.field public rh:I

.field public rl:I

.field public sl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;>;"
        }
    .end annotation
.end field

.field public sp:J

.field public sv:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public tk:I

.field public to:I

.field public tt:I

.field public u:D

.field public uj:J

.field public ve:I

.field public x:Ljava/lang/String;

.field public yp:D

.field public yv:J

.field public z:I

.field public zb:I

.field public zm:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    .line 31
    .line 32
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/byazt/nbs/tt;->u:D

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/byazt/nbs/tt;->yp:D

    .line 37
    .line 38
    const/16 v0, 0x3e8

    .line 39
    .line 40
    iput v0, p0, Lcom/byazt/nbs/tt;->hd:I

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/byazt/nbs/tt;->pu:I

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    iput v1, p0, Lcom/byazt/nbs/tt;->lt:I

    .line 47
    .line 48
    iput v0, p0, Lcom/byazt/nbs/tt;->to:I

    .line 49
    .line 50
    iput v0, p0, Lcom/byazt/nbs/tt;->tk:I

    .line 51
    .line 52
    const-wide/16 v1, 0x0

    .line 53
    .line 54
    iput-wide v1, p0, Lcom/byazt/nbs/tt;->kp:J

    .line 55
    .line 56
    iput v0, p0, Lcom/byazt/nbs/tt;->b:I

    .line 57
    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/byazt/nbs/tt;->q:Ljava/util/Map;

    .line 64
    .line 65
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Z)Lcom/byazt/nbs/tt;
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "adn_name"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 26
    new-instance v3, Lcom/byazt/nbs/tt;

    invoke-direct {v3}, Lcom/byazt/nbs/tt;-><init>()V

    .line 27
    invoke-virtual {v3, v0}, Lcom/byazt/nbs/tt;->c(Lorg/json/JSONObject;)V

    const-string v4, "bid_floor"

    const-wide/16 v5, 0x0

    .line 28
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/nbs/tt;->ve(D)V

    const-string v4, "rit_id"

    .line 29
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->uj(Ljava/lang/String;)V

    const-string v4, "version"

    .line 30
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->ve(Ljava/lang/String;)V

    const-string v4, "waterfall_id"

    const-wide/16 v5, -0x1

    .line 31
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/nbs/tt;->uj(J)V

    const-string v4, "rit_type"

    .line 32
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->m(I)V

    const-string v4, "look_type"

    const/4 v5, 0x1

    .line 33
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->nu(I)V

    .line 34
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->pf()I

    move-result v4

    invoke-static {v4}, Lcom/byazt/nbs/tt;->gu(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v4, "time_min"

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/byazt/nbs/tt;->n(J)V

    const-string v4, "layer_time_out"

    const-wide/16 v6, 0x7d0

    .line 35
    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/byazt/nbs/tt;->a(J)V

    .line 36
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->pf()I

    move-result v4

    invoke-static {v4}, Lcom/byazt/nbs/tt;->gr(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v4, "total_time_out"

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/byazt/nbs/tt;->sp(J)V

    const-string v4, "multilevel_time_out"

    .line 37
    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/byazt/nbs/tt;->ve(J)V

    const-string v4, "cache_time_out"

    const-wide/16 v6, 0xbb8

    .line 38
    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/byazt/nbs/tt;->x(J)V

    const-string v4, "req_type"

    const/4 v6, 0x0

    .line 39
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->yp(I)V

    .line 40
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v4

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->gr()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;I)V

    const-string v4, "segment_id"

    .line 41
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->z(I)V

    const-string v4, "segment_version"

    .line 42
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->tt(Ljava/lang/String;)V

    const-string v4, "waterfall_extra"

    .line 43
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->c(Ljava/lang/String;)V

    const-string v4, "multilevel_after_p"

    .line 44
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->u(I)V

    const-string v4, "refresh_time"

    .line 45
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/nbs/tt;->t(I)V

    const-string v4, "is_refresh"

    .line 46
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->x(I)V

    const-string v7, "refresh_num"

    const/4 v8, 0x2

    .line 47
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->i(I)V

    const-string v7, "parallel_type"

    .line 48
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->gt(I)V

    const-string v7, "is_adprime"

    .line 49
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->a(I)V

    const-string v7, "req_parallel_num"

    .line 50
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->rl(I)V

    const-string v7, "reward_start_time"

    const/16 v9, 0x3a98

    .line 51
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->rh(I)V

    const-string v7, "reward_callback_type"

    .line 52
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->my(I)V

    const-string v7, "req_interval"

    const-wide/16 v9, 0x3e8

    .line 53
    invoke-virtual {v0, v7, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/byazt/nbs/tt;->tt(J)V

    const-string v7, "total_time_rate"

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 54
    invoke-virtual {v0, v7, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/byazt/nbs/tt;->tt(D)V

    const-string v7, "layer_time_rate"

    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 55
    invoke-virtual {v0, v7, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/byazt/nbs/tt;->c(D)V

    const-string v7, "support_render_control"

    .line 56
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->ve(I)V

    const-string v7, "behavior_ttl"

    .line 57
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->qy(I)V

    const-string v7, "save_time"

    .line 58
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/byazt/nbs/tt;->c(J)V

    const-string v7, "ad_count"

    .line 59
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x3

    if-gez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    if-le v7, v9, :cond_1

    const/4 v7, 0x3

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->da(I)V

    const-string v7, "group_type"

    .line 61
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->uj(I)V

    const-string v7, "bidding_time_out"

    const/16 v10, 0x3e8

    .line 62
    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->n(I)V

    const-string v7, "waterfall_abtest"

    .line 63
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v10, "waterfall_ab_version"

    .line 64
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 66
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 67
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 68
    :cond_2
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    :cond_3
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->n(Ljava/lang/String;)V

    :cond_4
    const-string v7, "waterfall_timing_mode"

    .line 70
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 71
    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->sp(I)V

    .line 72
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->u()Z

    move-result v10

    const-string v18, "[]"

    if-eqz v10, :cond_7

    const-string v10, "waterfall_show_pacing_rule"

    .line 73
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v15, "waterfall_show_rules_version"

    if-eqz v10, :cond_5

    .line 74
    new-instance v14, Lcom/byazt/hr/i;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    .line 75
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v16, ""

    const-string v9, "waterfall_show_pacing"

    .line 76
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "waterfall_show_pacing_rule_id"

    .line 77
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v14

    move-object v8, v14

    move-object/from16 v14, v16

    move-object v5, v15

    move v15, v7

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v17}, Lcom/byazt/hr/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3, v8}, Lcom/byazt/nbs/tt;->c(Lcom/byazt/hr/i;)V

    goto :goto_1

    :cond_5
    move-object v5, v15

    :goto_1
    const-string v8, "waterfall_show_freqctl_rules"

    .line 79
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 80
    new-instance v9, Lcom/byazt/hr/sp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    .line 81
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-nez v8, :cond_6

    move-object/from16 v16, v18

    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    :goto_2
    move-object v10, v9

    move v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/byazt/hr/sp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    invoke-virtual {v3, v9}, Lcom/byazt/nbs/tt;->c(Lcom/byazt/hr/sp;)V

    :cond_7
    const-string v5, "is_smaste"

    .line 84
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/byazt/nbs/tt;->tt(I)V

    const-string v5, "fill_strategy"

    .line 85
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/byazt/nbs/tt;->c(I)V

    const-string v5, "adn_rit_conf"

    .line 86
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 87
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_14

    const/4 v8, 0x0

    .line 88
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_14

    .line 89
    :try_start_0
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    new-instance v9, Lcom/byazt/nbs/da;

    invoke-direct {v9}, Lcom/byazt/nbs/da;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/byazt/nbs/da;->ve(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v10

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/byazt/qe/ve;->ve(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "custom_adn_name"

    .line 93
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/byazt/nbs/da;->uj(Ljava/lang/String;)V

    goto :goto_4

    .line 94
    :cond_8
    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->uj(Ljava/lang/String;)V

    .line 95
    :goto_4
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/byazt/nbs/da;->x(Ljava/lang/String;)V

    const-string v10, "adn_slot_id"

    .line 96
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 97
    invoke-virtual {v9, v13}, Lcom/byazt/nbs/da;->n(Ljava/lang/String;)V

    if-nez p1, :cond_9

    .line 98
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 99
    sget-object v10, Lcom/byazt/qv/uj;->tt:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_9
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/byazt/nbs/da;->c(I)V

    const-string v10, "freqctl_timing_mode"

    .line 101
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 102
    invoke-virtual {v9, v10}, Lcom/byazt/nbs/da;->tt(I)V

    .line 103
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->uj()Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v11, :cond_c

    :try_start_1
    const-string v11, "show_pacing_rule"

    .line 104
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v11, :cond_a

    .line 105
    :try_start_2
    new-instance v12, Lcom/byazt/hr/i;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    const-string v25, ""

    const-string v14, "pacing"

    .line 106
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v14, "rule_id"

    .line 107
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v21, v12

    move-object/from16 v23, v13

    move/from16 v26, v10

    invoke-direct/range {v21 .. v28}, Lcom/byazt/hr/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v9, v12}, Lcom/byazt/nbs/da;->c(Lcom/byazt/hr/i;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_a
    :try_start_3
    const-string v11, "show_freqctl_rules"

    .line 109
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 110
    new-instance v15, Lcom/byazt/hr/sp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    const-string v2, "show_freqctl_rules_version"

    .line 111
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v11, :cond_b

    move-object/from16 v17, v18

    goto :goto_5

    .line 112
    :cond_b
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    :goto_5
    move-object v11, v15

    move-object v6, v15

    move-object v15, v2

    move/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/byazt/hr/sp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    invoke-virtual {v9, v6}, Lcom/byazt/nbs/da;->c(Lcom/byazt/hr/sp;)V

    :cond_c
    const-string v2, "req_bidding_type"

    .line 114
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->da(I)V

    const-string v2, "slot_cpm"

    const-string v6, "0"

    .line 115
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->sp(Ljava/lang/String;)V

    const-string v2, "discount"

    .line 116
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->a(Ljava/lang/String;)V

    const-string v2, "exchange_rate"

    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->tt(Ljava/lang/String;)V

    const-string v2, "load_sort"

    .line 118
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->sl(I)V

    const-string v2, "show_sort"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->t(I)V

    const-string v2, "ad_expired_time"

    const v6, 0x1b7740

    .line 120
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->uj(I)V

    .line 121
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v2

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->x()I

    move-result v11

    invoke-virtual {v2, v6, v10, v11}, Lcom/byazt/yt/c;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->x()I

    move-result v11

    invoke-virtual {v2, v6, v10, v11}, Lcom/byazt/yt/c;->c(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "if_is_ready"

    const/4 v6, 0x1

    .line 123
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->x(I)V

    .line 124
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v2

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->t()I

    move-result v11

    invoke-virtual {v2, v6, v10, v11}, Lcom/byazt/yt/c;->tt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->t()I

    move-result v11

    invoke-virtual {v2, v6, v10, v11}, Lcom/byazt/yt/c;->tt(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "if_reuse_ads"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v6, 0x0

    .line 126
    :try_start_4
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->n(I)V

    .line 127
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->i()I

    move-result v11

    invoke-virtual {v2, v6, v10, v11}, Lcom/byazt/hk/c;->ve(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "if_pre_request"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v6, 0x0

    .line 128
    :try_start_6
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->sp(I)V

    .line 129
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->sl()I

    move-result v12

    invoke-virtual {v2, v10, v11, v12}, Lcom/byazt/hk/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->pf()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->i(I)V

    const-string v2, "%1$s%2$sAdapter"

    .line 131
    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->c(Ljava/lang/String;)V

    const-string v2, "origin_type"

    .line 132
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->a(I)V

    const-string v2, "sub_adtype"

    .line 133
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->ve(I)V

    const-string v2, "multilevel_slot_cpm"

    .line 134
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcom/byazt/nbs/tt;->tt(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/byazt/nbs/da;->c(Ljava/util/Map;)V

    .line 136
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->my()I

    move-result v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v10, 0x1

    if-ne v2, v10, :cond_d

    .line 137
    :try_start_7
    invoke-virtual {v3, v10}, Lcom/byazt/nbs/tt;->tt(Z)V

    const/4 v11, 0x2

    :goto_6
    const/4 v12, 0x3

    goto :goto_7

    .line 138
    :cond_d
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->my()I

    move-result v2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_e

    .line 139
    :try_start_8
    invoke-virtual {v3, v10}, Lcom/byazt/nbs/tt;->c(Z)V

    goto :goto_6

    .line 140
    :cond_e
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->my()I

    move-result v2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v12, 0x3

    if-ne v2, v12, :cond_f

    .line 141
    :try_start_9
    invoke-virtual {v3, v10}, Lcom/byazt/nbs/tt;->tt(Z)V

    goto :goto_7

    .line 142
    :cond_f
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->my()I

    move-result v2

    const/16 v13, 0x64

    if-eq v2, v13, :cond_13

    .line 143
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->yv()D

    move-result-wide v13

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpl-double v2, v13, v15

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->yv()D

    move-result-wide v13

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v19

    cmpg-double v2, v13, v19

    if-gez v2, :cond_11

    .line 144
    :cond_10
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/byazt/nbs/tt;->uj(D)V

    .line 145
    :cond_11
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->p()D

    move-result-wide v13

    cmpl-double v2, v13, v15

    if-eqz v2, :cond_12

    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->p()D

    move-result-wide v13

    invoke-virtual {v9}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v15

    cmpl-double v2, v13, v15

    if-lez v2, :cond_13

    .line 146
    :cond_12
    invoke-virtual {v9}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lcom/byazt/nbs/tt;->n(D)V

    :cond_13
    :goto_7
    const-string v2, "customer_adapter_json"

    .line 147
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/byazt/nbs/da;->da(Ljava/lang/String;)V

    .line 148
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_8
    const/4 v10, 0x1

    :goto_9
    const/4 v11, 0x2

    :goto_a
    const/4 v12, 0x3

    .line 149
    :goto_b
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_c
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 150
    :cond_14
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 151
    invoke-virtual {v3}, Lcom/byazt/nbs/tt;->yp()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 152
    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->tt(Ljava/util/List;)V

    goto :goto_d

    .line 153
    :cond_15
    invoke-virtual {v3, v7}, Lcom/byazt/nbs/tt;->c(Ljava/util/List;)V

    :goto_d
    move-object v2, v3

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    :goto_e
    return-object v2
.end method

.method private static gr(I)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x2710

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x927c0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x1388

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static gu(I)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static sp(Ljava/lang/String;)Lcom/byazt/nbs/tt;
    .locals 2

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "AdsenseRitConfig"

    const-string v0, "TMe jsonStr is null or empty"

    .line 5
    invoke-static {p0, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 7
    invoke-static {v0, p0}, Lcom/byazt/nbs/tt;->c(Lorg/json/JSONObject;Z)Lcom/byazt/nbs/tt;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static tt(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 27
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :catch_0
    return-object v0
.end method

.method private uj(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v5, v3

    move v3, v0

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private ve(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->my()I

    move-result v3

    if-nez v3, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->p()I

    move-result v3

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    goto :goto_1

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v5, v3

    move v3, v0

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v2, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v0, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->bm:D

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Lcom/byazt/nbs/da;
    .locals 4

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    .line 7
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->sv:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->n:J

    return-void
.end method

.method public aw()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->zb:I

    .line 2
    .line 3
    return v0
.end method

.method public bx()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->b:I

    return v0
.end method

.method public c(D)V
    .locals 5

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    :cond_0
    move-wide p1, v0

    .line 4
    :cond_1
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->lr:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->b:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->kp:J

    return-void
.end method

.method public c(Lcom/byazt/hr/i;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/nbs/tt;->pf:Lcom/byazt/hr/i;

    return-void
.end method

.method public c(Lcom/byazt/hr/sp;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/nbs/tt;->bx:Lcom/byazt/hr/sp;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/nbs/tt;->gr:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/nbs/tt;->uj(Ljava/util/List;)V

    .line 10
    iput-object p1, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/byazt/nbs/tt;->z:I

    .line 12
    iget-object v1, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 13
    iget-object v1, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v1, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/byazt/nbs/tt;->m:I

    const/16 v1, -0x3e8

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 18
    iget v1, p0, Lcom/byazt/nbs/tt;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/byazt/nbs/tt;->z:I

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    goto :goto_1

    .line 21
    :cond_1
    iget-object v3, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v5, v3

    move v3, v1

    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/byazt/nbs/tt;->aw:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/byazt/nbs/tt;->p:Z

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->my()Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public cu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->rh:I

    .line 2
    .line 3
    return v0
.end method

.method public da()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->hd:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public da(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->qp:I

    return-void
.end method

.method public eo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->my:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->gu:I

    return v0
.end method

.method public gt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->qp:I

    return v0
.end method

.method public gt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->or:I

    return-void
.end method

.method public gu()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->yv:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->nu:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->eo:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->ic:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->lt:I

    return-void
.end method

.method public ic()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public lo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public lr()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public lt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->cu:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :cond_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->pu:I

    return v0
.end method

.method public m(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->tt:I

    return-void
.end method

.method public md()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public my()Lcom/byazt/nbs/tt;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/nbs/tt;

    invoke-direct {v0}, Lcom/byazt/nbs/tt;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/byazt/nbs/tt;->tt:I

    iput v1, v0, Lcom/byazt/nbs/tt;->tt:I

    .line 4
    iget v1, p0, Lcom/byazt/nbs/tt;->ve:I

    iput v1, v0, Lcom/byazt/nbs/tt;->ve:I

    .line 5
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->uj:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->uj:J

    .line 6
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->n:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->n:J

    .line 7
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->a:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->a:J

    .line 8
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->sp:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->sp:J

    .line 9
    iget-object v1, p0, Lcom/byazt/nbs/tt;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->x:Ljava/lang/String;

    .line 10
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->nu:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->nu:J

    .line 11
    iget v1, p0, Lcom/byazt/nbs/tt;->gu:I

    iput v1, v0, Lcom/byazt/nbs/tt;->gu:I

    .line 12
    iget-object v1, p0, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    .line 13
    iget v1, p0, Lcom/byazt/nbs/tt;->rh:I

    iput v1, v0, Lcom/byazt/nbs/tt;->rh:I

    .line 14
    iget-object v1, p0, Lcom/byazt/nbs/tt;->my:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->my:Ljava/lang/String;

    .line 15
    iget v1, p0, Lcom/byazt/nbs/tt;->rl:I

    iput v1, v0, Lcom/byazt/nbs/tt;->rl:I

    .line 16
    iget v1, p0, Lcom/byazt/nbs/tt;->qy:I

    iput v1, v0, Lcom/byazt/nbs/tt;->qy:I

    .line 17
    iget-object v1, p0, Lcom/byazt/nbs/tt;->gr:Ljava/lang/String;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->gr:Ljava/lang/String;

    .line 18
    iget v1, p0, Lcom/byazt/nbs/tt;->zm:I

    iput v1, v0, Lcom/byazt/nbs/tt;->zm:I

    .line 19
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->yv:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->yv:J

    .line 20
    iget v1, p0, Lcom/byazt/nbs/tt;->h:I

    iput v1, v0, Lcom/byazt/nbs/tt;->h:I

    .line 21
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->d:D

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->d:D

    .line 22
    iget v1, p0, Lcom/byazt/nbs/tt;->or:I

    iput v1, v0, Lcom/byazt/nbs/tt;->or:I

    .line 23
    iget v1, p0, Lcom/byazt/nbs/tt;->cu:I

    iput v1, v0, Lcom/byazt/nbs/tt;->cu:I

    .line 24
    iget v1, p0, Lcom/byazt/nbs/tt;->qp:I

    iput v1, v0, Lcom/byazt/nbs/tt;->qp:I

    .line 25
    iget v1, p0, Lcom/byazt/nbs/tt;->eo:I

    iput v1, v0, Lcom/byazt/nbs/tt;->eo:I

    .line 26
    iget v1, p0, Lcom/byazt/nbs/tt;->zb:I

    iput v1, v0, Lcom/byazt/nbs/tt;->zb:I

    .line 27
    iget v1, p0, Lcom/byazt/nbs/tt;->sv:I

    iput v1, v0, Lcom/byazt/nbs/tt;->sv:I

    .line 28
    iget-object v1, p0, Lcom/byazt/nbs/tt;->bx:Lcom/byazt/hr/sp;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->bx:Lcom/byazt/hr/sp;

    .line 29
    iget-object v1, p0, Lcom/byazt/nbs/tt;->pf:Lcom/byazt/hr/i;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->pf:Lcom/byazt/hr/i;

    .line 30
    iget v1, p0, Lcom/byazt/nbs/tt;->nb:I

    iput v1, v0, Lcom/byazt/nbs/tt;->nb:I

    .line 31
    iget-boolean v1, p0, Lcom/byazt/nbs/tt;->p:Z

    iput-boolean v1, v0, Lcom/byazt/nbs/tt;->p:Z

    .line 32
    iget-boolean v1, p0, Lcom/byazt/nbs/tt;->md:Z

    iput-boolean v1, v0, Lcom/byazt/nbs/tt;->md:Z

    .line 33
    iget-object v1, p0, Lcom/byazt/nbs/tt;->aw:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/byazt/nbs/tt;->aw:Lorg/json/JSONObject;

    .line 34
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->u:D

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->u:D

    .line 35
    iget v1, p0, Lcom/byazt/nbs/tt;->m:I

    iput v1, v0, Lcom/byazt/nbs/tt;->m:I

    .line 36
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    .line 38
    iget v1, p0, Lcom/byazt/nbs/tt;->z:I

    iput v1, v0, Lcom/byazt/nbs/tt;->z:I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/byazt/nbs/tt;->q:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/byazt/nbs/tt;->q:Ljava/util/Map;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    .line 42
    iget v1, p0, Lcom/byazt/nbs/tt;->ic:I

    iput v1, v0, Lcom/byazt/nbs/tt;->ic:I

    .line 43
    iget v1, p0, Lcom/byazt/nbs/tt;->hd:I

    iput v1, v0, Lcom/byazt/nbs/tt;->hd:I

    .line 44
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->yp:D

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->yp:D

    .line 45
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->l:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->l:J

    .line 46
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->bm:D

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->bm:D

    .line 47
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->lr:D

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->lr:D

    .line 48
    iget v1, p0, Lcom/byazt/nbs/tt;->pu:I

    iput v1, v0, Lcom/byazt/nbs/tt;->pu:I

    .line 49
    iget v1, p0, Lcom/byazt/nbs/tt;->lt:I

    iput v1, v0, Lcom/byazt/nbs/tt;->lt:I

    .line 50
    iget v1, p0, Lcom/byazt/nbs/tt;->to:I

    iput v1, v0, Lcom/byazt/nbs/tt;->to:I

    .line 51
    iget v1, p0, Lcom/byazt/nbs/tt;->tk:I

    iput v1, v0, Lcom/byazt/nbs/tt;->tk:I

    .line 52
    iget v1, p0, Lcom/byazt/nbs/tt;->b:I

    iput v1, v0, Lcom/byazt/nbs/tt;->b:I

    .line 53
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->kp:J

    iput-wide v1, v0, Lcom/byazt/nbs/tt;->kp:J

    return-object v0
.end method

.method public my(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/byazt/nbs/tt;->zb:I

    return-void
.end method

.method public n()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->lr:D

    return-wide v0
.end method

.method public n(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->yp:D

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->hd:I

    return-void
.end method

.method public n(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->uj:J

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    return-void
.end method

.method public nb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->lt:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public nu(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->ve:I

    return-void
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nbs/tt;->md:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->yp:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public pf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public pu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->or:I

    .line 2
    .line 3
    return v0
.end method

.method public qp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->gr:Ljava/lang/String;

    return-object v0
.end method

.method public qy(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->to:I

    return-void
.end method

.method public rh()Lcom/byazt/nbs/tt;
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/vx/i;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/byazt/nbs/tt;

    invoke-direct {v1}, Lcom/byazt/nbs/tt;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    const-string v2, "mRitId"

    .line 4
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 5
    iget v2, p0, Lcom/byazt/nbs/tt;->tt:I

    iput v2, v1, Lcom/byazt/nbs/tt;->tt:I

    const-string v2, "mRitType"

    .line 6
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 7
    iget v2, p0, Lcom/byazt/nbs/tt;->ve:I

    iput v2, v1, Lcom/byazt/nbs/tt;->ve:I

    const-string v2, "mLookType"

    .line 8
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 9
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->uj:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->uj:J

    const-string v2, "mMinWaitTime"

    .line 10
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 11
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->n:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->n:J

    const-string v2, "mLayerTimeOut"

    .line 12
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->a:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->a:J

    const-string v2, "mTotalTimeOut"

    .line 14
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 15
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->sp:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->sp:J

    const-string v2, "mCacheTimeOut"

    .line 16
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/byazt/nbs/tt;->x:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->x:Ljava/lang/String;

    const-string v2, "mVersion"

    .line 18
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->nu:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->nu:J

    const-string v2, "mWaterFallId"

    .line 20
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 21
    iget v2, p0, Lcom/byazt/nbs/tt;->gu:I

    iput v2, v1, Lcom/byazt/nbs/tt;->gu:I

    const-string v2, "reqType"

    .line 22
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    const-string v2, "mWaterfallAbTestParam"

    .line 24
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 25
    iget v2, p0, Lcom/byazt/nbs/tt;->rh:I

    iput v2, v1, Lcom/byazt/nbs/tt;->rh:I

    const-string v2, "segmentId"

    .line 26
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/byazt/nbs/tt;->my:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->my:Ljava/lang/String;

    const-string v2, "segmentVersion"

    .line 28
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 29
    iget v2, p0, Lcom/byazt/nbs/tt;->rl:I

    iput v2, v1, Lcom/byazt/nbs/tt;->rl:I

    const-string v2, "preLoadSortControl"

    .line 30
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 31
    iget v2, p0, Lcom/byazt/nbs/tt;->qy:I

    iput v2, v1, Lcom/byazt/nbs/tt;->qy:I

    const-string v2, "preShowSortControl"

    .line 32
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/byazt/nbs/tt;->gr:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->gr:Ljava/lang/String;

    const-string v2, "waterfallExtra"

    .line 34
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 35
    iget v2, p0, Lcom/byazt/nbs/tt;->zm:I

    iput v2, v1, Lcom/byazt/nbs/tt;->zm:I

    const-string v2, "mMultilevelAfterP"

    .line 36
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 37
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->yv:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->yv:J

    const-string v2, "mMultilevelTimeOut"

    .line 38
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 39
    iget v2, p0, Lcom/byazt/nbs/tt;->h:I

    iput v2, v1, Lcom/byazt/nbs/tt;->h:I

    const-string v2, "mRefreshTime"

    .line 40
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 41
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->d:D

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->d:D

    const-string v2, "mBidFloor"

    .line 42
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 43
    iget v2, p0, Lcom/byazt/nbs/tt;->or:I

    iput v2, v1, Lcom/byazt/nbs/tt;->or:I

    const-string v2, "mParallelType"

    .line 44
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 45
    iget v2, p0, Lcom/byazt/nbs/tt;->cu:I

    iput v2, v1, Lcom/byazt/nbs/tt;->cu:I

    const-string v2, "mReqParallelNum"

    .line 46
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 47
    iget v2, p0, Lcom/byazt/nbs/tt;->qp:I

    iput v2, v1, Lcom/byazt/nbs/tt;->qp:I

    const-string v2, "mAdCount"

    .line 48
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 49
    iget v2, p0, Lcom/byazt/nbs/tt;->eo:I

    iput v2, v1, Lcom/byazt/nbs/tt;->eo:I

    const-string v2, "serverSideVerifyPreRequestTime"

    .line 50
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 51
    iget v2, p0, Lcom/byazt/nbs/tt;->zb:I

    iput v2, v1, Lcom/byazt/nbs/tt;->zb:I

    const-string v2, "serverSideRewardType"

    .line 52
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 53
    iget v2, p0, Lcom/byazt/nbs/tt;->sv:I

    iput v2, v1, Lcom/byazt/nbs/tt;->sv:I

    const-string v2, "mAdPrime"

    .line 54
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 55
    iget v2, p0, Lcom/byazt/nbs/tt;->lt:I

    iput v2, v1, Lcom/byazt/nbs/tt;->lt:I

    const-string v2, "mRefreshNum"

    .line 56
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 57
    iget v2, p0, Lcom/byazt/nbs/tt;->pu:I

    iput v2, v1, Lcom/byazt/nbs/tt;->pu:I

    const-string v2, "mIsRefresh"

    .line 58
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/byazt/nbs/tt;->bx:Lcom/byazt/hr/sp;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->bx:Lcom/byazt/hr/sp;

    const-string v2, "mIntervalFreqctlBean"

    .line 60
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/byazt/nbs/tt;->pf:Lcom/byazt/hr/i;

    iput-object v2, v1, Lcom/byazt/nbs/tt;->pf:Lcom/byazt/hr/i;

    const-string v2, "mIntervalPacingBean"

    .line 62
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 63
    iget v2, p0, Lcom/byazt/nbs/tt;->nb:I

    iput v2, v1, Lcom/byazt/nbs/tt;->nb:I

    const-string v2, "mWaterFallTimingMode"

    .line 64
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->l:J

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->l:J

    const-string v2, "mReqInterval"

    .line 66
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->bm:D

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->bm:D

    const-string v2, "mTotalTimeoutRate"

    .line 68
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 69
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->lr:D

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->lr:D

    const-string v2, "mLayerTimeoutRate"

    .line 70
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/byazt/nbs/tt;->q:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/byazt/nbs/tt;->q:Ljava/util/Map;

    .line 72
    iget v2, p0, Lcom/byazt/nbs/tt;->ic:I

    iput v2, v1, Lcom/byazt/nbs/tt;->ic:I

    .line 73
    iget v2, p0, Lcom/byazt/nbs/tt;->hd:I

    iput v2, v1, Lcom/byazt/nbs/tt;->hd:I

    .line 74
    iget-wide v2, p0, Lcom/byazt/nbs/tt;->yp:D

    iput-wide v2, v1, Lcom/byazt/nbs/tt;->yp:D

    .line 75
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/byazt/nbs/tt;->sl:Ljava/util/Map;

    const-string v2, "AdsenseRitConfig"

    .line 76
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->tt(Ljava/util/List;Ljava/lang/String;)V

    .line 77
    iget v2, p0, Lcom/byazt/nbs/tt;->to:I

    iput v2, v1, Lcom/byazt/nbs/tt;->to:I

    const-string v2, "mBehaviorTTL"

    .line 78
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 79
    iget v2, p0, Lcom/byazt/nbs/tt;->tk:I

    iput v2, v1, Lcom/byazt/nbs/tt;->tk:I

    const-string v2, "mIsSamste"

    .line 80
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 81
    iget v2, p0, Lcom/byazt/nbs/tt;->b:I

    iput v2, v1, Lcom/byazt/nbs/tt;->b:I

    const-string v2, "fillStrategy"

    .line 82
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public rh(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/byazt/nbs/tt;->eo:I

    return-void
.end method

.method public rl()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->d:D

    return-wide v0
.end method

.method public rl(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->cu:I

    return-void
.end method

.method public sl(I)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/byazt/psp/uj;->c(Ljava/lang/String;ILjava/util/Map;)I

    move-result p1

    .line 4
    iget v0, p0, Lcom/byazt/nbs/tt;->h:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return p1

    .line 5
    :cond_0
    iget p1, p0, Lcom/byazt/nbs/tt;->h:I

    return p1
.end method

.method public sl()Lcom/byazt/hr/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->bx:Lcom/byazt/hr/sp;

    return-object v0
.end method

.method public sp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->l:J

    return-wide v0
.end method

.method public sp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->nb:I

    return-void
.end method

.method public sp(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->a:J

    return-void
.end method

.method public sv()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()Lcom/byazt/hr/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->pf:Lcom/byazt/hr/i;

    return-object v0
.end method

.method public t(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->h:I

    return-void
.end method

.method public to()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->to:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdsenseRitConfig{mRitId=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", mIsSpeed="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->yp()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", mHasServerbidding="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/byazt/nbs/tt;->p:Z

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", mHasClientOrMultiLevel="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/byazt/nbs/tt;->md:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", mRitType="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lcom/byazt/nbs/tt;->tt:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", mLookType="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/byazt/nbs/tt;->ve:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", mMinWaitTime="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->uj:J

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", mLayerTimeOut="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->n:J

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", mTotalTimeOut="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->a:J

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", mWaterFallConfigList="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", mWaterFallConfMap="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", mLoadSortLevelList="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", mCurrentCommonAdMaxCpm="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-wide v1, p0, Lcom/byazt/nbs/tt;->u:D

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", mTotalLoadLevelCount="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v1, p0, Lcom/byazt/nbs/tt;->z:I

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", mTotalWaterFallCount="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v1, p0, Lcom/byazt/nbs/tt;->m:I

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", mWaterfallAbTestParam="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/byazt/nbs/tt;->gt:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", mServerSideVerifyPreRequestTime="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v1, p0, Lcom/byazt/nbs/tt;->eo:I

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", mServerSideVerifyRewardType="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget v1, p0, Lcom/byazt/nbs/tt;->zb:I

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const/16 v1, 0x7d

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->kp:J

    return-wide v0
.end method

.method public tt(D)V
    .locals 5

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    :cond_0
    move-wide p1, v0

    .line 3
    :cond_1
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->bm:D

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->tk:I

    return-void
.end method

.method public tt(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 4
    :cond_0
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->l:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/nbs/tt;->my:Ljava/lang/String;

    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/nbs/tt;->ve(Ljava/util/List;)V

    .line 8
    iput-object p1, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/byazt/nbs/tt;->z:I

    .line 10
    iget-object v1, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 11
    iget-object v1, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    iget-object v1, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/byazt/nbs/tt;->m:I

    const/16 v1, -0x3e8

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/byazt/nbs/tt;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->my()I

    move-result v3

    if-nez v3, :cond_1

    .line 16
    iget v1, p0, Lcom/byazt/nbs/tt;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/byazt/nbs/tt;->z:I

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->p()I

    move-result v3

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 20
    iget v1, p0, Lcom/byazt/nbs/tt;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/byazt/nbs/tt;->z:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    goto :goto_1

    .line 23
    :cond_2
    iget-object v3, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v5, v3

    move v3, v1

    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_3

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/byazt/nbs/tt;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/byazt/nbs/tt;->da:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/nbs/tt;->md:Z

    return-void
.end method

.method public u(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->zm:I

    return-void
.end method

.method public u()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->nb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->lo:I

    return v0
.end method

.method public uj(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->u:D

    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->ic:I

    return-void
.end method

.method public uj(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->nu:J

    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/nbs/tt;->c:Ljava/lang/String;

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->tk:I

    return v0
.end method

.method public ve(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->d:D

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->lo:I

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->yv:J

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/nbs/tt;->x:Ljava/lang/String;

    return-void
.end method

.method public x()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/tt;->q:Ljava/util/Map;

    return-object v0
.end method

.method public x(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->pu:I

    return-void
.end method

.method public x(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/nbs/tt;->sp:J

    return-void
.end method

.method public yp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->gu:I

    return-void
.end method

.method public yp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->or:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public yv()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/tt;->u:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public z(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/tt;->rh:I

    return-void
.end method

.method public z()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->sv:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nbs/tt;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public zm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/tt;->m:I

    .line 2
    .line 3
    return v0
.end method
