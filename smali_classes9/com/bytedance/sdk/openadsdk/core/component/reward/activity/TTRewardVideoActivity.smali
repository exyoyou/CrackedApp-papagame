.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;
.super Lcom/byazt/lcf/TTBaseVideoActivity;
.source "SourceFile"


# instance fields
.field private dz:Ljava/lang/String;

.field private iu:Ljava/lang/String;

.field private j:I

.field private final kk:I

.field private final ma:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final os:I

.field private final oz:I

.field private final r:I

.field private s:Ljava/lang/String;

.field private final tx:I

.field private final v:I

.field private y:Ljava/lang/String;

.field private yf:Lcom/byazt/vb/ve;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x277f

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->kk:I

    .line 7
    .line 8
    const/16 v0, 0x2780

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->tx:I

    .line 11
    .line 12
    const/16 v0, 0x2781

    .line 13
    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->v:I

    .line 15
    .line 16
    const/16 v0, 0x2782

    .line 17
    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->os:I

    .line 19
    .line 20
    const/16 v0, 0x2783

    .line 21
    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->oz:I

    .line 23
    .line 24
    const/16 v0, 0x2784

    .line 25
    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->r:I

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ma:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    return-void
.end method

.method private c(IZILjava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callback_extra_key_reward_valid"

    .line 22
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "callback_extra_key_reward_type"

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callback_extra_key_reward_amount"

    .line 24
    invoke-virtual {v0, v1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p5, "callback_extra_key_reward_name"

    .line 25
    invoke-virtual {v0, p5, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p5, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p5, p1}, Lcom/byazt/ete/kp;->c(Lcom/byazt/ete/ic;I)F

    move-result p5

    const-string p6, "callback_extra_key_reward_propose"

    invoke-virtual {v0, p6, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p5, "callback_extra_key_is_server_verify"

    .line 27
    invoke-virtual {v0, p5, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    const-string p2, "callback_extra_key_error_code"

    .line 28
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "callback_extra_key_error_msg"

    .line 29
    invoke-virtual {v0, p2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/kp;->sp(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->gt()J

    move-result-wide p1

    iget-object p3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p3}, Lcom/byazt/ete/kp;->da(Lcom/byazt/ete/ic;)I

    move-result p3

    int-to-long p3, p3

    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    const-string p1, "callback_extra_key_video_complete_reward"

    const/4 p2, 0x1

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;IZILjava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->c(IZILjava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ve(Landroid/os/Bundle;)V

    return-void
.end method

.method private dz()I
    .locals 5
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/kp;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x2784

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v0, 0x277f

    .line 29
    .line 30
    const/16 v1, 0x277f

    .line 31
    .line 32
    :cond_2
    :goto_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->wq()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    invoke-static {}, Lcom/byazt/aas/gr;->x()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->ey()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "_"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->ck()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/byazt/aas/gr;->c(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    const/16 v1, 0x2783

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    sget v0, Lcom/byazt/aas/gr;->tt:I

    .line 89
    .line 90
    if-ne v2, v0, :cond_5

    .line 91
    .line 92
    const/16 v1, 0x2782

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    sget v0, Lcom/byazt/aas/gr;->ve:I

    .line 96
    .line 97
    if-ne v2, v0, :cond_6

    .line 98
    .line 99
    const/16 v1, 0x2781

    .line 100
    .line 101
    :cond_6
    :goto_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$6;

    .line 106
    .line 107
    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;I)V

    .line 108
    .line 109
    .line 110
    const-string v3, "armor_reward"

    .line 111
    .line 112
    invoke-virtual {v0, v2, v3}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return v1
.end method

.method private iu()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-string v2, "rs_info"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_2
    :goto_0
    return-object v1
.end method

.method private j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ma:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private ma()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    const-string v1, "cancelClickLandingRewardTip"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic tt(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private tt(IZ)Lorg/json/JSONObject;
    .locals 7
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "oversea_version_type"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reward_name"

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reward_amount"

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->h()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "network"

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    .line 7
    sget-object v3, Lcom/byazt/omf/p;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_agent"

    const-string v3, "device_info_new"

    .line 8
    invoke-static {v3}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dna/u;

    invoke-interface {v3, v2}, Lcom/byazt/dna/u;->getWebViewUA(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extra"

    .line 9
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "media_extra"

    .line 10
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "video_duration"

    .line 11
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v3}, Lcom/byazt/kcl/a;->p()D

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "play_start_ts"

    .line 12
    iget v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->l:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_end_ts"

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 14
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v3}, Lcom/byazt/kcl/a;->gt()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "user_id"

    .line 15
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trans_id"

    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reward_type"

    .line 17
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "rs_info"

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->iu()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/kp;->uj(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "show_result"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 20
    :cond_0
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    :cond_1
    invoke-static {v0}, Lcom/byazt/qh/tt;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private tt(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    invoke-interface {v0}, Lcom/byazt/cjm/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ete/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0, p1, p2}, Lcom/byazt/yi/c;->c(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic uj(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method static synthetic ve(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ma:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private ve(IZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->yp()V

    .line 20
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    invoke-virtual {p1, p2}, Lcom/byazt/kcl/uj;->tt(Z)V

    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->y()V

    :cond_0
    return-void
.end method

.method private ve(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "callback_extra_key_reward_type"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "onRewardVerify"

    .line 15
    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->tt(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "onRewardArrived"

    .line 16
    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->tt(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    invoke-virtual {v1, p1}, Lcom/byazt/kcl/ve;->c(Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {p1, v0}, Lcom/byazt/fcd/c;->c(I)V

    return-void
.end method

.method private y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/kp;->sp(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->gt()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/byazt/ete/kp;->da(Lcom/byazt/ete/ic;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-long v2, v2

    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-gez v4, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->sp()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->i()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "toast_text"

    .line 52
    .line 53
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/byazt/ete/kp;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 63
    .line 64
    const-string v2, "showToast"

    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/byazt/ete/kp;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public bm()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/byazt/kcl/tt;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v1, v0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->eo()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object v2, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x1

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-object v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Lcom/byazt/fcd/c;->a(Z)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object v3, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->yv()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iget-object v5, v0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 66
    .line 67
    invoke-static {v4, v5, v2}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v3, v2}, Lcom/byazt/fcd/c;->a(Z)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->s()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const-string v4, "\u5df2\u9886\u53d6\u5956\u52b1"

    .line 80
    .line 81
    const-string v5, "s"

    .line 82
    .line 83
    if-nez v3, :cond_6

    .line 84
    .line 85
    iget-object v3, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/byazt/fcd/c;->rh()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iget-object v6, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    if-gtz v2, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    :goto_0
    move-object v8, v4

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    invoke-virtual/range {v6 .. v11}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    :goto_1
    iget-object v12, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 124
    .line 125
    const/4 v13, 0x0

    .line 126
    if-gtz v2, :cond_7

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    :goto_2
    move-object v14, v4

    .line 145
    const-string v15, "\u8df3\u8fc7"

    .line 146
    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v17, 0x1

    .line 150
    .line 151
    invoke-virtual/range {v12 .. v17}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 152
    .line 153
    .line 154
    :goto_3
    iget-object v2, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 155
    .line 156
    invoke-virtual {v2, v1}, Lcom/byazt/fcd/c;->tt(I)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->dz:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Landroid/content/Intent;)V
    .locals 3

    .line 5
    invoke-super {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "media_extra"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->s:Ljava/lang/String;

    const-string v0, "user_id"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->y:Ljava/lang/String;

    const-string v0, "reward_name"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->iu:Ljava/lang/String;

    const-string v0, "userData"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->dz:Ljava/lang/String;

    const-string v0, "reward_amount"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->j:I

    .line 11
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const-string v2, "is_play_again"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/byazt/cjm/c;->c(Z)V

    .line 12
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const-string v2, "play_again_count"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/byazt/cjm/c;->c(I)V

    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const-string v2, "custom_play_again"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/byazt/cjm/c;->tt(Z)V

    .line 14
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const-string v2, "source_rit_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/cjm/c;->tt(I)V

    .line 15
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const-string v1, "reward_again_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/cjm/c;->c(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const-string v1, "reward_again_amount"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/byazt/cjm/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->tt(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected c(Landroid/os/Bundle;)Z
    .locals 4

    .line 17
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "is_reward_deep_link_to_live"

    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    const-string v1, "click_to_live_duration"

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 20
    invoke-super {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->j:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->iu:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->iu:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ete/kp;->tt(Lcom/byazt/ete/ic;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ete/kp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/ete/kp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_1
    const-string v0, ""

    .line 44
    .line 45
    return-object v0
.end method

.method public eo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/cjm/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/cjm/c;->sp()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/byazt/cjm/c;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/byazt/cjm/c;->sp()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->h()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method protected gr()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/cjm/c;->n()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public gt()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->r()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->j:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->iu:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->j:I

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ete/kp;->tt(Lcom/byazt/ete/ic;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ete/kp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/ete/kp;->tt(Lcom/byazt/ete/ic;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method public md()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/cjm/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/xjc/c;->uj()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/fcd/c;->c(IILandroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/byazt/cjm/c;->ve()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/epi/c;->c()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->yf:Lcom/byazt/vb/ve;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 13
    .line 14
    sget v1, Lcom/byazt/fh/a;->tt:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/fcd/c;->ve(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/byazt/fh/a;->ve:Z

    .line 21
    .line 22
    sput v0, Lcom/byazt/fh/a;->tt:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->sv()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sput v1, Lcom/byazt/fh/a;->c:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ve(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/ete/kp;->my(Lcom/byazt/ete/ic;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-boolean v0, Lcom/byazt/fh/a;->uj:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ma()V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->uj(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method protected p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/cjm/c;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/rob/c;->ve()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->yv()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 36
    .line 37
    invoke-static {v0, v2, v1}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    const-string v0, "onAdClose"

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public r()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->yv()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, v2}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/xjc/c;->c()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->pf()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-le v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 30
    .line 31
    invoke-interface {v0, v3}, Lcom/byazt/xjc/c;->c(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/byazt/fcd/c;->a(Z)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/byazt/xjc/c;->c()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lcom/byazt/fcd/c;->a(Z)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 58
    .line 59
    invoke-interface {v4}, Lcom/byazt/xjc/c;->c()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sub-int/2addr v1, v4

    .line 64
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Lcom/byazt/fcd/tt;->x(Z)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    sub-int/2addr v1, v0

    .line 73
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    const/16 v0, 0x3e7

    .line 90
    .line 91
    const/16 v1, 0x3e7

    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->sl(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->t(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ve(IZ)V

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->os()V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void
.end method

.method public s()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/byazt/fcd/c;->l()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    const-wide/16 v4, 0x3e8

    .line 15
    .line 16
    mul-long v2, v2, v4

    .line 17
    .line 18
    add-long/2addr v0, v2

    .line 19
    long-to-float v0, v0

    .line 20
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 21
    .line 22
    div-float/2addr v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->lo()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lt v0, v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public tt()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v0}, Lcom/byazt/xjc/c;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/byazt/cjm/c;->ve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-super {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    return-void
.end method

.method protected uj()V
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->yf:Lcom/byazt/vb/ve;

    .line 3
    invoke-static {v0}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/ve;)V

    .line 4
    invoke-super {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj()V

    return-void
.end method

.method public uj(I)V
    .locals 11
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .annotation runtime Lcom/bytedance/component/sdk/annotation/HungeonFlag;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    invoke-interface {v0}, Lcom/byazt/cjm/c;->uj()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    invoke-virtual {v0}, Lcom/byazt/kcl/ve;->ve()V

    .line 10
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->zm(Lcom/byazt/ete/ic;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->h()I

    move-result v7

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->d()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->dz()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    .line 14
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sh \u2014\u2014\u300b isValid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", direct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", errCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GROMORE_SS_REWARD_VERIFY"

    invoke-static {v3, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ve(IZ)V

    .line 16
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->tt(IZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$2;

    invoke-direct {v2, p0, p1, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;IILjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/byazt/omf/gu;->c(Lorg/json/JSONObject;Lcom/byazt/omf/gu$n;)V

    return-void

    :cond_4
    :goto_1
    const-string v6, "reward failed"

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v10

    .line 18
    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->c(IZILjava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ve(Landroid/os/Bundle;)V

    .line 20
    invoke-direct {p0, p1, v10}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->ve(IZ)V

    return-void
.end method

.method public ve(I)V
    .locals 1
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .annotation runtime Lcom/bytedance/component/sdk/annotation/HungeonFlag;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->uj(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->pf()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->p(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->or()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->uj(I)V

    return-void
.end method

.method protected ve(Z)V
    .locals 3

    .line 7
    iget-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gu:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->hz()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x7d0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    invoke-interface {v0}, Lcom/byazt/cjm/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    if-ltz v2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v2, :cond_3

    .line 11
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ic:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)V

    int-to-long v1, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public x(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$3;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/ete/lt;->c(Lcom/byazt/ete/ic;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 34
    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$4;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/byazt/cjm/c;->ve(I)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public yv()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zb()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/cjm/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/cjm/c;->sp()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/byazt/cjm/c;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/byazt/cjm/c;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
