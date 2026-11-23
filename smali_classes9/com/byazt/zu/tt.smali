.class public Lcom/byazt/zu/tt;
.super Lcom/byazt/nc/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0xd
    }
.end annotation


# static fields
.field public static final REGISTER_VIEW_TIP:Ljava/lang/String; = "\u5f53\u524d\u5e7f\u544a\u4e3a\u6a21\u7248\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u81ea\u6e32\u67d3\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528render\u8fdb\u884c\u6e32\u67d3"

.field public static final RENDER_TIP:Ljava/lang/String; = "\u5f53\u524d\u5e7f\u544a\u4e3a\u81ea\u6e32\u67d3\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u6a21\u7248\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528registerViewForInteraction\u8fdb\u884c\u6e32\u67d3"


# instance fields
.field public a:Landroid/view/View;

.field public c:Lcom/byazt/hz/i;

.field public da:Lcom/byazt/ocd/tt;

.field public i:Lcom/byazt/ocd/ve;

.field public n:Lcom/byazt/bf/tt;

.field public sp:Lcom/byazt/lsp/c;

.field public tt:Lcom/byazt/yl/ve;

.field public uj:Lcom/byazt/bf/c;

.field public ve:Lcom/byazt/ll/tt;

.field public x:Lcom/byazt/lsp/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/da;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/zu/tt;->c:Lcom/byazt/hz/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x3

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object p3, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/byazt/zu/tt;->c()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/byazt/zu/tt;)Lcom/byazt/lsp/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->x:Lcom/byazt/lsp/ve;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/tt$8;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$8;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMDrawAdListener(Lcom/byazt/fy/c;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/tt$9;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$9;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMDrawAdListener(Lcom/byazt/fy/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->uj:Lcom/byazt/bf/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/zu/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$1;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTVideoListener(Lcom/byazt/me/x;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/tt$3;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$3;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTAdAppDownloadListener(Lcom/byazt/zh/tt;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/tt$4;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$4;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setGMVideoRewardListener(Lcom/byazt/me/i;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/byazt/zu/tt;->x:Lcom/byazt/lsp/ve;

    instance-of v1, v0, Lcom/byazt/am/n;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Lcom/byazt/am/n;

    invoke-virtual {v0}, Lcom/byazt/am/n;->c()V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/zu/tt;->sp:Lcom/byazt/lsp/c;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0, p1, p0}, Lcom/byazt/lsp/c;->c(Landroid/view/View;Lcom/byazt/nc/u;)V

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/byazt/zu/tt;->x()V

    return-void
.end method

.method private c(Lcom/byazt/lsp/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/zu/tt;->sp:Lcom/byazt/lsp/c;

    return-void
.end method

.method private c(Lcom/byazt/yl/ve;)V
    .locals 3

    .line 19
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zu/tt;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/zu/tt;->c(Landroid/view/View;)V

    return-void
.end method

.method private c(ZLandroid/os/Handler$Callback;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/byazt/zu/tt;->uj()V

    if-eqz p2, :cond_0

    .line 11
    invoke-interface {p2, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/yl/ve$c;->c()V

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-direct {p0, p2}, Lcom/byazt/zu/tt;->c(Lcom/byazt/yl/ve;)V

    .line 15
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "has_view_binder"

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isShowRepeatOnce()Z

    move-result v2

    invoke-static {p1, v0, v2, v1, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZILjava/util/Map;)V

    return-void

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-static {v2, p1, v1}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/zu/tt;)Lcom/byazt/bf/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->n:Lcom/byazt/bf/tt;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/byazt/zu/tt$7;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$7;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTAdatperCallback(Lcom/byazt/zq/a;)V

    return-void
.end method

.method public static synthetic sp(Lcom/byazt/zu/tt;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->a:Landroid/view/View;

    return-object p0
.end method

.method private sp()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/tt$10;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$10;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTNativeAdListener(Lcom/byazt/me/tt;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    new-instance v1, Lcom/byazt/zu/tt$2;

    invoke-direct {v1, p0}, Lcom/byazt/zu/tt$2;-><init>(Lcom/byazt/zu/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setTTNativeAdListener(Lcom/byazt/me/tt;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zu/tt;)Lcom/byazt/yl/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    return-object p0
.end method

.method private tt()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "\u5f53\u524d\u5e7f\u544a\u4e3a\u6a21\u7248\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u81ea\u6e32\u67d3\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528render\u8fdb\u884c\u6e32\u67d3"

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tt(Landroid/view/View;)V
    .locals 13

    .line 5
    iget-object p1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setHasShowCallback(Z)V

    .line 7
    iget-object p1, p0, Lcom/byazt/zu/tt;->x:Lcom/byazt/lsp/ve;

    instance-of v1, p1, Lcom/byazt/am/n;

    if-eqz v1, :cond_0

    .line 8
    check-cast p1, Lcom/byazt/am/n;

    invoke-virtual {p1}, Lcom/byazt/am/n;->tt()V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/zu/tt;->sp:Lcom/byazt/lsp/c;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, p0}, Lcom/byazt/lsp/c;->c(Lcom/byazt/nc/u;)V

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_listen"

    invoke-static {v1, v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 12
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 13
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TTMediationSDK"

    .line 14
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/hr/u;->tt(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/byazt/hr/t;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCallBack()Lcom/byazt/yl/ve$c;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-interface {p1, v1}, Lcom/byazt/yl/ve$c;->c(Lcom/byazt/yl/ve;)V

    .line 22
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 23
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-static {p1}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v8, p1

    move-wide v9, v3

    .line 26
    iget-object p1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isShowListenRepeatOnce()Z

    move-result v11

    if-nez v11, :cond_4

    .line 27
    iget-object p1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->sp(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->ve(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v1

    iget-object v2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v2

    invoke-static {v0, p1, v1, v2, v3}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    .line 30
    :cond_4
    iget-object v5, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    iget-object v6, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    const/4 v7, 0x0

    const/4 v12, 0x1

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V

    .line 31
    iget-object p1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    :goto_1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-static {p1, v0}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    :cond_6
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zu/tt;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/zu/tt;->tt(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/zu/tt;)Lcom/byazt/ocd/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->i:Lcom/byazt/ocd/ve;

    return-object p0
.end method

.method private uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/byazt/zu/tt;->a()V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/byazt/zu/tt;->n()V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/byazt/zu/tt;->sp()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/zu/tt;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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

.method private x()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    sub-long/2addr v3, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    const-wide/16 v3, -0x1

    .line 34
    .line 35
    :goto_0
    move-object v8, v2

    .line 36
    move-wide v9, v3

    .line 37
    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/byazt/bg/c;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 47
    .line 48
    iget-object v6, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {v5}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-static/range {v5 .. v11}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/byazt/zu/tt;->a:Landroid/view/View;

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->a:Landroid/view/View;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->a:Landroid/view/View;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getComplianceInfo()Lcom/byazt/nc/ve;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cv/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/cv/tt;-><init>(Lcom/byazt/yl/ve;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getCustomVideo()Lcom/byazt/yh/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cv/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/cv/ve;-><init>(Lcom/byazt/yl/ve;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cv/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/cv/uj;-><init>(Lcom/byazt/yl/ve;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getIcon()Lcom/byazt/nc/t;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cv/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-direct {v0, v1}, Lcom/byazt/cv/u;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
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
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v3, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v3, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v5, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

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
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v1, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v1, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v2, p0, Lcom/byazt/zu/tt;->c:Lcom/byazt/hz/i;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/zu/tt;->ve:Lcom/byazt/ll/tt;

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

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    invoke-direct {p0}, Lcom/byazt/zu/tt;->tt()V

    .line 12
    iget-object v0, v8, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    move-object/from16 v0, p6

    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/lsp/c;)V

    .line 14
    new-instance v9, Lcom/byazt/zu/tt$6;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/byazt/zu/tt$6;-><init>(Lcom/byazt/zu/tt;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v9}, Lcom/byazt/zu/tt;->c(ZLandroid/os/Handler$Callback;)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/zu/tt;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/zu/tt;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/zu/tt;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/zu/tt;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

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
    invoke-direct {p0}, Lcom/byazt/zu/tt;->tt()V

    .line 8
    iget-object v0, v8, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    move-object/from16 v0, p7

    .line 9
    invoke-direct {p0, v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/lsp/c;)V

    .line 10
    new-instance v9, Lcom/byazt/zu/tt$5;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/zu/tt$5;-><init>(Lcom/byazt/zu/tt;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v9}, Lcom/byazt/zu/tt;->c(ZLandroid/os/Handler$Callback;)V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/zu/tt;->ve()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/zu/tt;->uj()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->render()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/yl/ve;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x3

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/zu/tt;->x:Lcom/byazt/lsp/ve;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/zu/tt;->a:Landroid/view/View;

    .line 35
    .line 36
    const/high16 v2, -0x40000000    # -2.0f

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/high16 v4, -0x40800000    # -1.0f

    .line 40
    .line 41
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/byazt/lsp/ve;->c(Landroid/view/View;FFZ)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iput-object p1, p0, Lcom/byazt/zu/tt;->da:Lcom/byazt/ocd/tt;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
    iput-object p1, p0, Lcom/byazt/zu/tt;->i:Lcom/byazt/ocd/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V
    .locals 0

    return-void
.end method

.method public setExpressRenderListener(Lcom/byazt/lsp/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/tt;->x:Lcom/byazt/lsp/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/bf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/tt;->uj:Lcom/byazt/bf/c;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRewardListener(Lcom/byazt/bf/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/tt;->n:Lcom/byazt/bf/tt;

    .line 2
    .line 3
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt;->tt:Lcom/byazt/yl/ve;

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
