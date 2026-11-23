.class public Lcom/byazt/nm/sl$c$1;
.super Lcom/byazt/nh/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x385
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/sl$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/sl$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/sl$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/nh/sp;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward_onRewardVideoCached"

    .line 22
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle_reward_onError code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    iget-object v0, v0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    new-instance v1, Lcom/byazt/pp/c;

    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/z;)V
    .locals 7

    const-string v0, "pangle_reward_onRewardVideoAdLoad"

    const-string v1, "TTMediationSDK"

    .line 3
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    iget-object p1, p1, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    new-instance v0, Lcom/byazt/pp/c;

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0, p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;Lcom/byazt/nc/z;)Lcom/byazt/nc/z;

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 7
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;)Lcom/byazt/nc/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/z;->getInteractionType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 8
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;)Lcom/byazt/nc/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nc/z;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PangleRewardLoader WaterfallPangleRewardLoader extraInfo :"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    iget-object v0, v0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-static {v0}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "price"

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    move-result-wide v2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    iget-object v4, v4, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-static {v4}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    iget-object v5, v5, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-static {v5}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pangle reward \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TTMediationSDK_ECMP"

    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/byazt/yl/ve;->setCpm(D)V

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    const-string v0, "materialMetaIsFromPreload"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;Z)Z

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pangle \u6fc0\u52b1 \u8fd4\u56de\u7684adnPreload\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {v0}, Lcom/byazt/nm/sl$c;->tt(Lcom/byazt/nm/sl$c;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;)Lcom/byazt/nc/z;

    move-result-object p1

    new-instance v0, Lcom/byazt/nm/sl$c$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/sl$c$1$1;-><init>(Lcom/byazt/nm/sl$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v0}, Lcom/byazt/nc/z;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 20
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    invoke-static {p1}, Lcom/byazt/nm/sl$c;->c(Lcom/byazt/nm/sl$c;)Lcom/byazt/nc/z;

    move-result-object p1

    new-instance v0, Lcom/byazt/nm/sl$c$1$2;

    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/sl$c$1$2;-><init>(Lcom/byazt/nm/sl$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v0}, Lcom/byazt/nc/z;->setRewardAdInteractionListener(Lcom/byazt/tn/c;)V

    .line 21
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    iget-object v0, p1, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public tt(Lcom/byazt/nc/z;)V
    .locals 2

    .line 1
    const-string p1, "TTMediationSDK"

    .line 2
    .line 3
    const-string v0, "pangle_reward_onRewardVideoCached 2"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/nm/sl$c$1;->c:Lcom/byazt/nm/sl$c;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/byazt/sp/tt;->notifyVideoCache(Lcom/byazt/yl/ve;Lcom/byazt/pp/c;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
