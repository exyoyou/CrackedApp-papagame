.class public Lcom/byazt/da/c;
.super Lcom/byazt/nc/i;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x48,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/lsp/c;

.field public c:Lcom/byazt/hz/sp;

.field public n:Lcom/byazt/lsp/ve;

.field public sp:Lcom/byazt/bf/c;

.field public tt:Lcom/byazt/yl/ve;

.field public uj:Landroid/view/View;

.field public ve:Lcom/byazt/ll/tt;

.field public x:Lcom/byazt/ocd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sp;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/da/c;->c:Lcom/byazt/hz/sp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/byazt/da/c;->c()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/byazt/da/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/da/c;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/da/c;)Lcom/byazt/bf/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/c;->sp:Lcom/byazt/bf/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/da/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/da/c$1;-><init>(Lcom/byazt/da/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTVideoListener(Lcom/byazt/me/x;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 11

    .line 19
    iget-object v0, p0, Lcom/byazt/da/c;->n:Lcom/byazt/lsp/ve;

    instance-of v1, v0, Lcom/byazt/am/n;

    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Lcom/byazt/am/n;

    invoke-virtual {v0}, Lcom/byazt/am/n;->c()V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/da/c;->a:Lcom/byazt/lsp/c;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/byazt/lsp/c;->c(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    if-nez p1, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    iget-object p1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-static {p1}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const-wide/16 v2, -0x1

    :goto_0
    move-object v7, p1

    move-wide v8, v2

    .line 28
    iget-object p1, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->n(Ljava/lang/String;)V

    .line 29
    iget-object v4, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    iget-object v5, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/da/c;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/da/c;->c(Landroid/view/View;)V

    return-void
.end method

.method private c(Lcom/byazt/lsp/c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/da/c;->a:Lcom/byazt/lsp/c;

    return-void
.end method

.method private c(Lcom/byazt/yl/ve;)V
    .locals 3

    .line 17
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    return-void
.end method

.method private c(ZLandroid/os/Handler$Callback;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/byazt/da/c;->uj()V

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/yl/ve$c;->c()V

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-direct {p0, p2}, Lcom/byazt/da/c;->c(Lcom/byazt/yl/ve;)V

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "has_view_binder"

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isShowRepeatOnce()Z

    move-result v2

    invoke-static {p1, v0, v2, v1, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZILjava/util/Map;)V

    return-void

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-static {v2, p1, v1}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/da/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/c;->uj:Landroid/view/View;

    return-object p0
.end method

.method private n()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setHasShowCallback(Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/da/c;->n:Lcom/byazt/lsp/ve;

    instance-of v2, v0, Lcom/byazt/am/n;

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Lcom/byazt/am/n;

    invoke-virtual {v0}, Lcom/byazt/am/n;->tt()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/da/c;->a:Lcom/byazt/lsp/c;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p0}, Lcom/byazt/lsp/c;->c(Lcom/byazt/nc/u;)V

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "show_listen"

    invoke-static {v2, v3}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "adSlotId\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 9
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 10
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    .line 11
    invoke-static {v2, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/hr/u;->tt(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/byazt/hr/t;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-interface {v0, v2}, Lcom/byazt/yl/ve$c;->c(Lcom/byazt/yl/ve;)V

    .line 19
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 20
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-static {v0}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    :goto_0
    move-object v9, v0

    move-wide v10, v4

    .line 23
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isShowListenRepeatOnce()Z

    move-result v12

    if-nez v12, :cond_4

    .line 24
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/bg/c;->sp(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/bg/c;->ve(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v2

    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    .line 27
    :cond_4
    iget-object v6, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    iget-object v7, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    const/4 v8, 0x0

    const/4 v13, 0x1

    invoke-static/range {v6 .. v13}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V

    .line 28
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    invoke-static {v0, v1}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    :cond_6
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/da/c;)Lcom/byazt/yl/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    return-object p0
.end method

.method private tt()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "\u5f53\u524d\u5e7f\u544a\u4e3a\u6a21\u7248\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u81ea\u6e32\u67d3\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528render\u8fdb\u884c\u6e32\u67d3"

    .line 3
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/da/c;)Lcom/byazt/lsp/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/c;->n:Lcom/byazt/lsp/ve;

    return-object p0
.end method

.method private uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/da/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/da/c$4;-><init>(Lcom/byazt/da/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMDrawAdListener(Lcom/byazt/fy/c;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/da/c$5;

    invoke-direct {v1, p0}, Lcom/byazt/da/c$5;-><init>(Lcom/byazt/da/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMDrawAdListener(Lcom/byazt/fy/c;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/da/c;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "\u5f53\u524d\u5e7f\u544a\u4e3a\u81ea\u6e32\u67d3\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u6a21\u7248\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528registerViewForInteraction\u8fdb\u884c\u6e32\u67d3"

    .line 3
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdLogo()Landroid/graphics/Bitmap;

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

.method public getAdView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/byazt/yl/ve$c;->c()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isShowRepeatOnce()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZI)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/byazt/da/c;->uj:Landroid/view/View;

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getVideoView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    return-object v0
.end method

.method public getAdViewHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/da/c;->uj:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getVideoHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_2
    return v1
.end method

.method public getAdViewWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/da/c;->uj:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getVideoWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_2
    return v1
.end method

.method public getAppCommentNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAppCommentNum()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getAppScore()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getStarRating()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    double-to-int v0, v0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getAppSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAppSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getActionText()Ljava/lang/String;

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

.method public getComplianceInfo()Lcom/byazt/nc/ve;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/yla/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/yla/c;-><init>(Lcom/byazt/yl/ve;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getCustomVideo()Lcom/byazt/yh/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/yla/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/yla/tt;-><init>(Lcom/byazt/yl/ve;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdDescription()Ljava/lang/String;

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

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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

.method public getDownloadStatusController()Lcom/byazt/nc/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDownloadStatusController()Lcom/byazt/nc/n;

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

.method public getIcon()Lcom/byazt/nc/t;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cv/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getIconUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, ""

    .line 13
    .line 14
    :goto_0
    invoke-direct {v0, v1}, Lcom/byazt/cv/u;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nc/t;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getImages()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v2

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getImageUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    if-eqz v1, :cond_5

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Lcom/byazt/cv/u;

    .line 50
    .line 51
    invoke-direct {v3, v2}, Lcom/byazt/cv/u;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    new-instance v1, Lcom/byazt/cv/u;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getImageWidth()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 77
    :goto_2
    iget-object v5, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 78
    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/byazt/yl/ve;->getImageHeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    :cond_4
    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/cv/u;-><init>(Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_5
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, ""

    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Lcom/byazt/hz/tt;->ve(Ljava/lang/String;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isHasShowCallback()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/vx/z;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-static {v1, v2, v3}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/byazt/vx/z;->c(Lcom/byazt/pp/ve;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    const-string v2, "get_show_ecpm_info"

    .line 62
    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v1, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getExtraMsg()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/byazt/lkb/tt;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/n;
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/cv/da;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/da/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/da/c;->c:Lcom/byazt/hz/sp;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/da/c;->ve:Lcom/byazt/ll/tt;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/da/tt;-><init>(Lcom/byazt/hz/sp;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/byazt/cv/da;-><init>(Lcom/byazt/cv/yp;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSource()Ljava/lang/String;

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

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdTitle()Ljava/lang/String;

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

.method public getVideoCoverImage()Lcom/byazt/nc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getVideoCoverImage()Lcom/byazt/nc/t;

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

.method public getVideoDuration()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getVideoDuration()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;Lcom/byazt/am/uj;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 11
    invoke-direct {p0}, Lcom/byazt/da/c;->tt()V

    .line 12
    iget-object v0, v8, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    move-object/from16 v0, p6

    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/da/c;->c(Lcom/byazt/lsp/c;)V

    .line 14
    new-instance v9, Lcom/byazt/da/c$3;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/byazt/da/c$3;-><init>(Lcom/byazt/da/c;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v9}, Lcom/byazt/da/c;->c(ZLandroid/os/Handler$Callback;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 8

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/da/c;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/da/c;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/da/c;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/da/c;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 7
    invoke-direct {p0}, Lcom/byazt/da/c;->tt()V

    .line 8
    iget-object v0, v8, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    move-object/from16 v0, p7

    .line 9
    invoke-direct {p0, v0}, Lcom/byazt/da/c;->c(Lcom/byazt/lsp/c;)V

    .line 10
    new-instance v9, Lcom/byazt/da/c$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/da/c$2;-><init>(Lcom/byazt/da/c;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v9}, Lcom/byazt/da/c;->c(ZLandroid/os/Handler$Callback;)V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/da/c;->ve()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/da/c;->uj()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->render()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/byazt/da/c;->c(Lcom/byazt/yl/ve;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/da/c;->x:Lcom/byazt/ocd/tt;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDrawVideoListener(Lcom/byazt/uz/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setDrawVideoListener(Lcom/byazt/uz/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V
    .locals 0

    return-void
.end method

.method public setExpressRenderListener(Lcom/byazt/lsp/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/da/c;->n:Lcom/byazt/lsp/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setPauseIcon(Landroid/graphics/Bitmap;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/bf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/da/c;->sp:Lcom/byazt/bf/c;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRewardListener(Lcom/byazt/bf/tt;)V
    .locals 0

    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/c;->tt:Lcom/byazt/yl/ve;

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
