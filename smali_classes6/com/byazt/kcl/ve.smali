.class public Lcom/byazt/kcl/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kcl/ve$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ddx/n;

.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public n:Landroid/view/View;

.field public tt:Lcom/byazt/ete/ic;

.field public uj:Z

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/kcl/ve;->uj:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    return-void
.end method

.method private a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/byazt/ete/gt;->sl(Lcom/byazt/ete/ic;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public static synthetic c(Lcom/byazt/kcl/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private tt(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 3
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fe99

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "click_play_star_level"

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06feae

    if-ne v0, v1, :cond_2

    const-string v0, "click_play_star_nums"

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffa3

    if-ne v0, v1, :cond_3

    const-string v0, "click_play_source"

    .line 8
    invoke-virtual {p0, v0, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff51

    if-ne v0, v1, :cond_4

    const-string v0, "click_play_logo"

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fec1

    if-eq v0, v1, :cond_7

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffd5

    if-eq v0, v1, :cond_7

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fffc

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06feba

    if-ne v0, v1, :cond_6

    const-string v0, "click_video"

    .line 15
    invoke-virtual {p0}, Lcom/byazt/kcl/ve;->uj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff98

    if-ne v0, v1, :cond_8

    const-string v0, "fallback_endcard_click"

    .line 17
    invoke-virtual {p0}, Lcom/byazt/kcl/ve;->uj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_7
    :goto_0
    const-string v0, "click_start_play_bar"

    .line 18
    invoke-virtual {p0}, Lcom/byazt/kcl/ve;->uj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    :cond_8
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/byazt/kcl/ve;->ve(Landroid/view/View;Lcom/byazt/ete/da;)V

    return-void
.end method

.method private ve(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 9
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/byazt/kcl/ve;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fe99

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06feae

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffa3

    if-eq v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff51

    if-eq v0, v1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fec1

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ffd5

    if-eq v0, v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06fffc

    if-eq v0, v1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06ff76

    if-eq v0, v1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7e06feba

    if-eq v0, v1, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7e06ff98

    if-ne p1, v0, :cond_4

    :cond_2
    const-string p1, "device_info_new"

    .line 14
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/u;

    .line 15
    invoke-interface {p1}, Lcom/byazt/dna/u;->getDisplayDpi()I

    move-result p1

    .line 16
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    move-result v0

    .line 17
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    move-result v1

    .line 18
    new-instance v2, Lcom/byazt/ete/i$c;

    invoke-direct {v2}, Lcom/byazt/ete/i$c;-><init>()V

    .line 19
    invoke-virtual {p2}, Lcom/byazt/ete/da;->nu()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 20
    invoke-virtual {p2}, Lcom/byazt/ete/da;->rh()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 21
    invoke-virtual {p2}, Lcom/byazt/ete/da;->my()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 22
    invoke-virtual {p2}, Lcom/byazt/ete/da;->gt()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/kcl/ve;->n:Landroid/view/View;

    .line 25
    invoke-static {v3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->tt([I)Lcom/byazt/ete/i$c;

    move-result-object v2

    const/4 v3, 0x0

    .line 26
    invoke-static {v3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/i$c;->c([I)Lcom/byazt/ete/i$c;

    move-result-object v2

    iget-object v4, p0, Lcom/byazt/kcl/ve;->n:Landroid/view/View;

    .line 27
    invoke-static {v4}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/i$c;->ve([I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 28
    invoke-static {v3}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->uj([I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 29
    invoke-virtual {p2}, Lcom/byazt/ete/da;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 30
    invoke-virtual {p2}, Lcom/byazt/ete/da;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 31
    invoke-virtual {p2}, Lcom/byazt/ete/da;->sp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 32
    invoke-virtual {p2}, Lcom/byazt/ete/da;->u()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->c(Landroid/util/SparseArray;)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 33
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/omf/x;->tt()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 34
    invoke-virtual {v2, p1}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v1}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    .line 37
    invoke-static {v0}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    move-result-object v2

    const-string v0, "click_other"

    .line 39
    iget-object v1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object p1, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/byazt/ete/da;->c()Z

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "reward_full_scene_type"

    .line 8
    iget-object v1, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/fcd/c;->eo()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/fcd/c;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public c()V
    .locals 4

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    new-instance v3, Lcom/byazt/kcl/ve$1;

    invoke-direct {v3, p0, v0}, Lcom/byazt/kcl/ve$1;-><init>(Lcom/byazt/kcl/ve;Lorg/json/JSONObject;)V

    const-string v0, "skip"

    invoke-static {v1, v2, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "callback_extra_key_reward_type"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "callback_extra_key_reward_valid"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "callback_extra_key_error_code"

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "callback_extra_key_error_msg"

    .line 19
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback_extra_key_is_server_verify"

    .line 20
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz v1, :cond_0

    const-string v4, "reward_arrived_success"

    goto :goto_0

    :cond_0
    const-string v4, "reward_arrived_failed"

    .line 21
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 22
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "isRewardVerify"

    .line 23
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isServerCallback"

    .line 24
    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "rewardType"

    .line 25
    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    .line 26
    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorMsg"

    .line 27
    invoke-virtual {v6, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reward_data_bundle"

    .line 28
    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "RewardFullEventManager"

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_1
    iget-object p1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    new-instance v1, Lcom/byazt/kcl/ve$4;

    invoke-direct {v1, p0, v5}, Lcom/byazt/kcl/ve$4;-><init>(Lcom/byazt/kcl/ve;Lorg/json/JSONObject;)V

    invoke-static {p1, v0, v4, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 1

    .line 41
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/kcl/ve;->tt(Landroid/view/View;Lcom/byazt/ete/da;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onClickReport error :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardFullEventManager"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/kcl/ve;->uj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/kcl/ve;->uj:Z

    .line 4
    iput-object p1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    .line 5
    iput-object p2, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/byazt/kcl/ve;->n:Landroid/view/View;

    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "dialog_type"

    .line 32
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "template_url"

    .line 33
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 34
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    iget-object p2, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object p3, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    new-instance v1, Lcom/byazt/kcl/ve$5;

    invoke-direct {v1, p0, v0}, Lcom/byazt/kcl/ve$5;-><init>(Lcom/byazt/kcl/ve;Lorg/json/JSONObject;)V

    invoke-static {p2, p3, p1, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->eo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reward_full_scene_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/fcd/c;->c(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public c(ZIJ)V
    .locals 2

    .line 36
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    iget-object v1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "scroll_up"

    goto :goto_0

    :cond_0
    const-string p1, "scroll_down"

    .line 38
    :goto_0
    invoke-virtual {v0, p1}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    .line 39
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    new-instance v0, Lcom/byazt/kcl/ve$c;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-virtual {p0, v1}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/byazt/kcl/ve$c;-><init>(IJLorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    return-void
.end method

.method public n()Lcom/byazt/ddx/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/ve;->a:Lcom/byazt/ddx/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ddx/n;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/kcl/ve;->a:Lcom/byazt/ddx/n;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/ve;->a:Lcom/byazt/ddx/n;

    .line 17
    .line 18
    return-object v0
.end method

.method public tt()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    new-instance v3, Lcom/byazt/kcl/ve$2;

    invoke-direct {v3, p0, v0}, Lcom/byazt/kcl/ve$2;-><init>(Lcom/byazt/kcl/ve;Lorg/json/JSONObject;)V

    const-string v0, "skip_endcard"

    invoke-static {v1, v2, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public uj()Lorg/json/JSONObject;
    .locals 5
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->yp()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/byazt/kcl/ve;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/byazt/kcl/a;->z()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    new-instance v3, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    const-string v4, "duration"

    .line 27
    .line 28
    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v0, "percent"

    .line 32
    .line 33
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    return-object v3

    .line 37
    :catchall_0
    const/4 v3, 0x0

    .line 38
    :catchall_1
    return-object v3
.end method

.method public ve()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/byazt/kcl/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/kcl/ve;->ve:Ljava/lang/String;

    new-instance v3, Lcom/byazt/kcl/ve$3;

    invoke-direct {v3, p0, v0}, Lcom/byazt/kcl/ve$3;-><init>(Lcom/byazt/kcl/ve;Lorg/json/JSONObject;)V

    const-string v0, "reward_arrived_begin"

    invoke-static {v1, v2, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method
