.class public Lcom/kwai/monitor/log/TurboAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "TurboAgent"


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

.method public static init(Lcom/kwai/monitor/log/TurboConfig;)V
    .locals 1

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkwai/a/e;->a(Lcom/kwai/monitor/log/TurboConfig;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static on14dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_14_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on24hStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_24h_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on2dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_2_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on30dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_30_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on3dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_3_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on4dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_4_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on5dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_5_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static on6dayStay()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_6_DAY_STAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onAddShoppingCart(D)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_ADD_SHOPPINGCART"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-wide p0, v0, Lfc/a;->b:D

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onAffairFinish()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_JINJIAN"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onAppActive()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_ACTIVE"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onCreditGrant()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_CREDIT_GRANT"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onFormSubmit()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_FORM_SUBMIT"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onGameConsumption(D)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_GAME_CONSUMPTION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-wide p0, v0, Lfc/a;->b:D

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onGameCreateRole(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_GAME_CREATE_ROLE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lfc/a;->d:Ljava/lang/String;

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onGameUpgradeRole(I)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_GAME_UPGRADE_ROLE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lfc/a;->e:I

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onGameWatchRewardVideo()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_GAME_WATCH_REWARD_VIDEO"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onGoodsView(D)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_GOODS_VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-wide p0, v0, Lfc/a;->b:D

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onNextDayStay()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_NEXTDAY_STAY"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onOrderPayed(D)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_ORDER_PAIED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-wide p0, v0, Lfc/a;->b:D

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onOrderSubmit(D)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_ORDER_SUBMIT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-wide p0, v0, Lfc/a;->b:D

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onPagePause()V
    .locals 6

    .line 1
    sget-wide v0, Lec/b;->b:J

    const-wide/16 v2, 0x0

    const-string v4, "GameDurationHelper"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    const-string v0, "GAME_RESUME_LAST_TIME <=0"

    .line 2
    invoke-static {v4, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lec/b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    const-string v0, "ignore this time while duration is less than 3s"

    .line 4
    invoke-static {v4, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Lfc/a;

    const-string v3, "EVENT_GAME_REPORT_DURATION"

    invoke-direct {v2, v3}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    iput-wide v0, v2, Lfc/a;->c:J

    .line 7
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 8
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 9
    invoke-virtual {v0, v2}, Lkwai/a/e;->b(Lfc/a;)V

    :goto_0
    return-void
.end method

.method public static onPagePause(Landroid/app/Activity;)V
    .locals 0

    .line 10
    invoke-static {p0}, Lec/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPageResume()V
    .locals 0

    .line 2
    invoke-static {}, Lec/b;->a()V

    return-void
.end method

.method public static onPageResume(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lec/b;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPassKeyGameCard()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_PASS_KEY_GAME_CARD"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onPay(D)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_PAY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-wide p0, v0, Lfc/a;->b:D

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onRegister()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_REGISTER"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onVipLevelUp(I)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_VIP_LEVEL_UP"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lfc/a;->f:I

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static onWatchAppAd()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_WATCH_APP_AD"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onWeekStay()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 4
    .line 5
    new-instance v1, Lfc/a;

    .line 6
    .line 7
    const-string v2, "EVENT_WEEK_STAY"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static registerOAIDListener(Landroid/content/Context;Lcom/kwai/monitor/log/OAIDListener;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sput-object p1, Lhc/a;->b:Lcom/kwai/monitor/log/OAIDListener;

    .line 11
    .line 12
    sget-object p1, Lhc/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :try_start_0
    sget-object p0, Lhc/a;->b:Lcom/kwai/monitor/log/OAIDListener;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    sget-object p1, Lhc/a;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/kwai/monitor/log/OAIDListener;->OnOAIDValid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0}, Lhc/a;->e(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void

    .line 39
    :cond_3
    :goto_1
    const-string p0, "TurboAgent"

    .line 40
    .line 41
    const-string p1, "registerOAIDListener context or oaidListener is null"

    .line 42
    .line 43
    invoke-static {p0, p1}, Lkc/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static reportGameServer(Lcom/kwai/monitor/log/ServerType;)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_SERVER_CONNECTION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/kwai/monitor/log/ServerType;->DedicatedServer:Lcom/kwai/monitor/log/ServerType;

    .line 9
    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    iput p0, v0, Lfc/a;->h:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/kwai/monitor/log/ServerType;->MixtureServer:Lcom/kwai/monitor/log/ServerType;

    .line 17
    .line 18
    if-ne p0, v1, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    iput p0, v0, Lfc/a;->h:I

    .line 22
    .line 23
    :cond_1
    :goto_0
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 24
    .line 25
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static reportInsufficientGoldCoins()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_INSUFFICIENT_GOLD_COINS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static reportKeyPathOptimization(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_KEY_PATH_OPTIMIZATION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lfc/a;->i:Ljava/lang/String;

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static reportMainCityUpgrade(I)V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_MAIN_CITY_UPGRADE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lfc/a;->e:I

    .line 9
    .line 10
    sget-object p0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object p0, p0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static reportUsersIndependentNaming()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_USERS_INDEPENDENT_NAMING"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static reportUsersReceiveGiftBags()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_USERS_RECEIVE_GIFT_BAGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static reportUsersReceiveRedEnvelopes()V
    .locals 2

    .line 1
    new-instance v0, Lfc/a;

    .line 2
    .line 3
    const-string v1, "EVENT_USERS_RECEIVE_RED_ENVELOPES"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 9
    .line 10
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static unRegisterOAIDListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lhc/a;->b:Lcom/kwai/monitor/log/OAIDListener;

    .line 3
    .line 4
    return-void
.end method
