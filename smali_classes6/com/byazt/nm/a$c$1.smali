.class public Lcom/byazt/nm/a$c$1;
.super Lcom/byazt/nh/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x428
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/a$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/nh/uj;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "TMe"

    const-string v1, "pangle full cached"

    .line 22
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;Z)Z

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {v0}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;)Lcom/byazt/sp/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/pp/c;

    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/sl;)V
    .locals 8

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {v0, p1}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;Lcom/byazt/nc/sl;)Lcom/byazt/nc/sl;

    .line 5
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1}, Lcom/byazt/nm/a$c;->tt(Lcom/byazt/nm/a$c;)Lcom/byazt/nc/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/nc/sl;->getInteractionType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1}, Lcom/byazt/nm/a$c;->tt(Lcom/byazt/nm/a$c;)Lcom/byazt/nc/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nc/sl;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PangleFullVideoLoader WaterfallPangleFullVideoLoader extraInfo :"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {v1}, Lcom/byazt/nm/a$c;->ve(Lcom/byazt/nm/a$c;)Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v1, "price"

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    move-result-wide v3

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {v5}, Lcom/byazt/nm/a$c;->ve(Lcom/byazt/nm/a$c;)Lcom/byazt/dv/tt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {v6}, Lcom/byazt/nm/a$c;->ve(Lcom/byazt/nm/a$c;)Lcom/byazt/dv/tt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pangle \u5168\u5c4f \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TTMediationSDK_ECMP"

    invoke-static {v5, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v5

    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/byazt/yl/ve;->setCpm(D)V

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-virtual {v1, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    const-string v1, "materialMetaIsFromPreload"

    .line 14
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/byazt/nm/a$c;->tt(Lcom/byazt/nm/a$c;Z)Z

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "pangle \u5168\u5c4f \u8fd4\u56de\u7684adnPreload\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {v1}, Lcom/byazt/nm/a$c;->uj(Lcom/byazt/nm/a$c;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1}, Lcom/byazt/nm/a$c;->tt(Lcom/byazt/nm/a$c;)Lcom/byazt/nc/sl;

    move-result-object p1

    new-instance v1, Lcom/byazt/nm/a$c$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/nm/a$c$1$1;-><init>(Lcom/byazt/nm/a$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v1}, Lcom/byazt/nc/sl;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1}, Lcom/byazt/nm/a$c;->tt(Lcom/byazt/nm/a$c;)Lcom/byazt/nc/sl;

    move-result-object p1

    new-instance v1, Lcom/byazt/nm/a$c$1$2;

    invoke-direct {v1, p0, v2}, Lcom/byazt/nm/a$c$1$2;-><init>(Lcom/byazt/nm/a$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v1}, Lcom/byazt/nc/sl;->setFullScreenVideoAdInteractionListener(Lcom/byazt/gl/c;)V

    .line 20
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1, v0}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;Z)Z

    .line 21
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-static {p1}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public tt(Lcom/byazt/nc/sl;)V
    .locals 2

    .line 1
    const-string p1, "TMe"

    .line 2
    .line 3
    const-string v0, "pangle full cached 2"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/nm/a$c;->c(Lcom/byazt/nm/a$c;)Lcom/byazt/sp/tt;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/byazt/nm/a$c$1;->c:Lcom/byazt/nm/a$c;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/byazt/sp/tt;->notifyVideoCache(Lcom/byazt/yl/ve;Lcom/byazt/pp/c;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
