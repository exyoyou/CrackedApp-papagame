.class public Lcom/byazt/zu/uj;
.super Lcom/byazt/nc/yp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0xf
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ft/tt;

.field public c:Lcom/byazt/hz/i;

.field public i:Lcom/byazt/ocd/tt;

.field public n:Lcom/byazt/ft/ve;

.field public sp:Lcom/byazt/ocd/ve;

.field public tt:Lcom/byazt/yl/ve;

.field public uj:Landroid/view/View;

.field public ve:Lcom/byazt/ll/tt;

.field public x:Lcom/byazt/am/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/am/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/yp;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/zu/uj;->c:Lcom/byazt/hz/i;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/byazt/zu/uj;->x:Lcom/byazt/am/tt;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 p2, 0x3

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object p3, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/byazt/zu/uj;->c()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/byazt/zu/uj;->ve()V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/byazt/zu/uj;->tt()V

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/byazt/zu/uj;->uj()V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/zu/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zu/uj;->n()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/uj;->n:Lcom/byazt/ft/ve;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/byazt/zu/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$1;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTVideoListener(Lcom/byazt/me/x;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/uj$2;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$2;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTAdAppDownloadListener(Lcom/byazt/zh/tt;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 14

    .line 7
    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setHasShowCallback(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p1, v2}, Lcom/byazt/ft/tt;->tt(Landroid/view/View;I)V

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    const-string v2, "show_listen"

    invoke-static {v0, v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "adSlotId\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 12
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    .line 14
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/hr/u;->tt(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/byazt/hr/t;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-interface {p1, v0}, Lcom/byazt/yl/ve$c;->c(Lcom/byazt/yl/ve;)V

    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 23
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-static {p1}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const-wide/16 v4, -0x1

    :goto_0
    move-object v9, p1

    move-wide v10, v4

    .line 26
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isShowListenRepeatOnce()Z

    move-result v12

    if-nez v12, :cond_3

    .line 27
    iget-object p1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->sp(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->ve(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v0

    iget-object v2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v2

    invoke-static {v1, p1, v0, v2, v3}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    .line 30
    :cond_3
    iget-object v6, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    iget-object v7, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    const/4 v8, 0x0

    const/4 v13, 0x1

    invoke-static/range {v6 .. v13}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V

    .line 31
    iget-object p1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-static {p1, v0}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    :cond_4
    return-void
.end method

.method private c(Lcom/byazt/yl/ve;)V
    .locals 3

    .line 32
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zu/uj;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/zu/uj;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zu/uj;ZLandroid/os/Handler$Callback;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/zu/uj;->c(ZLandroid/os/Handler$Callback;)V

    return-void
.end method

.method private c(ZLandroid/os/Handler$Callback;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 35
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 36
    invoke-direct {p0}, Lcom/byazt/zu/uj;->a()V

    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p2, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/yl/ve$c;->c()V

    .line 40
    :cond_1
    iget-object p2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-direct {p0, p2}, Lcom/byazt/zu/uj;->c(Lcom/byazt/yl/ve;)V

    .line 41
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "has_view_binder"

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isShowRepeatOnce()Z

    move-result v2

    invoke-static {p1, v0, v2, v1, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZILjava/util/Map;)V

    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-static {v2, p1, v1}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/zu/uj;)Lcom/byazt/ft/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    return-object p0
.end method

.method private n()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v8, v2

    move-wide v9, v3

    .line 7
    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/bg/c;->n(Ljava/lang/String;)V

    .line 8
    iget-object v5, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    iget-object v6, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    move-result v11

    invoke-static/range {v5 .. v11}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    return-object p0
.end method

.method private tt()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/byazt/zu/uj$4;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$4;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTAdatperCallback(Lcom/byazt/zq/a;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/zu/uj;)Lcom/byazt/ocd/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/uj;->sp:Lcom/byazt/ocd/ve;

    return-object p0
.end method

.method private uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/uj$7;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$7;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTNativeAdListener(Lcom/byazt/me/tt;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/uj$8;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$8;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTNativeAdListener(Lcom/byazt/me/tt;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/zu/uj;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/uj$5;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$5;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMDrawAdListener(Lcom/byazt/fy/c;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/uj$6;

    invoke-direct {v1, p0}, Lcom/byazt/zu/uj$6;-><init>(Lcom/byazt/zu/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMDrawAdListener(Lcom/byazt/fy/c;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDislikeInfo()Lcom/byazt/nc/uj;

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

.method public getExpressAdView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/byazt/yl/ve$c;->c()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isShowRepeatOnce()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v0, v1, v3, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZI)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/byazt/zu/uj;->uj:Landroid/view/View;

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 67
    .line 68
    invoke-static {v0, v3, v2}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object v1
.end method

.method public getImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImageMode()I

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

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getInteractionType()I

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

.method public getLifecycleId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    :goto_0
    invoke-static {v0}, Lcom/byazt/hz/tt;->ve(Ljava/lang/String;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isHasShowCallback()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/vx/z;->c()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static {v1, v2, v3}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/byazt/vx/z;->c(Lcom/byazt/pp/ve;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    const-string v2, "get_show_ecpm_info"

    .line 60
    .line 61
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getExtraMsg()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/byazt/lkb/tt;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/n;
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/cv/da;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/zu/ve;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/zu/uj;->c:Lcom/byazt/hz/i;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/zu/uj;->ve:Lcom/byazt/ll/tt;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/zu/ve;-><init>(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/byazt/cv/da;-><init>(Lcom/byazt/cv/yp;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerClickableRects(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/byazt/zu/uj;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->render()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/yl/ve;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x3

    .line 32
    if-ne v0, v2, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    const/high16 v2, -0x40800000    # -1.0f

    .line 39
    .line 40
    const/high16 v3, -0x40000000    # -2.0f

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/ft/tt;->c(Landroid/view/View;FF)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/byazt/zu/uj;->x:Lcom/byazt/am/tt;

    .line 47
    .line 48
    const-string v2, "TTMediationSDK"

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :try_start_0
    new-instance v3, Lcom/byazt/zu/uj$3;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 55
    .line 56
    invoke-direct {v3, p0, v4}, Lcom/byazt/zu/uj$3;-><init>(Lcom/byazt/zu/uj;Lcom/byazt/yl/ve;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lcom/byazt/am/tt;->c(Lcom/byazt/dw/c;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/byazt/zu/uj;->uj:Landroid/view/View;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    const-string v0, "--==-- \u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\u8f6c\u6a21\u677f\uff0cgetMediationBannerViewFromNativeAd()\u8fd4\u56denull\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    .line 68
    .line 69
    invoke-static {v2, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    const-string v3, "\u6e32\u67d3\u5931\u8d25"

    .line 77
    .line 78
    const v4, -0x1869f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v3, v4}, Lcom/byazt/ft/tt;->c(Landroid/view/View;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-virtual {v1, v0, v3, v3}, Lcom/byazt/ft/tt;->c(Landroid/view/View;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    const-string v1, "--==-- \u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\u8f6c\u6a21\u677f\uff0cgetMediationBannerViewFromNativeAd()\u53d1\u751f\u5f02\u5e38\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a\uff0c\u4fe1\u606f\u5982\u4e0b\uff1a"

    .line 96
    .line 97
    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    const-string v0, "--==-- \u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\u8f6c\u6a21\u677f\uff0c\u5f00\u53d1\u8005\u672a\u63d0\u4f9bMediationNativeToBannerListener\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    .line 105
    .line 106
    invoke-static {v2, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj;->i:Lcom/byazt/ocd/tt;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setCanInterruptVideoPlay(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj;->sp:Lcom/byazt/ocd/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj;->a:Lcom/byazt/ft/tt;

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setSlideIntervalTime(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setSlideIntervalTime(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/ft/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj;->n:Lcom/byazt/ft/ve;

    .line 2
    .line 3
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public unRegisterRects()V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method
