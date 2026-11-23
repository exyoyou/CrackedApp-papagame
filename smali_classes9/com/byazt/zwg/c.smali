.class public Lcom/byazt/zwg/c;
.super Lcom/byazt/nc/z;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x425,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/t;

.field public tt:Lcom/byazt/tn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/z;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/zwg/c;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zwg/c;)Lcom/byazt/tn/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zwg/c;->tt:Lcom/byazt/tn/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/byazt/zwg/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/zwg/c$1;-><init>(Lcom/byazt/zwg/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/hz/t;->c(Lcom/byazt/uhf/c;)V

    return-void
.end method

.method private c(Lcom/byazt/bo/c;Lcom/byazt/tn/c;Ljava/lang/String;)V
    .locals 10

    .line 5
    invoke-static {p1, p3}, Lcom/byazt/bz/uj;->c(Lcom/byazt/bo/c;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 6
    invoke-interface {p1}, Lcom/byazt/bo/c;->c()Z

    move-result v1

    .line 7
    invoke-interface {p1}, Lcom/byazt/bo/c;->tt()F

    move-result p3

    .line 8
    invoke-interface {p1}, Lcom/byazt/bo/c;->ve()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Lcom/byazt/bo/c;->uj()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v2, "rewardType"

    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    instance-of v3, v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 13
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "extraInfo"

    .line 14
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 16
    check-cast v3, Landroid/os/Bundle;

    goto :goto_1

    .line 17
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string v5, "reward_extra_key_reward_name"

    .line 18
    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "reward_extra_key_reward_amount"

    .line 19
    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "isGroMoreServerSideVerify"

    .line 20
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 21
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 22
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 23
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const-string v5, "transId"

    .line 24
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 25
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 26
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v5, "reason"

    .line 27
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 29
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v5, "gromoreExtra"

    .line 30
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 31
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 32
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v5, "errorCode"

    .line 33
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 34
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 35
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 36
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    const-string v5, "errorMsg"

    .line 37
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    instance-of v7, v6, Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_8

    .line 39
    check-cast v6, Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_2

    :cond_8
    move-object v5, v8

    :goto_2
    const-string v6, "adnName"

    .line 41
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 42
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 43
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v6, "ecpm"

    .line 44
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 45
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 46
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v6, "reward_type"

    .line 47
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_b

    .line 49
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 50
    invoke-virtual {v3, v6, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    :cond_b
    invoke-virtual {p2, v1, v2, v3}, Lcom/byazt/tn/c;->c(ZILandroid/os/Bundle;)V

    const-string p1, "6.4.0.0"

    .line 52
    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    float-to-int v2, p3

    if-eqz v0, :cond_c

    move-object v3, v0

    goto :goto_3

    :cond_c
    move-object v3, v8

    :goto_3
    move-object v0, p2

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/tn/c;->c(ZILjava/lang/String;ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zwg/c;Lcom/byazt/bo/c;Lcom/byazt/tn/c;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/zwg/c;->c(Lcom/byazt/bo/c;Lcom/byazt/tn/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExpirationTimestamp()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->m()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->nu()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/bz/c;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/zwg/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/byazt/zwg/tt;-><init>(Lcom/byazt/hz/t;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/byazt/bz/c;-><init>(Lcom/byazt/bz/ve;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getRewardVideoAdType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ocd/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/zwg/c$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/byazt/zwg/c$2;-><init>(Lcom/byazt/zwg/c;Lcom/byazt/ocd/ve;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/zh/tt;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setRewardAdInteractionListener(Lcom/byazt/tn/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zwg/c;->tt:Lcom/byazt/tn/c;

    .line 2
    .line 3
    return-void
.end method

.method public setRewardPlayAgainController(Lcom/byazt/tn/tt;)V
    .locals 0

    return-void
.end method

.method public setRewardPlayAgainInteractionListener(Lcom/byazt/tn/c;)V
    .locals 0

    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/hz/t;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/zwg/c;->c:Lcom/byazt/hz/t;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/hz/t;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method
